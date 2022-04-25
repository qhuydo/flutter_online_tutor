import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/common/models/country.dart';
import '../../../domain/tutor/events/tutor_repository_event.dart';
import '../../../domain/tutor/interfaces/i_tutor_repository.dart';
import '../../../domain/tutor/models/tutor.dart';
import '../../../domain/tutor/models/tutor_search_options.dart';
import '../../../domain/user/models/speciality.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../../user/dto/speciality_dto.dart';
import '../data_source/i_tutor_data_source.dart';
import '../dto/tutor_details/tutor_details_dto.dart';
import '../dto/tutor_list/tutor_list_item_dto.dart';

@LazySingleton(as: TutorRepository, env: ['mock'])
class MockTutorRepository implements TutorRepository {
  final _eventStreamController = BehaviorSubject<TutorRepositoryEvent>();
  final TutorDataSource _dataSource;
  List<Speciality>? _specialities;

  MockTutorRepository(this._dataSource);

  @override
  Future dispose() async {
    await _eventStreamController.close();
  }

  @override
  Future<List<Speciality>> getSpecialities() async {
    if (_specialities == null) {
      final res = await FixtureLoader.specialities;
      _specialities = res
          .map((e) => SpecialityDto.fromJson(e).toDomain())
          .toList(growable: false);
    }
    return _specialities!;
  }

  @override
  Future<Either<Failure, List<Tutor>>> getRecommendedTutors({
    required int page,
    required int limit,
  }) async {
    if (page < 1 || limit <= 0) {
      return left(const Failure.internalError());
    }

    try {
      final res = await FixtureLoader.tutorList;
      final tutorsDto = (res['tutors']['rows'] as List)
          .map((e) => TutorListItemDto.fromJson(e))
          .toList(growable: false);

      final favouriteTutorsDto = (res['favoriteTutor'] as List)
          .map((e) => e['secondId'] as String)
          .toList(growable: false);

      final result = await _dataSource.saveTutorsFromTutorListItemDto(
        await getSpecialities(),
        tutorsDto,
        favouriteTutorsDto,
      );

      if (result == null) {
        return left(const Failure.internalError());
      }
      return right(result);
    } on NullThrownError {
      return left(const Failure.apiError());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<Tutor>>> searchTutor({
    required List<Speciality> specialities,
    required String keyword,
    Country? country,
    TutorSortBy sortBy = TutorSortBy.defaultSort,
    required int page,
    required int limit,
  }) async {
    final tutors = _dataSource
        .getAllTutors()
        .where((element) => element.match(
              specialities: specialities,
              keyword: keyword,
              country: country,
            ))
        .toList(growable: false);

    switch (sortBy) {
      case TutorSortBy.favourite:
        tutors.sort((a, b) {
          if (a.isFavourite && !b.isFavourite) return 1;
          if (!a.isFavourite && b.isFavourite) return -1;
          return a.name.compareTo(b.name);
        });
        break;
      case TutorSortBy.rating:
        tutors.sort((a, b) => a.averageRating.compareTo(b.averageRating));
        break;
      default:
        break;
    }

    return right(tutors);
  }

  @override
  Stream<TutorRepositoryEvent> subscribe() =>
      _eventStreamController.asBroadcastStream();

  @override
  Future<Either<Failure, Unit>> toggleFavourite(String tutorId) async {
    final tutor = await _dataSource.getTutor(tutorId);
    if (tutor == null) return left(const Failure.notFound());

    final newValue = tutor.copyWith(
      isFavourite: !tutor.isFavourite,
    );
    await _dataSource.saveTutor(newValue);
    _eventStreamController.add(TutorRepositoryEvent.tutorDataChanged(newValue));

    return right(unit);
  }

  @override
  Future<Either<Failure, Tutor>> getTutorById(String tutorId) async {
    final tutor = await _dataSource.getTutor(tutorId);
    // TODO review the logic after adding course model
    if (tutor == null) {
      try {
        final res = await FixtureLoader.tutorDetails(tutorId);
        final tutorDetailsDto = TutorDetailsDto.fromJson(res);

        final result = await _dataSource.saveTutorFromTutorDetailsDto(
          await getSpecialities(),
          tutorDetailsDto,
        );
        if (result == null) {
          return left(
            const Failure.wtf('Cannot save tutor details'),
          );
        }

        return right(result);
      } on FlutterError {
        return left(const Failure.notFound());
      }
    }
    return right(tutor);
  }

  @override
  Future<Either<Failure, List<Tutor>>> getFavouriteTutors() async {
    final result = await getRecommendedTutors(page: 1, limit: 100);

    if (result.isLeft()) {
      return result.fold(
        (l) => left(l),
        (r) => left(const Failure.internalError()),
      );
    }
    final tutorList = result.fold((l) => <Tutor>[], (r) => r);
    return right(tutorList.where((element) => element.isFavourite).toList());
  }
}

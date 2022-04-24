import 'dart:developer';

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
import '../../common/network/api_client.dart';
import '../../common/network/request_url.dart';
import '../../common/utils/pair.dart';
import '../../user/data_source/i_tutor_data_source.dart';
import '../../user/dto/speciality_dto.dart';
import '../dto/tutor_details/tutor_details_dto.dart';
import '../dto/tutor_list/tutor_list_item_dto.dart';

@LazySingleton(
  as: TutorRepository,
  env: [Environment.dev, Environment.test, Environment.prod],
)
class TutorRepositoryImpl implements TutorRepository {
  final _eventStreamController = BehaviorSubject<TutorRepositoryEvent>();
  final TutorDataSource _dataSource;
  List<Speciality>? _specialities;
  final ApiClient _apiClient;

  TutorRepositoryImpl(this._dataSource, this._apiClient);

  @override
  Future dispose() async {
    await _eventStreamController.close();
    await _dataSource.clear();
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

  Future<Either<Failure, Pair>> fetchRecommendedTutors({
    required int page,
    required int limit,
  }) async {
    try {
      final response = await _apiClient.get(
        RequestUrl.tutor.tutors(perPage: limit, page: page),
        onResponded: (response) {
          return response.data as Map<String, dynamic>;
        },
      );

      if (response.isLeft()) {
        return response.fold(
          (l) => left(l),
          (r) => left(const Failure.wtf('')),
        );
      }
      final res = response.fold((l) => <String, dynamic>{}, (r) => r);

      final tutorsDto = (res['tutors']['rows'] as List)
          .map((e) => TutorListItemDto.fromJson(e))
          .toList(growable: false);

      final favouriteTutorsDto = (res['favoriteTutor'] as List)
          .map((e) => e['secondId'] as String)
          .toList(growable: false);

      return right(Pair(tutorsDto, favouriteTutorsDto));
    } on NullThrownError {
      return left(const Failure.serverError());
    } on TypeError catch (e) {
      log(e.toString());
      return left(const Failure.serverError());
    } on FlutterError {
      return left(const Failure.internalError());
    }
  }

  @override
  Future<Either<Failure, List<Tutor>>> getRecommendedTutors({
    required int page,
    required int limit,
  }) async {
    if (page < 1 || limit <= 0) {
      return left(const Failure.internalError());
    }

    final fetchResult = await fetchRecommendedTutors(page: page, limit: limit);
    if (fetchResult.isLeft()) {
      return fetchResult.fold(
        (l) => left(l),
        (r) => left(const Failure.internalError()),
      );
    }
    final resultPair = fetchResult.fold((l) => Pair([], []), (r) => r);

    final result = await _dataSource.saveTutorsFromTutorListItemDto(
      await getSpecialities(),
      resultPair.left,
      resultPair.right,
    );

    if (result == null) {
      return left(const Failure.internalError());
    }
    return right(result);
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
    final data = {
      'page': page,
      'perpage': limit,
      'filter': {
        'specialities': specialities.map((e) => e.key).toList(growable: false),
      },
      'search': keyword,
    };

    final tutorListResponse = await fetchRecommendedTutors(page: 1, limit: 1);
    if (tutorListResponse.isLeft()) {
      return tutorListResponse.fold(
        (l) => left(l),
        (r) => left(const Failure.internalError()),
      );
    }

    final favouriteTutors =
        tutorListResponse.getOrElse(() => Pair([], [])).right;

    final response = await _apiClient.post(
      RequestUrl.tutor.search,
      data: data,
      onResponded: (res) async {
        try {
          final list = ((res.data as Map<String, dynamic>)['rows'] as List)
              .map((e) => TutorListItemDto.fromJson(e))
              .toList(growable: false);

          final tutors = await _dataSource.saveTutorsFromTutorListItemDto(
            await getSpecialities(),
            list,
            favouriteTutors,
          );
          return tutors;
        } on TypeError catch (e) {
          log(e.stackTrace?.toString() ?? '');
          return <Tutor>[];
        }
      },
    );

    if (response.isLeft()) {
      return response.fold(
          (l) => left(l), (r) => left(const Failure.serverError()));
    }

    final tutors = await response.getOrElse(() => Future.value([]));
    if (tutors == null) {
      return left(const Failure.internalError());
    }

    final result = tutors
        .where((element) => element.match(
              specialities: specialities,
              keyword: keyword,
              country: country,
            ))
        .toList(growable: false);

    switch (sortBy) {
      case TutorSortBy.favourite:
        result.sort((a, b) {
          if (a.isFavourite && !b.isFavourite) return -1;
          if (!a.isFavourite && b.isFavourite) return 1;
          return a.name.compareTo(b.name);
        });
        break;
      case TutorSortBy.rating:
        result.sort((a, b) => -a.averageRating.compareTo(b.averageRating));
        break;
      default:
        break;
    }

    return right(result);
  }

  @override
  Stream<TutorRepositoryEvent> subscribe() =>
      _eventStreamController.asBroadcastStream();

  @override
  Future<Either<Failure, Unit>> toggleFavourite(String tutorId) async {
    final tutor = await _dataSource.getTutor(tutorId);
    if (tutor == null) return left(const Failure.notFound());

    final data = {'tutorId': tutorId};

    final res = await _apiClient.post(
      RequestUrl.user.addTutorToFavourites,
      data: data,
      onResponded: (response) {
        final data = response.data as Map<String, dynamic>;
        if (data['result'] is num) {
          return false;
        }
        return true;
      },
    );
    if (res.isLeft()) {
      res.fold((l) => left(l), (r) => left(const Failure.internalError()));
    }
    final isFavourite = res.fold((l) => false, (r) => r);

    final newValue = tutor.copyWith(
      isFavourite: isFavourite,
    );
    await _dataSource.saveTutor(newValue);
    _eventStreamController.add(TutorRepositoryEvent.tutorDataChanged(newValue));

    return right(unit);
  }

  @override
  Future<Either<Failure, Tutor>> getTutorById(String tutorId) async {
    try {
      final tutor = await _dataSource.getTutor(tutorId);
      // TODO review the logic after adding course model
      if (tutor == null) {
        try {
          final response = await _apiClient.get(
            RequestUrl.tutor.tutor(tutorId),
            onResponded: (response) {
              final data = response.data as Map<String, dynamic>;
              return TutorDetailsDto.fromJson(data);
            },
          );

          if (response.isLeft()) {
            return response.fold(
              (l) => left(l),
              (r) => left(const Failure.internalError()),
            );
          }
          final tutorDetailsDto = response.getOrElse(() => throw TypeError());

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
    } on NullThrownError {
      return left(const Failure.internalError());
    } on TypeError {
      return left(const Failure.serverError());
    }
  }
}

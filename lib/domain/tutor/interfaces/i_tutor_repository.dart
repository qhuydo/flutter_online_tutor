import 'package:dartz/dartz.dart';

import '../../../infrastructure/common/dto/pagination_list_dto.dart';
import '../../common/failures/failure.dart';
import '../../common/models/country.dart';
import '../../user/models/speciality.dart';
import '../events/tutor_repository_event.dart';
import '../models/tutor.dart';
import '../models/tutor_search_options.dart';

abstract class TutorRepository {
  // Either<Failure, List<Tutor>> getAllTutors();

  Future<Either<Failure, PaginationListDto<Tutor>>> searchTutor({
    required List<Speciality> specialities,
    required String keyword,
    Country? country,
    TutorSortBy sortBy = TutorSortBy.defaultSort,
    required int page,
    required int limit,
  });

  Future<Either<Failure, List<Tutor>>> getRecommendedTutors({
    required int page,
    required int limit,
  });

  Stream<TutorRepositoryEvent> subscribe();

  Future<Either<Failure, Unit>> toggleFavourite(String tutorId);

  Future<List<Speciality>> getSpecialities();

  Future<Either<Failure, Tutor>> getTutorById(String tutorId);

  Future<Either<Failure, List<Tutor>>> getFavouriteTutors();

  Future<Either<Failure, Unit>> report(String tutorId, String content);

  Future dispose();
}

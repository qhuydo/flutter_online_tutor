import 'package:dartz/dartz.dart';

import '../../common/failures/failure.dart';
import '../../common/models/country.dart';
import '../../user/models/speciality.dart';
import '../events/tutor_repository_event.dart';
import '../models/tutor.dart';
import '../models/tutor_search_options.dart';

abstract class TutorRepository {
  Either<Failure, List<Tutor>> getAllTutors();

  Either<Failure, List<Tutor>> searchTutor({
    required List<Speciality> specialities,
    required String keyword,
    Country? country,
    TutorSortBy sortBy = TutorSortBy.defaultSort,
    int page,
    int limit,
  });

  Either<Failure, List<Tutor>> getRecommendedTutors({
    int page,
    int limit,
  });

  Stream<TutorRepositoryEvent> subscribe();

  Future dispose();
}

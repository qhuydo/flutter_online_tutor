import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/course.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../dto/course_dto.dart';

@lazySingleton
class MockCourseRepository implements CourseRepository {
  @override
  Future<Either<Failure, Course>> getCourseById(String courseId) async {
    final list = (await getRecommendedCourses(page: 1, limit: 100)).fold(
      (l) => null,
      (r) => r,
    );

    if (list == null) return left(const Failure.notFound());

    final idx = list.indexWhere((element) => element.id == courseId);
    if (idx < 0) return left(const Failure.notFound());
    return right(list[idx]);
  }

  @override
  Future<Either<Failure, List<Course>>> getRecommendedCourses({
    required int page,
    required int limit,
  }) async {
    if (page < 1 || limit <= 0) {
      return left(const Failure.internalError());
    }

    try {
      final res = await FixtureLoader.courseList;
      final courses = (res['data']['rows'] as List)
          .map((e) => CourseDto.fromJson(e).toDomain())
          .toList(growable: false);

      return right(courses);
    } on NullThrownError {
      return left(const Failure.apiError());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }
}
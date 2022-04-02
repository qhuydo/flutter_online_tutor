import 'package:dartz/dartz.dart';

import '../../common/failures/failure.dart';
import '../models/course.dart';

abstract class CourseRepository {

  Future<Either<Failure, List<Course>>> getRecommendedCourses({
    required int page,
    required int limit,
  });

  Future<Either<Failure, Course>> getCourseById(String courseId);
}
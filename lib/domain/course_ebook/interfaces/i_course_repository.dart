import 'package:dartz/dartz.dart';

import '../../common/failures/failure.dart';
import '../models/course.dart';
import '../models/ebook.dart';

abstract class CourseRepository {
  Future<Either<Failure, List<Course>>> getRecommendedCourses({
    required int page,
    required int limit,
  });

  Future<Either<Failure, Course>> getCourseById(String courseId);

  Future<Either<Failure, List<Ebook>>> getRecommendedEbooks({
    required int page,
    required int limit,
  });

  Future<Either<Failure, Ebook>> getEbookById(String ebookId);
}

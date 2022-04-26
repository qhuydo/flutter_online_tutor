import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../common/failures/failure.dart';
import '../../user/constants/levels.dart';
import '../models/course.dart';
import '../models/course_category.dart';
import '../models/course_topic.dart';
import '../models/ebook.dart';
import '../models/sort_level_option.dart';

abstract class CourseRepository {
  Future<Either<Failure, List<Course>>> getCourses({
    required int page,
    required int limit,
    List<Level>? levels,
    String? keyword,
    SortLevelOption? sortBy,
    List<CourseCategory>? categories,
  });

  Future<Either<Failure, Course>> getCourseById(String courseId);

  Future<Either<Failure, List<Ebook>>> getEbooks({
    required int page,
    required int limit,
    List<Level>? levels,
    String? keyword,
    SortLevelOption? sortBy,
    List<CourseCategory>? categories,
  });

  Future<Either<Failure, Ebook>> getEbookById(String ebookId);

  Future<Either<Failure, Uint8List?>> getSyllabusPreviewPdf(
    CourseTopic courseTopic,
  );

  Future<Either<Failure, List<CourseCategory>>> getCourseCategories();
}

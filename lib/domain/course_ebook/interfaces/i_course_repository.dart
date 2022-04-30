import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../../infrastructure/common/dto/pagination_list_dto.dart';
import '../../common/failures/failure.dart';
import '../../user/constants/levels.dart';
import '../models/course.dart';
import '../models/course_category.dart';
import '../models/course_topic.dart';
import '../models/ebook.dart';
import '../models/sort_level_option.dart';

abstract class CourseRepository {
  Future<Either<Failure, PaginationListDto<Course>>> getCourses({
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

  @Deprecated(
      'The server does not implement this API.\n'
          'Use getEbooks() then get the ebook from the returned list instead.'
  )
  Future<Either<Failure, Ebook>> getEbookById(String ebookId);

  Future<Either<Failure, Uint8List?>> getSyllabusPreviewPdf(
    CourseTopic courseTopic,
  );

  Future<Either<Failure, List<CourseCategory>>> getCourseCategories();
}

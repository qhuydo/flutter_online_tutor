import 'dart:math';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/course.dart';
import '../../../domain/course_ebook/models/course_category.dart';
import '../../../domain/course_ebook/models/course_topic.dart';
import '../../../domain/course_ebook/models/ebook.dart';
import '../../../domain/course_ebook/models/sort_level_option.dart';
import '../../../domain/user/constants/levels.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../../common/dto/pagination_list_dto.dart';
import '../dto/course_category_dto.dart';
import '../dto/course_dto.dart';
import '../dto/ebook_dto.dart';

@LazySingleton(as: CourseRepository, env: ['mock'])
class MockCourseRepository implements CourseRepository {
  static const _assets = [
    'assets/pdf/preview.pdf',
    'assets/pdf/preview2.pdf',
  ];

  @override
  Future<Either<Failure, Course>> getCourseById(String courseId) async {
    final list = (await getCourses(page: 1, limit: 100)).fold(
      (l) => null,
      (r) => r.list,
    );

    if (list == null) return left(const Failure.notFound());

    final idx = list.indexWhere((element) => element.id == courseId);
    if (idx < 0) return left(const Failure.notFound());
    return right(list[idx]);
  }

  @override
  Future<Either<Failure, PaginationListDto<Course>>> getCourses({
    required int page,
    required int limit,
    List<Level>? levels,
    String? keyword,
    SortLevelOption? sortBy,
    List<CourseCategory>? categories,
  }) async {
    if (page < 1 || limit <= 0) {
      return left(const Failure.internalError());
    }

    try {
      final res = await FixtureLoader.courseList;
      final courses = (res['data']['rows'] as List)
          .map((e) => CourseDto.fromJson(e).toDomain())
          .toList(growable: false);

      return right(PaginationListDto(
        list: courses,
        totalItems: courses.length,
        limit: limit,
      ));
    } on NullThrownError {
      return left(const Failure.apiError());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Ebook>> getEbookById(String ebookId) async {
    final list = (await getEbooks(page: 1, limit: 100)).fold(
      (l) => null,
      (r) => r.list,
    );

    if (list == null) return left(const Failure.notFound());

    final idx = list.indexWhere((element) => element.id == ebookId);
    if (idx < 0) return left(const Failure.notFound());
    return right(list[idx]);
  }

  @override
  Future<Either<Failure, PaginationListDto<Ebook>>> getEbooks({
    required int page,
    required int limit,
    List<Level>? levels,
    String? keyword,
    SortLevelOption? sortBy,
    List<CourseCategory>? categories,
  }) async {
    if (page < 1 || limit <= 0) {
      return left(const Failure.internalError());
    }

    try {
      final res = await FixtureLoader.ebookList;
      final ebooks = (res['data']['rows'] as List)
          .map((e) => EbookDto.fromJson(e).toDomain())
          .toList(growable: false);

      return right(PaginationListDto(
        list: ebooks,
        totalItems: ebooks.length,
        limit: limit,
      ));
    } on NullThrownError {
      return left(const Failure.apiError());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Uint8List?>> getSyllabusPreviewPdf(
    CourseTopic courseTopic,
  ) async {
    try {
      final asset = _assets[Random().nextInt(_assets.length)];
      final bundle = await rootBundle.load(asset);
      return right(bundle.buffer.asUint8List());
    } on FlutterError {
      return left(const Failure.internalError());
    }
  }

  @override
  Future<Either<Failure, List<CourseCategory>>> getCourseCategories() async {
    try {
      final res = await FixtureLoader.courseCategories;
      final categories = (res['rows'] as List)
          .map((e) => CourseCategoryDto.fromJson(e).toDomain())
          .toList(growable: false);

      return right(categories);
    } on NullThrownError {
      return left(const Failure.apiError());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }
}

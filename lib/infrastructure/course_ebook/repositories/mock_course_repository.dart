import 'dart:math';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/course.dart';
import '../../../domain/course_ebook/models/course_topic.dart';
import '../../../domain/course_ebook/models/ebook.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
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

  @override
  Future<Either<Failure, Ebook>> getEbookById(String ebookId) async {
    final list = (await getRecommendedEbooks(page: 1, limit: 100)).fold(
      (l) => null,
      (r) => r,
    );

    if (list == null) return left(const Failure.notFound());

    final idx = list.indexWhere((element) => element.id == ebookId);
    if (idx < 0) return left(const Failure.notFound());
    return right(list[idx]);
  }

  @override
  Future<Either<Failure, List<Ebook>>> getRecommendedEbooks({
    required int page,
    required int limit,
  }) async {
    if (page < 1 || limit <= 0) {
      return left(const Failure.internalError());
    }

    try {
      final res = await FixtureLoader.ebookList;
      final ebooks = (res['data']['rows'] as List)
          .map((e) => EbookDto.fromJson(e).toDomain())
          .toList(growable: false);

      return right(ebooks);
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
}

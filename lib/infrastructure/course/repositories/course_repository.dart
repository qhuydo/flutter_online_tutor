import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/course.dart';
import '../../../domain/course_ebook/models/course_topic.dart';
import '../../../domain/course_ebook/models/ebook.dart';
import '../../../presentation/common.dart';
import '../../common/network/api_client.dart';
import '../../common/network/request_url.dart';
import '../dto/course_dto.dart';
import '../dto/ebook_dto.dart';

@LazySingleton(
  as: CourseRepository,
  env: [Environment.dev, Environment.prod, Environment.prod],
)
class CourseRepositoryImpl implements CourseRepository {
  final ApiClient _apiClient;

  const CourseRepositoryImpl(this._apiClient);

  @override
  Future<Either<Failure, Course>> getCourseById(String courseId) async {
    // TODO add pagination
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
      final result = await _apiClient.get(
        RequestUrl.courseEbook.courses(page: page, size: limit),
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          final courses = (data['data']['rows'] as List)
              .map((e) => CourseDto.fromJson(e).toDomain())
              .toList(growable: false);
          return courses;
        },
      );
      return result;
    } on NullThrownError {
      return left(const Failure.apiError());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Ebook>> getEbookById(String ebookId) async {
    // TODO add pagination
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
      final result = await _apiClient.get(
        RequestUrl.courseEbook.ebooks(page: page, size: limit),
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          final ebooks = (data['data']['rows'] as List)
              .map((e) => EbookDto.fromJson(e).toDomain())
              .toList(growable: false);
          return ebooks;
        },
      );

      return result;
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
    if (courseTopic.fileName == null) {
      return right(null);
    }
    try {
      final result = await _apiClient.getFromUrl(
        courseTopic.fileName!,
        options: Options(responseType: ResponseType.bytes),
        onResponded: (response) {
          return Uint8List.fromList(response.data as List<int>);
        },
      );
      return result;
    } on NullThrownError {
      return left(const Failure.apiError());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }
}
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
import '../../common/network/api_client.dart';
import '../../common/network/request_url.dart';
import '../../user/utils/level_extension.dart';
import '../dto/course_category_dto.dart';
import '../dto/course_dto.dart';
import '../dto/ebook_dto.dart';
import '../utils/sort_level_option.dart';

@LazySingleton(
  as: CourseRepository,
  env: [Environment.dev, Environment.prod, Environment.prod],
)
class CourseRepositoryImpl implements CourseRepository {
  final ApiClient _apiClient;
  List<CourseCategory>? _courseCategories;

  CourseRepositoryImpl(this._apiClient);

  @override
  Future<Either<Failure, Course>> getCourseById(String courseId) async {
    try {
      final result = await _apiClient.get(
        RequestUrl.courseEbook.details(courseId),
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          final courses = CourseDto.fromJson(data['data']).toDomain();
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
  Future<Either<Failure, List<Course>>> getCourses({
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
      final result = await _apiClient.get(
        RequestUrl.courseEbook.courses,
        queryParams: _encodeQueryParams(
          page: page,
          limit: limit,
          levels: levels,
          keyword: keyword,
          sortBy: sortBy,
          categories: categories,
        ),
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
    final list = (await getEbooks(page: 1, limit: 100)).fold(
      (l) => null,
      (r) => r,
    );

    if (list == null) return left(const Failure.notFound());

    final idx = list.indexWhere((element) => element.id == ebookId);
    if (idx < 0) return left(const Failure.notFound());
    return right(list[idx]);
  }

  @override
  Future<Either<Failure, List<Ebook>>> getEbooks({
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
      final result = await _apiClient.get(
        RequestUrl.courseEbook.ebooks,
        queryParams: _encodeQueryParams(
          page: page,
          limit: limit,
          levels: levels,
          keyword: keyword,
          sortBy: sortBy,
          categories: categories,
        ),
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

  @override
  Future<Either<Failure, List<CourseCategory>>> getCourseCategories() async {
    try {
      if (_courseCategories != null) return right(_courseCategories!);

      final res = await _apiClient.get(
        RequestUrl.contentCategory,
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          final categories = (data['rows'] as List)
              .map((e) => CourseCategoryDto.fromJson(e).toDomain())
              .toList(growable: false);

          _courseCategories = categories;
          return categories;
        },
      );

      return res;
    } on NullThrownError {
      return left(const Failure.apiError());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  Map<String, dynamic> _encodeQueryParams({
    required int page,
    required int limit,
    List<Level>? levels,
    String? keyword,
    SortLevelOption? sortBy,
    List<CourseCategory>? categories,
  }) =>
      {
        'page': page,
        'size': limit,
        if (levels != null)
          'level': levels.map((e) => e.toEncodeNumber()).toList(),
        if (sortBy != null) ...{
          'order': ['level'],
          'orderBy': [sortBy.toQueryString()],
        },
        if (categories != null)
          'categoryId': categories.map((e) => e.id).toList(),
        if (keyword != null) 'q': keyword,
      };
}

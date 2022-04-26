import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/course_ebook/models/course_category.dart';

part 'course_category_dto.freezed.dart';

part 'course_category_dto.g.dart';

@freezed
class CourseCategoryDto with _$CourseCategoryDto {
  const factory CourseCategoryDto({
    required String id,
    required String title,
    String? description,
    required String key,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CourseCategoryDto;

  factory CourseCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CourseCategoryDtoFromJson(json);

  CourseCategory toDomain() => CourseCategory(id: id, title: title);
}

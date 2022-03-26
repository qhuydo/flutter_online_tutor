import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_dto.dart';
import 'topic_dto.dart';

part 'course_dto.freezed.dart';

part 'course_dto.g.dart';

@freezed
class CourseDto with _$CourseDto {
  const factory CourseDto({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    required String level,
    required String reason,
    required String purpose,
    required String otherDetails,
    required int defaultPrice,
    required int coursePrice,
    required String courseType,
    required String sectionType,
    required bool visible,
    required String createdAt,
    required String updatedAt,
    required List<TopicDto> topics,
    required List<CategoryDto> categories,
  }) = _CourseDto;

  factory CourseDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoFromJson(json);
}

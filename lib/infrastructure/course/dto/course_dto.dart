import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/course_ebook/models/course.dart';
import '../../user/utils/level_extension.dart';
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
    // @JsonKey(name: 'other_details') required String otherDetails,
    // @JsonKey(name: 'default_price') required int defaultPrice,
    // @JsonKey(name: 'course_price') required int coursePrice,
    String? courseType,
    String? sectionType,
    required bool visible,
    required String createdAt,
    required String updatedAt,
    @Default([]) List<TopicDto> topics,
    List<CategoryDto>? categories,
  }) = _CourseDto;

  factory CourseDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoFromJson(json);
}

extension CourseDtoX on CourseDto {
  Course toDomain() => Course(
        id: id,
        name: name,
        level: level.toLevelFromLevelOrder(),
        reason: reason,
        purpose: purpose,
        courseTopic: topics.map((e) => e.toDomain()).toList(growable: false)
          ..sort((a, b) => a.order.compareTo(b.order)),
      );
}

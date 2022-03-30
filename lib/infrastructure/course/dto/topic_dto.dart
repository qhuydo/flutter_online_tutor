import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_dto.freezed.dart';

part 'topic_dto.g.dart';

@freezed
class TopicDto with _$TopicDto {
  const factory TopicDto({
    required String id,
    required String courseId,
    required int orderCourse,
    required String name,
    required String nameFile,
    required String description,
    String? videoUrl,
    required String createdAt,
    required String updatedAt,
  }) = _TopicDto;

  factory TopicDto.fromJson(Map<String, dynamic> json) =>
      _$TopicDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_topic_dto.freezed.dart';

part 'learning_topic_dto.g.dart';

@freezed
class LearningTopicDto with _$LearningTopicDto {
  const factory LearningTopicDto({
    required int id,
    required String key,
    required String name,
  }) = _LearningTopicDto;

  factory LearningTopicDto.fromJson(Map<String, dynamic> json) =>
      _$LearningTopicDtoFromJson(json);
}

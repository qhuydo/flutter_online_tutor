import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/models/learn_topic.dart';

part 'learning_topic_dto.freezed.dart';

part 'learning_topic_dto.g.dart';

@freezed
class LearningTopicDto with _$LearningTopicDto {
  const LearningTopicDto._();

  const factory LearningTopicDto({
    required int id,
    required String key,
    required String name,
  }) = _LearningTopicDto;

  factory LearningTopicDto.fromJson(Map<String, dynamic> json) =>
      _$LearningTopicDtoFromJson(json);

  LearnTopic toDomain() => LearnTopic(id: id, key: key, name: name);

  factory LearningTopicDto.fromDomain(LearnTopic learnTopic) =>
      LearningTopicDto(
        id: learnTopic.id,
        key: learnTopic.key,
        name: learnTopic.name,
      );
}

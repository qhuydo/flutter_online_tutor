import 'package:freezed_annotation/freezed_annotation.dart';

part 'learn_topic.freezed.dart';

@freezed
class LearnTopic with _$LearnTopic {
  const factory LearnTopic({
    required int id,
    required String key,
    required String name,
  }) = _LearnTopic;
}

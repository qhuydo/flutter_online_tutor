import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_topic.freezed.dart';

@freezed
class CourseTopic with _$CourseTopic {

  const CourseTopic._();

  const factory CourseTopic({
    required String id,
    required int order,
    required String name,
    String? fileName,
    String? description,
    String? videoUrl,
  }) = _CourseTopic;

  bool get canPreview => fileName != null || videoUrl != null;

}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback.freezed.dart';

@freezed
class Feedback with _$Feedback {
  const Feedback._();

  const factory Feedback({
    required String avatar,
    required DateTime createdAt,
    required String content,
    required String id,
    required String name,
    required int rating,
    required DateTime updatedAt,
  }) = _Feedback;

  bool get isEdited => createdAt != updatedAt;
}

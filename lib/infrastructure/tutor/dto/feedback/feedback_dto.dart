import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/tutor/models/feedback.dart';

part 'feedback_dto.freezed.dart';

part 'feedback_dto.g.dart';

@freezed
class FeedbackDto with _$FeedbackDto {
  const FeedbackDto._();

  const factory FeedbackDto({
    required String id,
    required String bookingId,
    required String firstId,
    required String secondId,
    required int rating,
    required String content,
    required DateTime createdAt,
    required DateTime updatedAt,
    required FirstInfo firstInfo,
  }) = _Feedback;

  factory FeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDtoFromJson(json);

  Feedback toDomain() => Feedback(
        avatar: firstInfo.avatar,
        createdAt: createdAt,
        content: content,
        id: id,
        name: firstInfo.name,
        rating: rating,
        updatedAt: updatedAt,
      );
}

@freezed
class FirstInfo with _$FirstInfo {
  const factory FirstInfo({
    required String id,
    required String email,
    required String name,
    required String avatar,
    // String? country,
    // String? phone,
    // String? language,
    // String? birthday,
  }) = _FirstInfo;

  factory FirstInfo.fromJson(Map<String, dynamic> json) =>
      _$FirstInfoFromJson(json);
}

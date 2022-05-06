import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/user_info_dto.dart';

part 'message_bubble_dto.freezed.dart';

part 'message_bubble_dto.g.dart';


@freezed
class MessageBubbleDto with _$MessageBubbleDto {
  const MessageBubbleDto._();

  const factory MessageBubbleDto({
    required String id,
    @Default('') String content,
    @Default(false) bool isRead,
    required DateTime createdAt,
    // required DateTime updatedAt,
    required UserInfoDto fromInfo,
    required UserInfoDto toInfo,
  }) = _MessageBubbleDto;

  factory MessageBubbleDto.fromJson(Map<String, dynamic> json) =>
      _$MessageBubbleDtoFromJson(json);
}

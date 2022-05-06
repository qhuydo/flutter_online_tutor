import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/message/models/message_bubble.dart';
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

  MessageBubble toDomain() => MessageBubble(
        id: id,
        from: fromInfo.toDomain(),
        to: fromInfo.toDomain(),
        createdAt: createdAt,
        content: content,
        hasRead: isRead,
      );

  factory MessageBubbleDto.fromDomain(MessageBubble messageBubble) =>
      MessageBubbleDto(
        id: messageBubble.id,
        createdAt: messageBubble.createdAt,
        fromInfo: UserInfoDto.fromDomain(messageBubble.from),
        toInfo: UserInfoDto.fromDomain(messageBubble.to),
        isRead: messageBubble.hasRead,
        content: messageBubble.content,
      );
}


import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_info.dart';

part 'message_bubble.freezed.dart';

@freezed
class MessageBubble with _$MessageBubble {
  const MessageBubble._();

  const factory MessageBubble({
    required String id,
    required UserInfo from,
    required UserInfo to,
    required DateTime createdAt,
    @Default('') String content,
    @Default(false) hasRead,
  }) = _MessageBubble;

  bool isMine(String userId) => userId == from.id;
}
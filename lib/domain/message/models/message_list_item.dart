
import 'package:freezed_annotation/freezed_annotation.dart';

import 'partner_info.dart';
import 'user_info.dart';

part 'message_list_item.freezed.dart';

@freezed
class MessageListItem with _$MessageListItem {
  const MessageListItem._();

  const factory MessageListItem({
    @Default(false) bool hasRead,
    @Default('') String content,
    required DateTime createdAt,
    required PartnerInfo partner,
    required UserInfo from,
    required UserInfo to,
  }) = _MessageListItem;

  bool get isMine => partner.id != from.id;
  bool get isFromOther => partner.id == from.id;
}
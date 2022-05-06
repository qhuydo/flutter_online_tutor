import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/message/models/message_list_item.dart';
import '../common/partner_dto.dart';
import '../common/user_info_dto.dart';

part 'message_list_item_dto.freezed.dart';

part 'message_list_item_dto.g.dart';

@freezed
class MessageListItemDto with _$MessageListItemDto {
  const MessageListItemDto._();

  const factory MessageListItemDto({
    required String id,
    @Default('') String content,
    @Default(false) bool isRead,
    required DateTime createdAt,
    required UserInfoDto fromInfo,
    required UserInfoDto toInfo,
    required PartnerDto partner,
  }) = _MessageListItemDto;

  factory MessageListItemDto.fromJson(Map<String, dynamic> json) =>
      _$MessageListItemDtoFromJson(json);

  MessageListItem toDomain() => MessageListItem(
        id: id,
        hasRead: isRead,
        content: content,
        createdAt: createdAt,
        partner: partner.toDomain(),
        from: fromInfo.toDomain(),
        to: toInfo.toDomain(),
      );

  factory MessageListItemDto.fromDomain(MessageListItem item) =>
      MessageListItemDto(
        id: item.id,
        content: item.content,
        isRead: item.hasRead,
        createdAt: item.createdAt,
        fromInfo: UserInfoDto.fromDomain(item.from),
        toInfo: UserInfoDto.fromDomain(item.to),
        partner: PartnerDto.fromDomain(item.partner),
      );
}

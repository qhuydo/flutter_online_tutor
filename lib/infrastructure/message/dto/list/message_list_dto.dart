import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_list_item_dto.dart';

part 'message_list_dto.freezed.dart';

part 'message_list_dto.g.dart';

@freezed
class MessageListDto with _$MessageListDto {
  const factory MessageListDto({
   @Default([]) List<MessageListItemDto> recentList,
   @Default(0) int unreadCount,
  }) = _MessageListDto;

  factory MessageListDto.fromJson(Map<String, dynamic> json) =>
      _$MessageListDtoFromJson(json);
}


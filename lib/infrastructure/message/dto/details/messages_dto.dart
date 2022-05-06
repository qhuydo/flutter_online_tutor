import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_bubble_dto.dart';

part 'messages_dto.freezed.dart';

part 'messages_dto.g.dart';

@freezed
class MessagesDto with _$MessagesDto {
  const factory MessagesDto({
    @Default([]) List<MessageBubbleDto> messages,
  }) = _MessagesDto;

  factory MessagesDto.fromJson(Map<String, dynamic> json) =>
      _$MessagesDtoFromJson(json);
}

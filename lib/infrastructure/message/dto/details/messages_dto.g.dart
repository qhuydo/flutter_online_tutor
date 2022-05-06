// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessagesDto _$$_MessagesDtoFromJson(Map<String, dynamic> json) =>
    _$_MessagesDto(
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => MessageBubbleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MessagesDtoToJson(_$_MessagesDto instance) =>
    <String, dynamic>{
      'messages': instance.messages,
    };

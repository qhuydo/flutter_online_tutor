// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_bubble_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageBubbleDto _$$_MessageBubbleDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageBubbleDto(
      id: json['id'] as String,
      content: json['content'] as String? ?? '',
      isRead: json['isRead'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      fromInfo: UserInfoDto.fromJson(json['fromInfo'] as Map<String, dynamic>),
      toInfo: UserInfoDto.fromJson(json['toInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageBubbleDtoToJson(_$_MessageBubbleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt.toIso8601String(),
      'fromInfo': instance.fromInfo,
      'toInfo': instance.toInfo,
    };

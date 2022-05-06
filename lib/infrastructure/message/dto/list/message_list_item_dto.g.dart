// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_list_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageListItemDto _$$_MessageListItemDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MessageListItemDto(
      id: json['id'] as String,
      content: json['content'] as String? ?? '',
      isRead: json['isRead'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      fromInfo: UserInfoDto.fromJson(json['fromInfo'] as Map<String, dynamic>),
      toInfo: UserInfoDto.fromJson(json['toInfo'] as Map<String, dynamic>),
      partner: PartnerDto.fromJson(json['partner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageListItemDtoToJson(
        _$_MessageListItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt.toIso8601String(),
      'fromInfo': instance.fromInfo,
      'toInfo': instance.toInfo,
      'partner': instance.partner,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageListDto _$$_MessageListDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageListDto(
      recentList: (json['recentList'] as List<dynamic>?)
              ?.map(
                  (e) => MessageListItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      unreadCount: json['unreadCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MessageListDtoToJson(_$_MessageListDto instance) =>
    <String, dynamic>{
      'recentList': instance.recentList,
      'unreadCount': instance.unreadCount,
    };

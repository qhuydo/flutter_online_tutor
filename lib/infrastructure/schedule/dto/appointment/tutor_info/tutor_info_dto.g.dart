// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TutorInfoDto _$$_TutorInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_TutorInfoDto(
      id: json['id'] as String,
      avatar: json['avatar'] as String?,
      name: json['name'] as String,
      country: json['country'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_TutorInfoDtoToJson(_$_TutorInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseCategoryDto _$$_CourseCategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_CourseCategoryDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      key: json['key'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_CourseCategoryDtoToJson(
        _$_CourseCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'key': instance.key,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

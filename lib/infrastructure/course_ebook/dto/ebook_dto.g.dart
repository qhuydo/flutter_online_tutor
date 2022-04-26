// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebook_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EbookDto _$$_EbookDtoFromJson(Map<String, dynamic> json) => _$_EbookDto(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      description: json['description'] as String?,
      level: json['level'] as String,
      fileUrl: json['fileUrl'] as String,
    );

Map<String, dynamic> _$$_EbookDtoToJson(_$_EbookDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'level': instance.level,
      'fileUrl': instance.fileUrl,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopicDto _$$_TopicDtoFromJson(Map<String, dynamic> json) => _$_TopicDto(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      orderCourse: json['orderCourse'] as int,
      name: json['name'] as String,
      nameFile: json['nameFile'] as String,
      description: json['description'] as String,
      videoUrl: json['videoUrl'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_TopicDtoToJson(_$_TopicDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'orderCourse': instance.orderCourse,
      'name': instance.name,
      'nameFile': instance.nameFile,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

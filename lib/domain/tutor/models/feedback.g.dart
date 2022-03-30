// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feedback _$$_FeedbackFromJson(Map<String, dynamic> json) => _$_Feedback(
      avatar: json['avatar'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      content: json['content'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      rating: json['rating'] as int,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_FeedbackToJson(_$_Feedback instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'createdAt': instance.createdAt.toIso8601String(),
      'content': instance.content,
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

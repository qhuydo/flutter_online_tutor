// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feedback _$$_FeedbackFromJson(Map<String, dynamic> json) => _$_Feedback(
      id: json['id'] as String,
      bookingId: json['bookingId'] as String,
      firstId: json['firstId'] as String,
      secondId: json['secondId'] as String,
      rating: json['rating'] as int,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      firstInfo: FirstInfo.fromJson(json['firstInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedbackToJson(_$_Feedback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookingId': instance.bookingId,
      'firstId': instance.firstId,
      'secondId': instance.secondId,
      'rating': instance.rating,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'firstInfo': instance.firstInfo,
    };

_$_FirstInfo _$$_FirstInfoFromJson(Map<String, dynamic> json) => _$_FirstInfo(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$_FirstInfoToJson(_$_FirstInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
    };

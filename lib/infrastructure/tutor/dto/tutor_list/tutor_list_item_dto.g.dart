// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_list_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TutorListItemDto _$$_TutorListItemDtoFromJson(Map<String, dynamic> json) =>
    _$_TutorListItemDto(
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      language: json['language'] as String?,
      birthday: DateTime.parse(json['birthday'] as String),
      feedbacks: (json['feedbacks'] as List<dynamic>?)
          ?.map((e) => FeedbackDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String,
      video: json['video'] as String,
      bio: json['bio'] as String,
      education: json['education'] as String,
      experience: json['experience'] as String,
      profession: json['profession'] as String,
      targetStudent: json['targetStudent'] as String,
      interests: json['interests'] as String,
      languages: json['languages'] as String,
      specialties: json['specialties'] as String,
      price: json['price'] as int,
      isOnline: json['isOnline'] as bool?,
    );

Map<String, dynamic> _$$_TutorListItemDtoToJson(_$_TutorListItemDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'language': instance.language,
      'birthday': instance.birthday.toIso8601String(),
      'feedbacks': instance.feedbacks,
      'userId': instance.userId,
      'video': instance.video,
      'bio': instance.bio,
      'education': instance.education,
      'experience': instance.experience,
      'profession': instance.profession,
      'targetStudent': instance.targetStudent,
      'interests': instance.interests,
      'languages': instance.languages,
      'specialties': instance.specialties,
      'price': instance.price,
      'isOnline': instance.isOnline,
    };

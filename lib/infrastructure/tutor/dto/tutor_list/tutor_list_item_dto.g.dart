// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_list_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TutorListItemDto _$$_TutorListItemDtoFromJson(Map<String, dynamic> json) =>
    _$_TutorListItemDto(
      level: json['level'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      phone: json['phone'] as String,
      language: json['language'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      requestPassword: json['requestPassword'] as bool,
      isActivated: json['isActivated'] as bool,
      timezone: json['timezone'] as int,
      feedbacks: (json['feedbacks'] as List<dynamic>)
          .map((e) => FeedbackDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
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
      isOnline: json['isOnline'] as bool,
    );

Map<String, dynamic> _$$_TutorListItemDtoToJson(_$_TutorListItemDto instance) =>
    <String, dynamic>{
      'level': instance.level,
      'email': instance.email,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'phone': instance.phone,
      'language': instance.language,
      'birthday': instance.birthday.toIso8601String(),
      'requestPassword': instance.requestPassword,
      'isActivated': instance.isActivated,
      'timezone': instance.timezone,
      'feedbacks': instance.feedbacks,
      'id': instance.id,
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
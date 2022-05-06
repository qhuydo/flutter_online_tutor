// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TutorDetailsDto _$$_TutorDetailsDtoFromJson(Map<String, dynamic> json) =>
    _$_TutorDetailsDto(
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
      user: User.fromJson(json['User'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool,
      avgRating: (json['avgRating'] as num).toDouble(),
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_TutorDetailsDtoToJson(_$_TutorDetailsDto instance) =>
    <String, dynamic>{
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
      'User': instance.user,
      'isFavorite': instance.isFavorite,
      'avgRating': instance.avgRating,
      'price': instance.price,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String?,
      name: json['name'] as String,
      country: json['country'] as String,
      languages: json['languages'] as String?,
      birthday: json['birthday'] as String?,
      feedbacks: (json['feedbacks'] as List<dynamic>?)
          ?.map((e) => FeedbackDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      courses: (json['courses'] as List<dynamic>)
          .map((e) => CourseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'languages': instance.languages,
      'birthday': instance.birthday,
      'feedbacks': instance.feedbacks,
      'courses': instance.courses,
    };

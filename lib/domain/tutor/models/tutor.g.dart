// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tutor _$$_TutorFromJson(Map<String, dynamic> json) => _$_Tutor(
      id: json['id'] as String,
      avatar: json['avatar'] as String?,
      bio: json['bio'] as String,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      education: json['education'] as String,
      averageRating: (json['averageRating'] as num).toDouble(),
      feedbacks: (json['feedbacks'] as List<dynamic>?)
              ?.map((e) => Feedback.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      interests: json['interests'] as String,
      isFavourite: json['isFavourite'] as bool,
      isOnline: json['isOnline'] as bool?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      profession: json['profession'] as String,
      specialities: (json['specialities'] as List<dynamic>?)
              ?.map((e) => Speciality.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      targetStudent: $enumDecode(_$LevelEnumMap, json['targetStudent']),
      video: json['video'] as String,
    );

Map<String, dynamic> _$$_TutorToJson(_$_Tutor instance) => <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'country': instance.country,
      'education': instance.education,
      'averageRating': instance.averageRating,
      'feedbacks': instance.feedbacks,
      'interests': instance.interests,
      'isFavourite': instance.isFavourite,
      'isOnline': instance.isOnline,
      'languages': instance.languages,
      'name': instance.name,
      'price': instance.price,
      'profession': instance.profession,
      'specialities': instance.specialities,
      'targetStudent': _$LevelEnumMap[instance.targetStudent],
      'video': instance.video,
    };

const _$LevelEnumMap = {
  Level.none: 'none',
  Level.beginner: 'beginner',
  Level.higherBeginner: 'higherBeginner',
  Level.preIntermediate: 'preIntermediate',
  Level.intermediate: 'intermediate',
  Level.upperIntermediate: 'upperIntermediate',
  Level.advanced: 'advanced',
  Level.proficiency: 'proficiency',
};

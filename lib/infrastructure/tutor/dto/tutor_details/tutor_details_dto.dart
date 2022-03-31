import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/common/helpers/language_converter.dart';
import '../../../../domain/common/models/country.dart';
import '../../../../domain/tutor/models/tutor.dart';
import '../../../../domain/user/helpers/speciality_converter.dart';
import '../../../../domain/user/models/speciality.dart';
import '../../../course/dto/course_dto.dart';
import '../../../user/utils/level_extension.dart';
import '../feedback/feedback_dto.dart';

part 'tutor_details_dto.freezed.dart';

part 'tutor_details_dto.g.dart';

TutorDetailsDto tutorDetailsDtoFromJson(String str) =>
    TutorDetailsDto.fromJson(json.decode(str));

String tutorDetailsDtoToJson(TutorDetailsDto data) =>
    json.encode(data.toJson());

@freezed
class TutorDetailsDto with _$TutorDetailsDto {
  const TutorDetailsDto._();

  const factory TutorDetailsDto({
    // required String id,
    required String userId,
    required String video,
    required String bio,
    required String education,
    required String experience,
    required String profession,
    // dynamic accent,
    required String targetStudent,
    required String interests,
    required String languages,
    required String specialties,
    // dynamic resume,
    // bool isActivated,
    // dynamic isNative,
    // DateTime createdAt,
    // DateTime updatedAt,

    // "stoopid" api returns 'User' instead of 'user'
    // ignore: invalid_annotation_target
    @JsonKey(name: 'User') required User user,
    required bool isFavorite,
    required double avgRating,
    required int price,
  }) = _TutorDetailsDto;

  factory TutorDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$TutorDetailsDtoFromJson(json);

  Tutor toDomain({required List<Speciality> specialityMap}) => Tutor(
        id: userId,
        avatar: user.avatar,
        bio: bio,
        country: Country.fromIsoCodeOrAntarctica(user.country),
        education: education,
        averageRating: avgRating,
        feedbacks:
            user.feedbacks.map((e) => e.toDomain()).toList(growable: false),
        interests: interests,
        isFavourite: isFavorite,
        languages: LanguageConverter.parseFromLanguageKeyString(languages),
        name: user.name,
        price: price.toDouble(),
        profession: profession,
        specialities: SpecialityConverter.parseFromSpecialityKeyString(
            specialties, specialityMap),
        targetStudent: targetStudent.toLevelFromTargetStudent(),
        video: video,
      );
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String level,
    required String email,
    // String google,
    // dynamic facebook,
    // dynamic apple,
    String? avatar,
    required String name,
    required String country,
    required String phone,
    required String? languages,
    required String? birthday,
    // bool requestPassword,
    // bool isActivated,
    // bool isPhoneActivated,
    // dynamic requireNote,
    // int timezone,
    // dynamic phoneAuth,
    // bool isPhoneAuthActivated,
    // DateTime createdAt,
    // DateTime updatedAt,
    // dynamic deletedAt,
    required List<FeedbackDto> feedbacks,
    required List<CourseDto> courses,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

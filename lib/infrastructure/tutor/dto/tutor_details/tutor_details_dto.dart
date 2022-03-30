import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../course/dto/course_dto.dart';
import '../feedback/feedback_dto.dart';

part 'tutor_details_dto.freezed.dart';

part 'tutor_details_dto.g.dart';

TutorDetailsDto tutorDetailsDtoFromJson(String str) =>
    TutorDetailsDto.fromJson(json.decode(str));

String tutorDetailsDtoToJson(TutorDetailsDto data) => json.encode(data.toJson());

@freezed
class TutorDetailsDto with _$TutorDetailsDto {
  const factory TutorDetailsDto({
    required String id,
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
    @JsonKey(name: 'User') required User user,
    required bool isFavorite,
    required double avgRating,
    required int price,
  }) = _TutorDetailsDto;

  factory TutorDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$TutorDetailsDtoFromJson(json);
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
    required String language,
    required String birthday,
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

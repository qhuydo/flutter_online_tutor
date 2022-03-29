import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../feedback/feedback_dto.dart';

part 'tutor_list_item_dto.freezed.dart';

part 'tutor_list_item_dto.g.dart';

List<TutorListItemDto> tutorListDtoFromJson(String str) => List<TutorListItemDto>.from(
    json.decode(str).map((x) => TutorListItemDto.fromJson(x)));

String tutorListDtoToJson(List<TutorListItemDto> data) =>
    json.encode(List.from(data.map((x) => x.toJson())));

@freezed
class TutorListItemDto with _$TutorListItemDto {
  const factory TutorListItemDto({
    required String level,
    required String email,
    // String? google,
    // String? facebook,
    // String? apple,
    required String avatar,
    required String name,
    required String country,
    required String phone,
    required String language,
    required DateTime birthday,
    // required bool requestPassword,
    // required bool isActivated,
    // bool? isPhoneActivated,
    // dynamic requireNote,
    // required int timezone,
    // dynamic phoneAuth,
    // required bool isPhoneAuthActivated,
    // required DateTime createdAt,
    // required DateTime updatedAt,
    // DateTime? deletedAt,
    required List<FeedbackDto> feedbacks,
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
    // dynamic isNative,
    required int price,
    required bool isOnline,
  }) = _TutorListItemDto;

  factory TutorListItemDto.fromJson(Map<String, dynamic> json) =>
      _$TutorListItemDtoFromJson(json);
}


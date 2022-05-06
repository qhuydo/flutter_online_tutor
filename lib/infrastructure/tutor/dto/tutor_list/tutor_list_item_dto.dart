import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/common/helpers/language_converter.dart';
import '../../../../domain/common/models/country.dart';
import '../../../../domain/tutor/models/tutor.dart';
import '../../../../domain/user/helpers/speciality_converter.dart';
import '../../../../domain/user/models/speciality.dart';
import '../../../user/utils/level_extension.dart';
import '../feedback/feedback_dto.dart';

part 'tutor_list_item_dto.freezed.dart';

part 'tutor_list_item_dto.g.dart';

List<TutorListItemDto> tutorListDtoFromJson(String str) =>
    List<TutorListItemDto>.from(
        json.decode(str).map((x) => TutorListItemDto.fromJson(x)));

String tutorListDtoToJson(List<TutorListItemDto> data) =>
    json.encode(List.from(data.map((x) => x.toJson())));

@freezed
class TutorListItemDto with _$TutorListItemDto {
  const TutorListItemDto._();

  double get averageRating {
    double sum = 0.0;

    if (feedbacks == null) {
      return sum;
    }

    for (final feedback in feedbacks!) {
      sum += feedback.rating;
    }
    final double average = sum != 0 ? sum / feedbacks!.length : 0;
    return average;
  }

  const factory TutorListItemDto({
    // required String? level,
    required String email,
    // String? google,
    // String? facebook,
    // String? apple,
    required String avatar,
    required String name,
    required String country,
    // required String? phone,
    required String? language,
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
    required List<FeedbackDto>? feedbacks,
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
    // dynamic isNative,
    required int price,
    bool? isOnline,
  }) = _TutorListItemDto;

  factory TutorListItemDto.fromJson(Map<String, dynamic> json) =>
      _$TutorListItemDtoFromJson(json);

  Tutor toDomain({
    required List<Speciality> specialityMap,
    required bool isFavourite,
  }) =>
      Tutor(
        id: userId,
        avatar: avatar,
        bio: bio,
        country: Country.fromIsoCodeOrAntarctica(country),
        education: education,
        averageRating: averageRating,
        feedbacks:
            feedbacks?.map((e) => e.toDomain()).toList(growable: false) ?? [],
        interests: interests,
        isFavourite: isFavourite,
        isOnline: isOnline,
        languages: LanguageConverter.parseFromLanguageKeyString(languages),
        name: name,
        price: price.toDouble(),
        profession: profession,
        specialities: SpecialityConverter.parseFromSpecialityKeyString(
          specialties,
          specialityMap,
        ),
        targetStudent: targetStudent.toLevelFromTargetStudent(),
        video: video,
      );
}

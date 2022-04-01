import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutor_info_dto.freezed.dart';

part 'tutor_info_dto.g.dart';

@freezed
class TutorInfoDto with _$TutorInfoDto {
  const factory TutorInfoDto({
    required String id,
    // String level,
    // String email,
    // dynamic google,
    // dynamic facebook,
    // dynamic apple,
    String? avatar,
    required String name,
    required String country,
    // String phone,
    // dynamic language,
    // DateTime birthday,
    // bool requestPassword,
    // bool isActivated,
    // dynamic isPhoneActivated,
    // dynamic requireNote,
    // int timezone,
    // dynamic phoneAuth,
    // bool isPhoneAuthActivated,
    required DateTime createdAt,
    required DateTime updatedAt,
    // dynamic deletedAt,
  }) = _TutorInfoDto;

  factory TutorInfoDto.fromJson(Map<String, dynamic> json) =>
      _$TutorInfoDtoFromJson(json);
}

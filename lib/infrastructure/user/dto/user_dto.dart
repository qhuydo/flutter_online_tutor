import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/authentication/value_objects/email_address.dart';
import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/common/constants/countries.dart';
import '../../../domain/common/value_objects/id.dart';
import '../../../domain/user/models/user.dart';
import '../../../domain/user/value_objects/birthday.dart';
import '../../../domain/user/value_objects/name.dart';
import '../../course_ebook/dto/course_dto.dart';
import '../../wallet/dto/wallet_dto.dart';
import '../utils/level_extension.dart';
import 'speciality_dto.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String email,
    required String name,
    String? avatar,
    String? country,
    String? phone,
    String? language,
    String? birthday,
    bool? isActivated,
    WalletDto? walletInfo,
    List<CourseDto>? courses,
    String? level,
    @Default([]) List<SpecialityDto> learnTopics,
    @Default([]) List<SpecialityDto> testPreparations,
    // required bool isPhoneActivated,
    // required int timezone,
    Map<String, dynamic>? tutorInfo,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension UserDtoX on UserDto {
  User toDomain() {
    // log('$birthday');
    BirthDay birthDayObject;
    try {
      birthDayObject = BirthDay(
        birthday != null ? DateTime.parse(birthday!) : null,
      );
    } on FormatException {
      birthDayObject = BirthDay(null);
    }
    return User(
      id: Id.fromString(id),
      birthday: birthDayObject,
      emailAddress: EmailAddress(email),
      name: Name(name),
      country: countryMap[country],
      avatar: avatar,
      phoneNumber: phone?.isNotEmpty == true ? PhoneNumber(phone!) : null,
      level: level.toLevel(),
      learningTopics: learnTopics.map((e) => e.toDomain()).toList(),
      testPreparationTopics: testPreparations.map((e) => e.toDomain()).toList(),
      tutorFormCompleted: tutorInfo != null,
    );
  }
}

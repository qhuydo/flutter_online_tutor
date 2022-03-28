import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/authentication/value_objects/email_address.dart';
import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/common/value_objects/id.dart';
import '../../../domain/user/models/user.dart';
import '../../course/dto/course_dto.dart';
import '../../wallet/dto/wallet_dto.dart';
import 'learning_topic_dto.dart';
import 'test_preparation_dto.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String email,
    required String name,
    required String avatar,
    String? country,
    String? phone,
    String? language,
    String? birthday,
    required bool isActivated,
    required WalletDto walletInfo,
    required List<CourseDto> courses,
    String? level,
    @Default([]) List<LearningTopicDto> learnTopics,
    @Default([]) List<TestPreparationDto> testPreparations,
    required bool isPhoneActivated,
    required int timezone,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension UserDtoX on UserDto {
  User toDomain() {
    return User(
      id: Id.fromString(this.id),
      emailAddress: EmailAddress(email),
      name: name,
      avatar: avatar,
      phoneNumber:
          phone?.isNotEmpty == true ? some(PhoneNumber(phone!)) : none(),
    );
  }
}

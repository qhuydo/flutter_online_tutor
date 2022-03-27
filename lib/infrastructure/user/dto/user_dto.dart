import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/authentication/value_objects/email_address.dart';
import '../../../domain/common/value_objects/id.dart';
import '../../../domain/user/models/user.dart';
import '../../course/dto/course_dto.dart';
import '../../wallet/dto/wallet_dto.dart';
import 'learning_topic_dto.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String email,
    required String name,
    required String avatar,
    required String country,
    required String phone,
    required String language,
    required String birthday,
    required bool isActivated,
    required WalletDto walletInfo,
    required List<CourseDto> courses,
    required String level,
    required List<LearningTopicDto> learnTopics,
    required List<String> testPreparations,
    required bool isPhoneActivated,
    required int timezone,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension UserDtoX on UserDto {
  User toDomain() {
    return User(
      id: Id.fromString(id),
      emailAddress: EmailAddress(email),
      name: name,
      avatar: avatar,
    );
  }
}

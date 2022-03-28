import 'package:freezed_annotation/freezed_annotation.dart';

import '../../authentication/value_objects/email_address.dart';
import '../../authentication/value_objects/phone_number.dart';
import '../../common/models/country.dart';
import '../../common/value_objects/id.dart';
import '../constants/levels.dart';
import '../value_objects/birthday.dart';
import '../value_objects/name.dart';
import 'learn_topic.dart';
import 'test_preparation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required Id id,
    required EmailAddress emailAddress,
    required Name name,
    PhoneNumber? phoneNumber,
    String? avatar,
    BirthDay? birthday,
    Country? country,
    @Default(Level.none) Level level,
    @Default([]) List<LearnTopic> learningTopics,
    @Default([]) List<TestPreparation> testPreparationTopics,
  }) = _User;

  factory User.initial() => User(
    id: Id(),
    emailAddress: EmailAddress(''),
    name: Name(''),
  );
}

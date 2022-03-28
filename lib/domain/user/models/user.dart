import 'package:freezed_annotation/freezed_annotation.dart';

import '../../authentication/value_objects/email_address.dart';
import '../../authentication/value_objects/phone_number.dart';
import '../../common/value_objects/id.dart';
import '../constants/levels.dart';
import '../value_objects/birthday.dart';
import 'learn_topic.dart';
import 'test_preparation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required Id id,
    required EmailAddress emailAddress,
    required String name,
    PhoneNumber? phoneNumber,
    String? avatar,
    BirthDay? birthday,
    @Default(Level.none) Level level,
    @Default([]) List<LearnTopic> learningTopics,
    @Default([]) List<TestPreparation> testPreparationTopics,
  }) = _User;
}

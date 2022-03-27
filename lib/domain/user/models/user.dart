import 'package:freezed_annotation/freezed_annotation.dart';

import '../../authentication/value_objects/email_address.dart';
import '../../common/value_objects/id.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required Id id,
    required EmailAddress emailAddress,
    required String name,
    String? avatar,
  }) = _User;
}

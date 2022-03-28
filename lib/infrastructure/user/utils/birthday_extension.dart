import 'package:intl/intl.dart';

import '../../../domain/user/value_objects/birthday.dart';

extension BirthdayX on BirthDay {

  String requireStringValue() {
    return DateFormat('yyyy-MM-dd').format(requireValue());
  }

}
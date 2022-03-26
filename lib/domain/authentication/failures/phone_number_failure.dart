import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/models/country.dart';

part 'phone_number_failure.freezed.dart';

@freezed
class PhoneNumberFailure with _$PhoneNumberFailure {
  const factory PhoneNumberFailure.emptyValue() = _EmptyValue;

  const factory PhoneNumberFailure.invalidPhoneNumber(String value) =
      _InvalidPhoneNumber;

  const factory PhoneNumberFailure.invalidCountryCode(Country country) =
      _InvalidCountryCode;
}

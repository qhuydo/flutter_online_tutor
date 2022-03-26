import 'package:dartz/dartz.dart';

import '../../common/constants/countries.dart';
import '../../common/models/country.dart';
import '../../common/value_objects/value_object.dart';
import '../failures/phone_number_failure.dart';

class PhoneNumber extends ValueObject<PhoneNumberFailure, String> {
  final Either<PhoneNumberFailure, String> _phoneNumberOrFailure;

  @override
  Either<PhoneNumberFailure, String> get value => _phoneNumberOrFailure;

  const PhoneNumber._(
    this._phoneNumberOrFailure,
  );

  factory PhoneNumber(String input) => PhoneNumber._(validate(input));

  factory PhoneNumber.fromCountryCodeCombination({
    required Country country,
    required String input,
  }) => PhoneNumber._(validateWithCountryCode(country, input));

  static Either<PhoneNumberFailure, String> validate(String input) {
    if (input.isEmpty) return left(const PhoneNumberFailure.emptyValue());

    const regex =
        r'''^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$''';

    if (RegExp(regex).hasMatch(input)) {
      return right(input);
    }
    return left(PhoneNumberFailure.invalidPhoneNumber(input));
  }

  static Either<PhoneNumberFailure, String> validateWithCountryCode(
    Country country,
    String input,
  ) {
    if (!countryMap.containsKey(country.isoCode)) {
      return left(PhoneNumberFailure.invalidCountryCode(country));
    }

    if (country.isoCode == 'VN') {
      // 84 00 00 00 000 -> 000 00 00 000
      final phoneNumber = '0$input';
      return validate(phoneNumber);
    }

    return validate('${country.dialCode.replaceFirst('+', '')}$input');
  }

}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/countries.dart';

part 'country.freezed.dart';

part 'country.g.dart';

@freezed
class Country with _$Country {
  const Country._();

  const factory Country({
    required String name,
    required String dialCode,
    required String isoCode,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  get isValid => countryMap[isoCode] != null;

  factory Country.fromIsoCodeOrAntarctica(String isoCode) =>
      countryMap[isoCode] ?? countryMap['AQ']!;
}

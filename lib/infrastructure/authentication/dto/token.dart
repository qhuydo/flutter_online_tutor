import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

part 'token.g.dart';

@freezed
class TokenDetails with _$TokenDetails {
  const factory TokenDetails({
    required String token,
    required DateTime expires,
  }) = _TokenDetails;

  factory TokenDetails.fromJson(Map<String, dynamic> json) =>
      _$TokenDetailsFromJson(json);
}

@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    required TokenDetails access,
    required TokenDetails refresh,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}

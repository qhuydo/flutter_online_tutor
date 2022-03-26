import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/dto/user_dto.dart';
import 'token.dart';

part 'authentication_dto.freezed.dart';

part 'authentication_dto.g.dart';

@freezed
class AuthenticationDto with _$AuthenticationDto {
  const factory AuthenticationDto({
    required UserDto user,
    required Tokens tokens,
  }) = _AuthenticationDto;

  factory AuthenticationDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationDtoFromJson(json);
}

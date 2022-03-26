// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationDto _$$_AuthenticationDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthenticationDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      tokens: Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthenticationDtoToJson(
        _$_AuthenticationDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
    };

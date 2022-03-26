// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenDetails _$$_TokenDetailsFromJson(Map<String, dynamic> json) =>
    _$_TokenDetails(
      token: json['token'] as String,
      expires: DateTime.parse(json['expires'] as String),
    );

Map<String, dynamic> _$$_TokenDetailsToJson(_$_TokenDetails instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires.toIso8601String(),
    };

_$_Tokens _$$_TokensFromJson(Map<String, dynamic> json) => _$_Tokens(
      access: TokenDetails.fromJson(json['access'] as Map<String, dynamic>),
      refresh: TokenDetails.fromJson(json['refresh'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokensToJson(_$_Tokens instance) => <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

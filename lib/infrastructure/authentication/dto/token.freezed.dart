// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenDetails _$TokenDetailsFromJson(Map<String, dynamic> json) {
  return _TokenDetails.fromJson(json);
}

/// @nodoc
class _$TokenDetailsTearOff {
  const _$TokenDetailsTearOff();

  _TokenDetails call({required String token, required DateTime expires}) {
    return _TokenDetails(
      token: token,
      expires: expires,
    );
  }

  TokenDetails fromJson(Map<String, Object?> json) {
    return TokenDetails.fromJson(json);
  }
}

/// @nodoc
const $TokenDetails = _$TokenDetailsTearOff();

/// @nodoc
mixin _$TokenDetails {
  String get token => throw _privateConstructorUsedError;
  DateTime get expires => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDetailsCopyWith<TokenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDetailsCopyWith<$Res> {
  factory $TokenDetailsCopyWith(
          TokenDetails value, $Res Function(TokenDetails) then) =
      _$TokenDetailsCopyWithImpl<$Res>;
  $Res call({String token, DateTime expires});
}

/// @nodoc
class _$TokenDetailsCopyWithImpl<$Res> implements $TokenDetailsCopyWith<$Res> {
  _$TokenDetailsCopyWithImpl(this._value, this._then);

  final TokenDetails _value;
  // ignore: unused_field
  final $Res Function(TokenDetails) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? expires = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TokenDetailsCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$TokenDetailsCopyWith(
          _TokenDetails value, $Res Function(_TokenDetails) then) =
      __$TokenDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String token, DateTime expires});
}

/// @nodoc
class __$TokenDetailsCopyWithImpl<$Res> extends _$TokenDetailsCopyWithImpl<$Res>
    implements _$TokenDetailsCopyWith<$Res> {
  __$TokenDetailsCopyWithImpl(
      _TokenDetails _value, $Res Function(_TokenDetails) _then)
      : super(_value, (v) => _then(v as _TokenDetails));

  @override
  _TokenDetails get _value => super._value as _TokenDetails;

  @override
  $Res call({
    Object? token = freezed,
    Object? expires = freezed,
  }) {
    return _then(_TokenDetails(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenDetails implements _TokenDetails {
  const _$_TokenDetails({required this.token, required this.expires});

  factory _$_TokenDetails.fromJson(Map<String, dynamic> json) =>
      _$$_TokenDetailsFromJson(json);

  @override
  final String token;
  @override
  final DateTime expires;

  @override
  String toString() {
    return 'TokenDetails(token: $token, expires: $expires)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenDetails &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.expires, expires));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(expires));

  @JsonKey(ignore: true)
  @override
  _$TokenDetailsCopyWith<_TokenDetails> get copyWith =>
      __$TokenDetailsCopyWithImpl<_TokenDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenDetailsToJson(this);
  }
}

abstract class _TokenDetails implements TokenDetails {
  const factory _TokenDetails(
      {required String token, required DateTime expires}) = _$_TokenDetails;

  factory _TokenDetails.fromJson(Map<String, dynamic> json) =
      _$_TokenDetails.fromJson;

  @override
  String get token;
  @override
  DateTime get expires;
  @override
  @JsonKey(ignore: true)
  _$TokenDetailsCopyWith<_TokenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Tokens _$TokensFromJson(Map<String, dynamic> json) {
  return _Tokens.fromJson(json);
}

/// @nodoc
class _$TokensTearOff {
  const _$TokensTearOff();

  _Tokens call({required TokenDetails access, required TokenDetails refresh}) {
    return _Tokens(
      access: access,
      refresh: refresh,
    );
  }

  Tokens fromJson(Map<String, Object?> json) {
    return Tokens.fromJson(json);
  }
}

/// @nodoc
const $Tokens = _$TokensTearOff();

/// @nodoc
mixin _$Tokens {
  TokenDetails get access => throw _privateConstructorUsedError;
  TokenDetails get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokensCopyWith<Tokens> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensCopyWith<$Res> {
  factory $TokensCopyWith(Tokens value, $Res Function(Tokens) then) =
      _$TokensCopyWithImpl<$Res>;
  $Res call({TokenDetails access, TokenDetails refresh});

  $TokenDetailsCopyWith<$Res> get access;
  $TokenDetailsCopyWith<$Res> get refresh;
}

/// @nodoc
class _$TokensCopyWithImpl<$Res> implements $TokensCopyWith<$Res> {
  _$TokensCopyWithImpl(this._value, this._then);

  final Tokens _value;
  // ignore: unused_field
  final $Res Function(Tokens) _then;

  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as TokenDetails,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as TokenDetails,
    ));
  }

  @override
  $TokenDetailsCopyWith<$Res> get access {
    return $TokenDetailsCopyWith<$Res>(_value.access, (value) {
      return _then(_value.copyWith(access: value));
    });
  }

  @override
  $TokenDetailsCopyWith<$Res> get refresh {
    return $TokenDetailsCopyWith<$Res>(_value.refresh, (value) {
      return _then(_value.copyWith(refresh: value));
    });
  }
}

/// @nodoc
abstract class _$TokensCopyWith<$Res> implements $TokensCopyWith<$Res> {
  factory _$TokensCopyWith(_Tokens value, $Res Function(_Tokens) then) =
      __$TokensCopyWithImpl<$Res>;
  @override
  $Res call({TokenDetails access, TokenDetails refresh});

  @override
  $TokenDetailsCopyWith<$Res> get access;
  @override
  $TokenDetailsCopyWith<$Res> get refresh;
}

/// @nodoc
class __$TokensCopyWithImpl<$Res> extends _$TokensCopyWithImpl<$Res>
    implements _$TokensCopyWith<$Res> {
  __$TokensCopyWithImpl(_Tokens _value, $Res Function(_Tokens) _then)
      : super(_value, (v) => _then(v as _Tokens));

  @override
  _Tokens get _value => super._value as _Tokens;

  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_Tokens(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as TokenDetails,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as TokenDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tokens implements _Tokens {
  const _$_Tokens({required this.access, required this.refresh});

  factory _$_Tokens.fromJson(Map<String, dynamic> json) =>
      _$$_TokensFromJson(json);

  @override
  final TokenDetails access;
  @override
  final TokenDetails refresh;

  @override
  String toString() {
    return 'Tokens(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tokens &&
            const DeepCollectionEquality().equals(other.access, access) &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(access),
      const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  _$TokensCopyWith<_Tokens> get copyWith =>
      __$TokensCopyWithImpl<_Tokens>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokensToJson(this);
  }
}

abstract class _Tokens implements Tokens {
  const factory _Tokens(
      {required TokenDetails access,
      required TokenDetails refresh}) = _$_Tokens;

  factory _Tokens.fromJson(Map<String, dynamic> json) = _$_Tokens.fromJson;

  @override
  TokenDetails get access;
  @override
  TokenDetails get refresh;
  @override
  @JsonKey(ignore: true)
  _$TokensCopyWith<_Tokens> get copyWith => throw _privateConstructorUsedError;
}

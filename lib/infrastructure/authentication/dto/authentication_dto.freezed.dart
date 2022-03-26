// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationDto _$AuthenticationDtoFromJson(Map<String, dynamic> json) {
  return _AuthenticationDto.fromJson(json);
}

/// @nodoc
class _$AuthenticationDtoTearOff {
  const _$AuthenticationDtoTearOff();

  _AuthenticationDto call({required UserDto user, required Tokens tokens}) {
    return _AuthenticationDto(
      user: user,
      tokens: tokens,
    );
  }

  AuthenticationDto fromJson(Map<String, Object?> json) {
    return AuthenticationDto.fromJson(json);
  }
}

/// @nodoc
const $AuthenticationDto = _$AuthenticationDtoTearOff();

/// @nodoc
mixin _$AuthenticationDto {
  UserDto get user => throw _privateConstructorUsedError;
  Tokens get tokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationDtoCopyWith<AuthenticationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationDtoCopyWith<$Res> {
  factory $AuthenticationDtoCopyWith(
          AuthenticationDto value, $Res Function(AuthenticationDto) then) =
      _$AuthenticationDtoCopyWithImpl<$Res>;
  $Res call({UserDto user, Tokens tokens});

  $UserDtoCopyWith<$Res> get user;
  $TokensCopyWith<$Res> get tokens;
}

/// @nodoc
class _$AuthenticationDtoCopyWithImpl<$Res>
    implements $AuthenticationDtoCopyWith<$Res> {
  _$AuthenticationDtoCopyWithImpl(this._value, this._then);

  final AuthenticationDto _value;
  // ignore: unused_field
  final $Res Function(AuthenticationDto) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $TokensCopyWith<$Res> get tokens {
    return $TokensCopyWith<$Res>(_value.tokens, (value) {
      return _then(_value.copyWith(tokens: value));
    });
  }
}

/// @nodoc
abstract class _$AuthenticationDtoCopyWith<$Res>
    implements $AuthenticationDtoCopyWith<$Res> {
  factory _$AuthenticationDtoCopyWith(
          _AuthenticationDto value, $Res Function(_AuthenticationDto) then) =
      __$AuthenticationDtoCopyWithImpl<$Res>;
  @override
  $Res call({UserDto user, Tokens tokens});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $TokensCopyWith<$Res> get tokens;
}

/// @nodoc
class __$AuthenticationDtoCopyWithImpl<$Res>
    extends _$AuthenticationDtoCopyWithImpl<$Res>
    implements _$AuthenticationDtoCopyWith<$Res> {
  __$AuthenticationDtoCopyWithImpl(
      _AuthenticationDto _value, $Res Function(_AuthenticationDto) _then)
      : super(_value, (v) => _then(v as _AuthenticationDto));

  @override
  _AuthenticationDto get _value => super._value as _AuthenticationDto;

  @override
  $Res call({
    Object? user = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_AuthenticationDto(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationDto implements _AuthenticationDto {
  const _$_AuthenticationDto({required this.user, required this.tokens});

  factory _$_AuthenticationDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationDtoFromJson(json);

  @override
  final UserDto user;
  @override
  final Tokens tokens;

  @override
  String toString() {
    return 'AuthenticationDto(user: $user, tokens: $tokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticationDto &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.tokens, tokens));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(tokens));

  @JsonKey(ignore: true)
  @override
  _$AuthenticationDtoCopyWith<_AuthenticationDto> get copyWith =>
      __$AuthenticationDtoCopyWithImpl<_AuthenticationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationDtoToJson(this);
  }
}

abstract class _AuthenticationDto implements AuthenticationDto {
  const factory _AuthenticationDto(
      {required UserDto user, required Tokens tokens}) = _$_AuthenticationDto;

  factory _AuthenticationDto.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationDto.fromJson;

  @override
  UserDto get user;
  @override
  Tokens get tokens;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationDtoCopyWith<_AuthenticationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

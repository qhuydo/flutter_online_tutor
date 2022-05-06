// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoDto _$UserInfoDtoFromJson(Map<String, dynamic> json) {
  return _UserInfoDto.fromJson(json);
}

/// @nodoc
class _$UserInfoDtoTearOff {
  const _$UserInfoDtoTearOff();

  _UserInfoDto call({required String id, String name = ''}) {
    return _UserInfoDto(
      id: id,
      name: name,
    );
  }

  UserInfoDto fromJson(Map<String, Object?> json) {
    return UserInfoDto.fromJson(json);
  }
}

/// @nodoc
const $UserInfoDto = _$UserInfoDtoTearOff();

/// @nodoc
mixin _$UserInfoDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoDtoCopyWith<UserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDtoCopyWith<$Res> {
  factory $UserInfoDtoCopyWith(
          UserInfoDto value, $Res Function(UserInfoDto) then) =
      _$UserInfoDtoCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$UserInfoDtoCopyWithImpl<$Res> implements $UserInfoDtoCopyWith<$Res> {
  _$UserInfoDtoCopyWithImpl(this._value, this._then);

  final UserInfoDto _value;
  // ignore: unused_field
  final $Res Function(UserInfoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserInfoDtoCopyWith<$Res>
    implements $UserInfoDtoCopyWith<$Res> {
  factory _$UserInfoDtoCopyWith(
          _UserInfoDto value, $Res Function(_UserInfoDto) then) =
      __$UserInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$UserInfoDtoCopyWithImpl<$Res> extends _$UserInfoDtoCopyWithImpl<$Res>
    implements _$UserInfoDtoCopyWith<$Res> {
  __$UserInfoDtoCopyWithImpl(
      _UserInfoDto _value, $Res Function(_UserInfoDto) _then)
      : super(_value, (v) => _then(v as _UserInfoDto));

  @override
  _UserInfoDto get _value => super._value as _UserInfoDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_UserInfoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoDto extends _UserInfoDto {
  const _$_UserInfoDto({required this.id, this.name = ''}) : super._();

  factory _$_UserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoDtoFromJson(json);

  @override
  final String id;
  @JsonKey()
  @override
  final String name;

  @override
  String toString() {
    return 'UserInfoDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfoDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$UserInfoDtoCopyWith<_UserInfoDto> get copyWith =>
      __$UserInfoDtoCopyWithImpl<_UserInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoDtoToJson(this);
  }
}

abstract class _UserInfoDto extends UserInfoDto {
  const factory _UserInfoDto({required String id, String name}) =
      _$_UserInfoDto;
  const _UserInfoDto._() : super._();

  factory _UserInfoDto.fromJson(Map<String, dynamic> json) =
      _$_UserInfoDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$UserInfoDtoCopyWith<_UserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

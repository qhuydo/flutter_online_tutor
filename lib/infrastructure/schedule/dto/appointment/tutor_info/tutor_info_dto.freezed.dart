// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TutorInfoDto _$TutorInfoDtoFromJson(Map<String, dynamic> json) {
  return _TutorInfoDto.fromJson(json);
}

/// @nodoc
class _$TutorInfoDtoTearOff {
  const _$TutorInfoDtoTearOff();

  _TutorInfoDto call(
      {required String id,
      String? avatar,
      required String name,
      required String country,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _TutorInfoDto(
      id: id,
      avatar: avatar,
      name: name,
      country: country,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  TutorInfoDto fromJson(Map<String, Object?> json) {
    return TutorInfoDto.fromJson(json);
  }
}

/// @nodoc
const $TutorInfoDto = _$TutorInfoDtoTearOff();

/// @nodoc
mixin _$TutorInfoDto {
  String get id => throw _privateConstructorUsedError; // String level,
// String email,
// dynamic google,
// dynamic facebook,
// dynamic apple,
  String? get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError; // String phone,
// dynamic language,
// DateTime birthday,
// bool requestPassword,
// bool isActivated,
// dynamic isPhoneActivated,
// dynamic requireNote,
// int timezone,
// dynamic phoneAuth,
// bool isPhoneAuthActivated,
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorInfoDtoCopyWith<TutorInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorInfoDtoCopyWith<$Res> {
  factory $TutorInfoDtoCopyWith(
          TutorInfoDto value, $Res Function(TutorInfoDto) then) =
      _$TutorInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? avatar,
      String name,
      String country,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TutorInfoDtoCopyWithImpl<$Res> implements $TutorInfoDtoCopyWith<$Res> {
  _$TutorInfoDtoCopyWithImpl(this._value, this._then);

  final TutorInfoDto _value;
  // ignore: unused_field
  final $Res Function(TutorInfoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TutorInfoDtoCopyWith<$Res>
    implements $TutorInfoDtoCopyWith<$Res> {
  factory _$TutorInfoDtoCopyWith(
          _TutorInfoDto value, $Res Function(_TutorInfoDto) then) =
      __$TutorInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? avatar,
      String name,
      String country,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$TutorInfoDtoCopyWithImpl<$Res> extends _$TutorInfoDtoCopyWithImpl<$Res>
    implements _$TutorInfoDtoCopyWith<$Res> {
  __$TutorInfoDtoCopyWithImpl(
      _TutorInfoDto _value, $Res Function(_TutorInfoDto) _then)
      : super(_value, (v) => _then(v as _TutorInfoDto));

  @override
  _TutorInfoDto get _value => super._value as _TutorInfoDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_TutorInfoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorInfoDto implements _TutorInfoDto {
  const _$_TutorInfoDto(
      {required this.id,
      this.avatar,
      required this.name,
      required this.country,
      required this.createdAt,
      required this.updatedAt});

  factory _$_TutorInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_TutorInfoDtoFromJson(json);

  @override
  final String id;
  @override // String level,
// String email,
// dynamic google,
// dynamic facebook,
// dynamic apple,
  final String? avatar;
  @override
  final String name;
  @override
  final String country;
  @override // String phone,
// dynamic language,
// DateTime birthday,
// bool requestPassword,
// bool isActivated,
// dynamic isPhoneActivated,
// dynamic requireNote,
// int timezone,
// dynamic phoneAuth,
// bool isPhoneAuthActivated,
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TutorInfoDto(id: $id, avatar: $avatar, name: $name, country: $country, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TutorInfoDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$TutorInfoDtoCopyWith<_TutorInfoDto> get copyWith =>
      __$TutorInfoDtoCopyWithImpl<_TutorInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorInfoDtoToJson(this);
  }
}

abstract class _TutorInfoDto implements TutorInfoDto {
  const factory _TutorInfoDto(
      {required String id,
      String? avatar,
      required String name,
      required String country,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_TutorInfoDto;

  factory _TutorInfoDto.fromJson(Map<String, dynamic> json) =
      _$_TutorInfoDto.fromJson;

  @override
  String get id;
  @override // String level,
// String email,
// dynamic google,
// dynamic facebook,
// dynamic apple,
  String? get avatar;
  @override
  String get name;
  @override
  String get country;
  @override // String phone,
// dynamic language,
// DateTime birthday,
// bool requestPassword,
// bool isActivated,
// dynamic isPhoneActivated,
// dynamic requireNote,
// int timezone,
// dynamic phoneAuth,
// bool isPhoneAuthActivated,
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TutorInfoDtoCopyWith<_TutorInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

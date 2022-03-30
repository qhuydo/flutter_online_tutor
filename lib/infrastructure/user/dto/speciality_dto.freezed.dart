// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'speciality_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialityDto _$SpecialityDtoFromJson(Map<String, dynamic> json) {
  return _SpecialityDto.fromJson(json);
}

/// @nodoc
class _$SpecialityDtoTearOff {
  const _$SpecialityDtoTearOff();

  _SpecialityDto call(
      {required int id, required String key, required String name}) {
    return _SpecialityDto(
      id: id,
      key: key,
      name: name,
    );
  }

  SpecialityDto fromJson(Map<String, Object?> json) {
    return SpecialityDto.fromJson(json);
  }
}

/// @nodoc
const $SpecialityDto = _$SpecialityDtoTearOff();

/// @nodoc
mixin _$SpecialityDto {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialityDtoCopyWith<SpecialityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialityDtoCopyWith<$Res> {
  factory $SpecialityDtoCopyWith(
          SpecialityDto value, $Res Function(SpecialityDto) then) =
      _$SpecialityDtoCopyWithImpl<$Res>;
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$SpecialityDtoCopyWithImpl<$Res>
    implements $SpecialityDtoCopyWith<$Res> {
  _$SpecialityDtoCopyWithImpl(this._value, this._then);

  final SpecialityDto _value;
  // ignore: unused_field
  final $Res Function(SpecialityDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SpecialityDtoCopyWith<$Res>
    implements $SpecialityDtoCopyWith<$Res> {
  factory _$SpecialityDtoCopyWith(
          _SpecialityDto value, $Res Function(_SpecialityDto) then) =
      __$SpecialityDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$SpecialityDtoCopyWithImpl<$Res>
    extends _$SpecialityDtoCopyWithImpl<$Res>
    implements _$SpecialityDtoCopyWith<$Res> {
  __$SpecialityDtoCopyWithImpl(
      _SpecialityDto _value, $Res Function(_SpecialityDto) _then)
      : super(_value, (v) => _then(v as _SpecialityDto));

  @override
  _SpecialityDto get _value => super._value as _SpecialityDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_SpecialityDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
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
class _$_SpecialityDto extends _SpecialityDto {
  const _$_SpecialityDto(
      {required this.id, required this.key, required this.name})
      : super._();

  factory _$_SpecialityDto.fromJson(Map<String, dynamic> json) =>
      _$$_SpecialityDtoFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'SpecialityDto(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpecialityDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$SpecialityDtoCopyWith<_SpecialityDto> get copyWith =>
      __$SpecialityDtoCopyWithImpl<_SpecialityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecialityDtoToJson(this);
  }
}

abstract class _SpecialityDto extends SpecialityDto {
  const factory _SpecialityDto(
      {required int id,
      required String key,
      required String name}) = _$_SpecialityDto;
  const _SpecialityDto._() : super._();

  factory _SpecialityDto.fromJson(Map<String, dynamic> json) =
      _$_SpecialityDto.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$SpecialityDtoCopyWith<_SpecialityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

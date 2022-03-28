// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_preparation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestPreparationDto _$TestPreparationDtoFromJson(Map<String, dynamic> json) {
  return _TestPreparationDto.fromJson(json);
}

/// @nodoc
class _$TestPreparationDtoTearOff {
  const _$TestPreparationDtoTearOff();

  _TestPreparationDto call(
      {required int id, required String key, required String name}) {
    return _TestPreparationDto(
      id: id,
      key: key,
      name: name,
    );
  }

  TestPreparationDto fromJson(Map<String, Object?> json) {
    return TestPreparationDto.fromJson(json);
  }
}

/// @nodoc
const $TestPreparationDto = _$TestPreparationDtoTearOff();

/// @nodoc
mixin _$TestPreparationDto {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestPreparationDtoCopyWith<TestPreparationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestPreparationDtoCopyWith<$Res> {
  factory $TestPreparationDtoCopyWith(
          TestPreparationDto value, $Res Function(TestPreparationDto) then) =
      _$TestPreparationDtoCopyWithImpl<$Res>;
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$TestPreparationDtoCopyWithImpl<$Res>
    implements $TestPreparationDtoCopyWith<$Res> {
  _$TestPreparationDtoCopyWithImpl(this._value, this._then);

  final TestPreparationDto _value;
  // ignore: unused_field
  final $Res Function(TestPreparationDto) _then;

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
abstract class _$TestPreparationDtoCopyWith<$Res>
    implements $TestPreparationDtoCopyWith<$Res> {
  factory _$TestPreparationDtoCopyWith(
          _TestPreparationDto value, $Res Function(_TestPreparationDto) then) =
      __$TestPreparationDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$TestPreparationDtoCopyWithImpl<$Res>
    extends _$TestPreparationDtoCopyWithImpl<$Res>
    implements _$TestPreparationDtoCopyWith<$Res> {
  __$TestPreparationDtoCopyWithImpl(
      _TestPreparationDto _value, $Res Function(_TestPreparationDto) _then)
      : super(_value, (v) => _then(v as _TestPreparationDto));

  @override
  _TestPreparationDto get _value => super._value as _TestPreparationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_TestPreparationDto(
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
class _$_TestPreparationDto extends _TestPreparationDto {
  const _$_TestPreparationDto(
      {required this.id, required this.key, required this.name})
      : super._();

  factory _$_TestPreparationDto.fromJson(Map<String, dynamic> json) =>
      _$$_TestPreparationDtoFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'TestPreparationDto(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestPreparationDto &&
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
  _$TestPreparationDtoCopyWith<_TestPreparationDto> get copyWith =>
      __$TestPreparationDtoCopyWithImpl<_TestPreparationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestPreparationDtoToJson(this);
  }
}

abstract class _TestPreparationDto extends TestPreparationDto {
  const factory _TestPreparationDto(
      {required int id,
      required String key,
      required String name}) = _$_TestPreparationDto;
  const _TestPreparationDto._() : super._();

  factory _TestPreparationDto.fromJson(Map<String, dynamic> json) =
      _$_TestPreparationDto.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$TestPreparationDtoCopyWith<_TestPreparationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

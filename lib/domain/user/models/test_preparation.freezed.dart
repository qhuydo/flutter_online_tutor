// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_preparation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TestPreparationTearOff {
  const _$TestPreparationTearOff();

  _TestPreparation call(
      {required int id, required String key, required String name}) {
    return _TestPreparation(
      id: id,
      key: key,
      name: name,
    );
  }
}

/// @nodoc
const $TestPreparation = _$TestPreparationTearOff();

/// @nodoc
mixin _$TestPreparation {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestPreparationCopyWith<TestPreparation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestPreparationCopyWith<$Res> {
  factory $TestPreparationCopyWith(
          TestPreparation value, $Res Function(TestPreparation) then) =
      _$TestPreparationCopyWithImpl<$Res>;
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$TestPreparationCopyWithImpl<$Res>
    implements $TestPreparationCopyWith<$Res> {
  _$TestPreparationCopyWithImpl(this._value, this._then);

  final TestPreparation _value;
  // ignore: unused_field
  final $Res Function(TestPreparation) _then;

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
abstract class _$TestPreparationCopyWith<$Res>
    implements $TestPreparationCopyWith<$Res> {
  factory _$TestPreparationCopyWith(
          _TestPreparation value, $Res Function(_TestPreparation) then) =
      __$TestPreparationCopyWithImpl<$Res>;
  @override
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$TestPreparationCopyWithImpl<$Res>
    extends _$TestPreparationCopyWithImpl<$Res>
    implements _$TestPreparationCopyWith<$Res> {
  __$TestPreparationCopyWithImpl(
      _TestPreparation _value, $Res Function(_TestPreparation) _then)
      : super(_value, (v) => _then(v as _TestPreparation));

  @override
  _TestPreparation get _value => super._value as _TestPreparation;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_TestPreparation(
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

class _$_TestPreparation implements _TestPreparation {
  const _$_TestPreparation(
      {required this.id, required this.key, required this.name});

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'TestPreparation(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestPreparation &&
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
  _$TestPreparationCopyWith<_TestPreparation> get copyWith =>
      __$TestPreparationCopyWithImpl<_TestPreparation>(this, _$identity);
}

abstract class _TestPreparation implements TestPreparation {
  const factory _TestPreparation(
      {required int id,
      required String key,
      required String name}) = _$_TestPreparation;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$TestPreparationCopyWith<_TestPreparation> get copyWith =>
      throw _privateConstructorUsedError;
}

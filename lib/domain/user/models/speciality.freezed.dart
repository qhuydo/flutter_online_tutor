// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'speciality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpecialityTearOff {
  const _$SpecialityTearOff();

  _Speciality call(
      {required int id, required String key, required String name}) {
    return _Speciality(
      id: id,
      key: key,
      name: name,
    );
  }
}

/// @nodoc
const $Speciality = _$SpecialityTearOff();

/// @nodoc
mixin _$Speciality {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpecialityCopyWith<Speciality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialityCopyWith<$Res> {
  factory $SpecialityCopyWith(
          Speciality value, $Res Function(Speciality) then) =
      _$SpecialityCopyWithImpl<$Res>;
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$SpecialityCopyWithImpl<$Res> implements $SpecialityCopyWith<$Res> {
  _$SpecialityCopyWithImpl(this._value, this._then);

  final Speciality _value;
  // ignore: unused_field
  final $Res Function(Speciality) _then;

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
abstract class _$SpecialityCopyWith<$Res> implements $SpecialityCopyWith<$Res> {
  factory _$SpecialityCopyWith(
          _Speciality value, $Res Function(_Speciality) then) =
      __$SpecialityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$SpecialityCopyWithImpl<$Res> extends _$SpecialityCopyWithImpl<$Res>
    implements _$SpecialityCopyWith<$Res> {
  __$SpecialityCopyWithImpl(
      _Speciality _value, $Res Function(_Speciality) _then)
      : super(_value, (v) => _then(v as _Speciality));

  @override
  _Speciality get _value => super._value as _Speciality;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_Speciality(
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

class _$_Speciality implements _Speciality {
  const _$_Speciality(
      {required this.id, required this.key, required this.name});

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'Speciality(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Speciality &&
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
  _$SpecialityCopyWith<_Speciality> get copyWith =>
      __$SpecialityCopyWithImpl<_Speciality>(this, _$identity);
}

abstract class _Speciality implements Speciality {
  const factory _Speciality(
      {required int id,
      required String key,
      required String name}) = _$_Speciality;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$SpecialityCopyWith<_Speciality> get copyWith =>
      throw _privateConstructorUsedError;
}

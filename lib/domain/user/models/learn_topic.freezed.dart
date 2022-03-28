// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learn_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LearnTopicTearOff {
  const _$LearnTopicTearOff();

  _LearnTopic call(
      {required int id, required String key, required String name}) {
    return _LearnTopic(
      id: id,
      key: key,
      name: name,
    );
  }
}

/// @nodoc
const $LearnTopic = _$LearnTopicTearOff();

/// @nodoc
mixin _$LearnTopic {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearnTopicCopyWith<LearnTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearnTopicCopyWith<$Res> {
  factory $LearnTopicCopyWith(
          LearnTopic value, $Res Function(LearnTopic) then) =
      _$LearnTopicCopyWithImpl<$Res>;
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$LearnTopicCopyWithImpl<$Res> implements $LearnTopicCopyWith<$Res> {
  _$LearnTopicCopyWithImpl(this._value, this._then);

  final LearnTopic _value;
  // ignore: unused_field
  final $Res Function(LearnTopic) _then;

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
abstract class _$LearnTopicCopyWith<$Res> implements $LearnTopicCopyWith<$Res> {
  factory _$LearnTopicCopyWith(
          _LearnTopic value, $Res Function(_LearnTopic) then) =
      __$LearnTopicCopyWithImpl<$Res>;
  @override
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$LearnTopicCopyWithImpl<$Res> extends _$LearnTopicCopyWithImpl<$Res>
    implements _$LearnTopicCopyWith<$Res> {
  __$LearnTopicCopyWithImpl(
      _LearnTopic _value, $Res Function(_LearnTopic) _then)
      : super(_value, (v) => _then(v as _LearnTopic));

  @override
  _LearnTopic get _value => super._value as _LearnTopic;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_LearnTopic(
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

class _$_LearnTopic implements _LearnTopic {
  const _$_LearnTopic(
      {required this.id, required this.key, required this.name});

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'LearnTopic(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LearnTopic &&
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
  _$LearnTopicCopyWith<_LearnTopic> get copyWith =>
      __$LearnTopicCopyWithImpl<_LearnTopic>(this, _$identity);
}

abstract class _LearnTopic implements LearnTopic {
  const factory _LearnTopic(
      {required int id,
      required String key,
      required String name}) = _$_LearnTopic;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$LearnTopicCopyWith<_LearnTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

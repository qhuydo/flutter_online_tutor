// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_topic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningTopicDto _$LearningTopicDtoFromJson(Map<String, dynamic> json) {
  return _LearningTopicDto.fromJson(json);
}

/// @nodoc
class _$LearningTopicDtoTearOff {
  const _$LearningTopicDtoTearOff();

  _LearningTopicDto call(
      {required int id, required String key, required String name}) {
    return _LearningTopicDto(
      id: id,
      key: key,
      name: name,
    );
  }

  LearningTopicDto fromJson(Map<String, Object?> json) {
    return LearningTopicDto.fromJson(json);
  }
}

/// @nodoc
const $LearningTopicDto = _$LearningTopicDtoTearOff();

/// @nodoc
mixin _$LearningTopicDto {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningTopicDtoCopyWith<LearningTopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningTopicDtoCopyWith<$Res> {
  factory $LearningTopicDtoCopyWith(
          LearningTopicDto value, $Res Function(LearningTopicDto) then) =
      _$LearningTopicDtoCopyWithImpl<$Res>;
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$LearningTopicDtoCopyWithImpl<$Res>
    implements $LearningTopicDtoCopyWith<$Res> {
  _$LearningTopicDtoCopyWithImpl(this._value, this._then);

  final LearningTopicDto _value;
  // ignore: unused_field
  final $Res Function(LearningTopicDto) _then;

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
abstract class _$LearningTopicDtoCopyWith<$Res>
    implements $LearningTopicDtoCopyWith<$Res> {
  factory _$LearningTopicDtoCopyWith(
          _LearningTopicDto value, $Res Function(_LearningTopicDto) then) =
      __$LearningTopicDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$LearningTopicDtoCopyWithImpl<$Res>
    extends _$LearningTopicDtoCopyWithImpl<$Res>
    implements _$LearningTopicDtoCopyWith<$Res> {
  __$LearningTopicDtoCopyWithImpl(
      _LearningTopicDto _value, $Res Function(_LearningTopicDto) _then)
      : super(_value, (v) => _then(v as _LearningTopicDto));

  @override
  _LearningTopicDto get _value => super._value as _LearningTopicDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_LearningTopicDto(
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
class _$_LearningTopicDto extends _LearningTopicDto {
  const _$_LearningTopicDto(
      {required this.id, required this.key, required this.name})
      : super._();

  factory _$_LearningTopicDto.fromJson(Map<String, dynamic> json) =>
      _$$_LearningTopicDtoFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'LearningTopicDto(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LearningTopicDto &&
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
  _$LearningTopicDtoCopyWith<_LearningTopicDto> get copyWith =>
      __$LearningTopicDtoCopyWithImpl<_LearningTopicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningTopicDtoToJson(this);
  }
}

abstract class _LearningTopicDto extends LearningTopicDto {
  const factory _LearningTopicDto(
      {required int id,
      required String key,
      required String name}) = _$_LearningTopicDto;
  const _LearningTopicDto._() : super._();

  factory _LearningTopicDto.fromJson(Map<String, dynamic> json) =
      _$_LearningTopicDto.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$LearningTopicDtoCopyWith<_LearningTopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}
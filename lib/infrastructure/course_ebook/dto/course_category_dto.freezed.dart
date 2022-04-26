// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseCategoryDto _$CourseCategoryDtoFromJson(Map<String, dynamic> json) {
  return _CourseCategoryDto.fromJson(json);
}

/// @nodoc
class _$CourseCategoryDtoTearOff {
  const _$CourseCategoryDtoTearOff();

  _CourseCategoryDto call(
      {required String id,
      required String title,
      String? description,
      required String key,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _CourseCategoryDto(
      id: id,
      title: title,
      description: description,
      key: key,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  CourseCategoryDto fromJson(Map<String, Object?> json) {
    return CourseCategoryDto.fromJson(json);
  }
}

/// @nodoc
const $CourseCategoryDto = _$CourseCategoryDtoTearOff();

/// @nodoc
mixin _$CourseCategoryDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCategoryDtoCopyWith<CourseCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCategoryDtoCopyWith<$Res> {
  factory $CourseCategoryDtoCopyWith(
          CourseCategoryDto value, $Res Function(CourseCategoryDto) then) =
      _$CourseCategoryDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String? description,
      String key,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$CourseCategoryDtoCopyWithImpl<$Res>
    implements $CourseCategoryDtoCopyWith<$Res> {
  _$CourseCategoryDtoCopyWithImpl(this._value, this._then);

  final CourseCategoryDto _value;
  // ignore: unused_field
  final $Res Function(CourseCategoryDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? key = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
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
abstract class _$CourseCategoryDtoCopyWith<$Res>
    implements $CourseCategoryDtoCopyWith<$Res> {
  factory _$CourseCategoryDtoCopyWith(
          _CourseCategoryDto value, $Res Function(_CourseCategoryDto) then) =
      __$CourseCategoryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String? description,
      String key,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$CourseCategoryDtoCopyWithImpl<$Res>
    extends _$CourseCategoryDtoCopyWithImpl<$Res>
    implements _$CourseCategoryDtoCopyWith<$Res> {
  __$CourseCategoryDtoCopyWithImpl(
      _CourseCategoryDto _value, $Res Function(_CourseCategoryDto) _then)
      : super(_value, (v) => _then(v as _CourseCategoryDto));

  @override
  _CourseCategoryDto get _value => super._value as _CourseCategoryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? key = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_CourseCategoryDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
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
class _$_CourseCategoryDto implements _CourseCategoryDto {
  const _$_CourseCategoryDto(
      {required this.id,
      required this.title,
      this.description,
      required this.key,
      required this.createdAt,
      required this.updatedAt});

  factory _$_CourseCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CourseCategoryDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String key;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CourseCategoryDto(id: $id, title: $title, description: $description, key: $key, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseCategoryDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$CourseCategoryDtoCopyWith<_CourseCategoryDto> get copyWith =>
      __$CourseCategoryDtoCopyWithImpl<_CourseCategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseCategoryDtoToJson(this);
  }
}

abstract class _CourseCategoryDto implements CourseCategoryDto {
  const factory _CourseCategoryDto(
      {required String id,
      required String title,
      String? description,
      required String key,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_CourseCategoryDto;

  factory _CourseCategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CourseCategoryDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get key;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$CourseCategoryDtoCopyWith<_CourseCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

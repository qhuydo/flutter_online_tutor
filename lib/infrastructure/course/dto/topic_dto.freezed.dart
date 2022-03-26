// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'topic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicDto _$TopicDtoFromJson(Map<String, dynamic> json) {
  return _TopicDto.fromJson(json);
}

/// @nodoc
class _$TopicDtoTearOff {
  const _$TopicDtoTearOff();

  _TopicDto call(
      {required String id,
      required String courseId,
      required int orderCourse,
      required String name,
      required String nameFile,
      required String description,
      required String videoUrl,
      required String createdAt,
      required String updatedAt}) {
    return _TopicDto(
      id: id,
      courseId: courseId,
      orderCourse: orderCourse,
      name: name,
      nameFile: nameFile,
      description: description,
      videoUrl: videoUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  TopicDto fromJson(Map<String, Object?> json) {
    return TopicDto.fromJson(json);
  }
}

/// @nodoc
const $TopicDto = _$TopicDtoTearOff();

/// @nodoc
mixin _$TopicDto {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  int get orderCourse => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nameFile => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicDtoCopyWith<TopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicDtoCopyWith<$Res> {
  factory $TopicDtoCopyWith(TopicDto value, $Res Function(TopicDto) then) =
      _$TopicDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String courseId,
      int orderCourse,
      String name,
      String nameFile,
      String description,
      String videoUrl,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$TopicDtoCopyWithImpl<$Res> implements $TopicDtoCopyWith<$Res> {
  _$TopicDtoCopyWithImpl(this._value, this._then);

  final TopicDto _value;
  // ignore: unused_field
  final $Res Function(TopicDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? courseId = freezed,
    Object? orderCourse = freezed,
    Object? name = freezed,
    Object? nameFile = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCourse: orderCourse == freezed
          ? _value.orderCourse
          : orderCourse // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TopicDtoCopyWith<$Res> implements $TopicDtoCopyWith<$Res> {
  factory _$TopicDtoCopyWith(_TopicDto value, $Res Function(_TopicDto) then) =
      __$TopicDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String courseId,
      int orderCourse,
      String name,
      String nameFile,
      String description,
      String videoUrl,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$TopicDtoCopyWithImpl<$Res> extends _$TopicDtoCopyWithImpl<$Res>
    implements _$TopicDtoCopyWith<$Res> {
  __$TopicDtoCopyWithImpl(_TopicDto _value, $Res Function(_TopicDto) _then)
      : super(_value, (v) => _then(v as _TopicDto));

  @override
  _TopicDto get _value => super._value as _TopicDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? courseId = freezed,
    Object? orderCourse = freezed,
    Object? name = freezed,
    Object? nameFile = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_TopicDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCourse: orderCourse == freezed
          ? _value.orderCourse
          : orderCourse // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopicDto implements _TopicDto {
  const _$_TopicDto(
      {required this.id,
      required this.courseId,
      required this.orderCourse,
      required this.name,
      required this.nameFile,
      required this.description,
      required this.videoUrl,
      required this.createdAt,
      required this.updatedAt});

  factory _$_TopicDto.fromJson(Map<String, dynamic> json) =>
      _$$_TopicDtoFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final int orderCourse;
  @override
  final String name;
  @override
  final String nameFile;
  @override
  final String description;
  @override
  final String videoUrl;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'TopicDto(id: $id, courseId: $courseId, orderCourse: $orderCourse, name: $name, nameFile: $nameFile, description: $description, videoUrl: $videoUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopicDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.courseId, courseId) &&
            const DeepCollectionEquality()
                .equals(other.orderCourse, orderCourse) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nameFile, nameFile) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(courseId),
      const DeepCollectionEquality().hash(orderCourse),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nameFile),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(videoUrl),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$TopicDtoCopyWith<_TopicDto> get copyWith =>
      __$TopicDtoCopyWithImpl<_TopicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicDtoToJson(this);
  }
}

abstract class _TopicDto implements TopicDto {
  const factory _TopicDto(
      {required String id,
      required String courseId,
      required int orderCourse,
      required String name,
      required String nameFile,
      required String description,
      required String videoUrl,
      required String createdAt,
      required String updatedAt}) = _$_TopicDto;

  factory _TopicDto.fromJson(Map<String, dynamic> json) = _$_TopicDto.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  int get orderCourse;
  @override
  String get name;
  @override
  String get nameFile;
  @override
  String get description;
  @override
  String get videoUrl;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TopicDtoCopyWith<_TopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

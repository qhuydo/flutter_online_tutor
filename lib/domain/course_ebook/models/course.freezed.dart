// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseTearOff {
  const _$CourseTearOff();

  _Course call(
      {required String id,
      required String name,
      required Level level,
      required String reason,
      required String purpose,
      required String description,
      required List<CourseTopic> courseTopic,
      required String imageUrl}) {
    return _Course(
      id: id,
      name: name,
      level: level,
      reason: reason,
      purpose: purpose,
      description: description,
      courseTopic: courseTopic,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $Course = _$CourseTearOff();

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Level get level => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<CourseTopic> get courseTopic => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      Level level,
      String reason,
      String purpose,
      String description,
      List<CourseTopic> courseTopic,
      String imageUrl});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res> implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  final Course _value;
  // ignore: unused_field
  final $Res Function(Course) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? reason = freezed,
    Object? purpose = freezed,
    Object? description = freezed,
    Object? courseTopic = freezed,
    Object? imageUrl = freezed,
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
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      courseTopic: courseTopic == freezed
          ? _value.courseTopic
          : courseTopic // ignore: cast_nullable_to_non_nullable
              as List<CourseTopic>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) then) =
      __$CourseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      Level level,
      String reason,
      String purpose,
      String description,
      List<CourseTopic> courseTopic,
      String imageUrl});
}

/// @nodoc
class __$CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(_Course _value, $Res Function(_Course) _then)
      : super(_value, (v) => _then(v as _Course));

  @override
  _Course get _value => super._value as _Course;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? reason = freezed,
    Object? purpose = freezed,
    Object? description = freezed,
    Object? courseTopic = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_Course(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      courseTopic: courseTopic == freezed
          ? _value.courseTopic
          : courseTopic // ignore: cast_nullable_to_non_nullable
              as List<CourseTopic>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Course extends _Course {
  const _$_Course(
      {required this.id,
      required this.name,
      required this.level,
      required this.reason,
      required this.purpose,
      required this.description,
      required this.courseTopic,
      required this.imageUrl})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final Level level;
  @override
  final String reason;
  @override
  final String purpose;
  @override
  final String description;
  @override
  final List<CourseTopic> courseTopic;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'Course(id: $id, name: $name, level: $level, reason: $reason, purpose: $purpose, description: $description, courseTopic: $courseTopic, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Course &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            const DeepCollectionEquality().equals(other.purpose, purpose) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.courseTopic, courseTopic) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(reason),
      const DeepCollectionEquality().hash(purpose),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(courseTopic),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$CourseCopyWith<_Course> get copyWith =>
      __$CourseCopyWithImpl<_Course>(this, _$identity);
}

abstract class _Course extends Course {
  const factory _Course(
      {required String id,
      required String name,
      required Level level,
      required String reason,
      required String purpose,
      required String description,
      required List<CourseTopic> courseTopic,
      required String imageUrl}) = _$_Course;
  const _Course._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  Level get level;
  @override
  String get reason;
  @override
  String get purpose;
  @override
  String get description;
  @override
  List<CourseTopic> get courseTopic;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$CourseCopyWith<_Course> get copyWith => throw _privateConstructorUsedError;
}

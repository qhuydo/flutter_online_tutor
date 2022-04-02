// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseTopicTearOff {
  const _$CourseTopicTearOff();

  _CourseTopic call(
      {required String id,
      required int order,
      required String name,
      String? fileName,
      String? description,
      String? videoUrl}) {
    return _CourseTopic(
      id: id,
      order: order,
      name: name,
      fileName: fileName,
      description: description,
      videoUrl: videoUrl,
    );
  }
}

/// @nodoc
const $CourseTopic = _$CourseTopicTearOff();

/// @nodoc
mixin _$CourseTopic {
  String get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseTopicCopyWith<CourseTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTopicCopyWith<$Res> {
  factory $CourseTopicCopyWith(
          CourseTopic value, $Res Function(CourseTopic) then) =
      _$CourseTopicCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int order,
      String name,
      String? fileName,
      String? description,
      String? videoUrl});
}

/// @nodoc
class _$CourseTopicCopyWithImpl<$Res> implements $CourseTopicCopyWith<$Res> {
  _$CourseTopicCopyWithImpl(this._value, this._then);

  final CourseTopic _value;
  // ignore: unused_field
  final $Res Function(CourseTopic) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CourseTopicCopyWith<$Res>
    implements $CourseTopicCopyWith<$Res> {
  factory _$CourseTopicCopyWith(
          _CourseTopic value, $Res Function(_CourseTopic) then) =
      __$CourseTopicCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int order,
      String name,
      String? fileName,
      String? description,
      String? videoUrl});
}

/// @nodoc
class __$CourseTopicCopyWithImpl<$Res> extends _$CourseTopicCopyWithImpl<$Res>
    implements _$CourseTopicCopyWith<$Res> {
  __$CourseTopicCopyWithImpl(
      _CourseTopic _value, $Res Function(_CourseTopic) _then)
      : super(_value, (v) => _then(v as _CourseTopic));

  @override
  _CourseTopic get _value => super._value as _CourseTopic;

  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_CourseTopic(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CourseTopic implements _CourseTopic {
  const _$_CourseTopic(
      {required this.id,
      required this.order,
      required this.name,
      this.fileName,
      this.description,
      this.videoUrl});

  @override
  final String id;
  @override
  final int order;
  @override
  final String name;
  @override
  final String? fileName;
  @override
  final String? description;
  @override
  final String? videoUrl;

  @override
  String toString() {
    return 'CourseTopic(id: $id, order: $order, name: $name, fileName: $fileName, description: $description, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseTopic &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(videoUrl));

  @JsonKey(ignore: true)
  @override
  _$CourseTopicCopyWith<_CourseTopic> get copyWith =>
      __$CourseTopicCopyWithImpl<_CourseTopic>(this, _$identity);
}

abstract class _CourseTopic implements CourseTopic {
  const factory _CourseTopic(
      {required String id,
      required int order,
      required String name,
      String? fileName,
      String? description,
      String? videoUrl}) = _$_CourseTopic;

  @override
  String get id;
  @override
  int get order;
  @override
  String get name;
  @override
  String? get fileName;
  @override
  String? get description;
  @override
  String? get videoUrl;
  @override
  @JsonKey(ignore: true)
  _$CourseTopicCopyWith<_CourseTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

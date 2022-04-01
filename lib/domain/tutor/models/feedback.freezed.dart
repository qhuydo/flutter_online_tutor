// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
class _$FeedbackTearOff {
  const _$FeedbackTearOff();

  _Feedback call(
      {required String? avatar,
      required DateTime createdAt,
      required String content,
      required String id,
      required String name,
      required int rating,
      required DateTime updatedAt}) {
    return _Feedback(
      avatar: avatar,
      createdAt: createdAt,
      content: content,
      id: id,
      name: name,
      rating: rating,
      updatedAt: updatedAt,
    );
  }

  Feedback fromJson(Map<String, Object?> json) {
    return Feedback.fromJson(json);
  }
}

/// @nodoc
const $Feedback = _$FeedbackTearOff();

/// @nodoc
mixin _$Feedback {
  String? get avatar => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackCopyWith<Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) then) =
      _$FeedbackCopyWithImpl<$Res>;
  $Res call(
      {String? avatar,
      DateTime createdAt,
      String content,
      String id,
      String name,
      int rating,
      DateTime updatedAt});
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res> implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._value, this._then);

  final Feedback _value;
  // ignore: unused_field
  final $Res Function(Feedback) _then;

  @override
  $Res call({
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? content = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$FeedbackCopyWith<$Res> implements $FeedbackCopyWith<$Res> {
  factory _$FeedbackCopyWith(_Feedback value, $Res Function(_Feedback) then) =
      __$FeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? avatar,
      DateTime createdAt,
      String content,
      String id,
      String name,
      int rating,
      DateTime updatedAt});
}

/// @nodoc
class __$FeedbackCopyWithImpl<$Res> extends _$FeedbackCopyWithImpl<$Res>
    implements _$FeedbackCopyWith<$Res> {
  __$FeedbackCopyWithImpl(_Feedback _value, $Res Function(_Feedback) _then)
      : super(_value, (v) => _then(v as _Feedback));

  @override
  _Feedback get _value => super._value as _Feedback;

  @override
  $Res call({
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? content = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Feedback(
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feedback extends _Feedback {
  const _$_Feedback(
      {required this.avatar,
      required this.createdAt,
      required this.content,
      required this.id,
      required this.name,
      required this.rating,
      required this.updatedAt})
      : super._();

  factory _$_Feedback.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackFromJson(json);

  @override
  final String? avatar;
  @override
  final DateTime createdAt;
  @override
  final String content;
  @override
  final String id;
  @override
  final String name;
  @override
  final int rating;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Feedback(avatar: $avatar, createdAt: $createdAt, content: $content, id: $id, name: $name, rating: $rating, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Feedback &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$FeedbackCopyWith<_Feedback> get copyWith =>
      __$FeedbackCopyWithImpl<_Feedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackToJson(this);
  }
}

abstract class _Feedback extends Feedback {
  const factory _Feedback(
      {required String? avatar,
      required DateTime createdAt,
      required String content,
      required String id,
      required String name,
      required int rating,
      required DateTime updatedAt}) = _$_Feedback;
  const _Feedback._() : super._();

  factory _Feedback.fromJson(Map<String, dynamic> json) = _$_Feedback.fromJson;

  @override
  String? get avatar;
  @override
  DateTime get createdAt;
  @override
  String get content;
  @override
  String get id;
  @override
  String get name;
  @override
  int get rating;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$FeedbackCopyWith<_Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

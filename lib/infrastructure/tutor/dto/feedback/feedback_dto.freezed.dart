// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackDto _$FeedbackDtoFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
class _$FeedbackDtoTearOff {
  const _$FeedbackDtoTearOff();

  _Feedback call(
      {required String id,
      required String bookingId,
      required String firstId,
      required String secondId,
      required int rating,
      required String content,
      required DateTime createdAt,
      required DateTime updatedAt,
      required FirstInfo firstInfo}) {
    return _Feedback(
      id: id,
      bookingId: bookingId,
      firstId: firstId,
      secondId: secondId,
      rating: rating,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firstInfo: firstInfo,
    );
  }

  FeedbackDto fromJson(Map<String, Object?> json) {
    return FeedbackDto.fromJson(json);
  }
}

/// @nodoc
const $FeedbackDto = _$FeedbackDtoTearOff();

/// @nodoc
mixin _$FeedbackDto {
  String get id => throw _privateConstructorUsedError;
  String get bookingId => throw _privateConstructorUsedError;
  String get firstId => throw _privateConstructorUsedError;
  String get secondId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  FirstInfo get firstInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackDtoCopyWith<FeedbackDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackDtoCopyWith<$Res> {
  factory $FeedbackDtoCopyWith(
          FeedbackDto value, $Res Function(FeedbackDto) then) =
      _$FeedbackDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String bookingId,
      String firstId,
      String secondId,
      int rating,
      String content,
      DateTime createdAt,
      DateTime updatedAt,
      FirstInfo firstInfo});

  $FirstInfoCopyWith<$Res> get firstInfo;
}

/// @nodoc
class _$FeedbackDtoCopyWithImpl<$Res> implements $FeedbackDtoCopyWith<$Res> {
  _$FeedbackDtoCopyWithImpl(this._value, this._then);

  final FeedbackDto _value;
  // ignore: unused_field
  final $Res Function(FeedbackDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? rating = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? firstInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: firstId == freezed
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      secondId: secondId == freezed
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstInfo: firstInfo == freezed
          ? _value.firstInfo
          : firstInfo // ignore: cast_nullable_to_non_nullable
              as FirstInfo,
    ));
  }

  @override
  $FirstInfoCopyWith<$Res> get firstInfo {
    return $FirstInfoCopyWith<$Res>(_value.firstInfo, (value) {
      return _then(_value.copyWith(firstInfo: value));
    });
  }
}

/// @nodoc
abstract class _$FeedbackCopyWith<$Res> implements $FeedbackDtoCopyWith<$Res> {
  factory _$FeedbackCopyWith(_Feedback value, $Res Function(_Feedback) then) =
      __$FeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String bookingId,
      String firstId,
      String secondId,
      int rating,
      String content,
      DateTime createdAt,
      DateTime updatedAt,
      FirstInfo firstInfo});

  @override
  $FirstInfoCopyWith<$Res> get firstInfo;
}

/// @nodoc
class __$FeedbackCopyWithImpl<$Res> extends _$FeedbackDtoCopyWithImpl<$Res>
    implements _$FeedbackCopyWith<$Res> {
  __$FeedbackCopyWithImpl(_Feedback _value, $Res Function(_Feedback) _then)
      : super(_value, (v) => _then(v as _Feedback));

  @override
  _Feedback get _value => super._value as _Feedback;

  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? rating = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? firstInfo = freezed,
  }) {
    return _then(_Feedback(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: firstId == freezed
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      secondId: secondId == freezed
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstInfo: firstInfo == freezed
          ? _value.firstInfo
          : firstInfo // ignore: cast_nullable_to_non_nullable
              as FirstInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feedback extends _Feedback {
  const _$_Feedback(
      {required this.id,
      required this.bookingId,
      required this.firstId,
      required this.secondId,
      required this.rating,
      required this.content,
      required this.createdAt,
      required this.updatedAt,
      required this.firstInfo})
      : super._();

  factory _$_Feedback.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackFromJson(json);

  @override
  final String id;
  @override
  final String bookingId;
  @override
  final String firstId;
  @override
  final String secondId;
  @override
  final int rating;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final FirstInfo firstInfo;

  @override
  String toString() {
    return 'FeedbackDto(id: $id, bookingId: $bookingId, firstId: $firstId, secondId: $secondId, rating: $rating, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, firstInfo: $firstInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Feedback &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality().equals(other.firstId, firstId) &&
            const DeepCollectionEquality().equals(other.secondId, secondId) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.firstInfo, firstInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(firstId),
      const DeepCollectionEquality().hash(secondId),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(firstInfo));

  @JsonKey(ignore: true)
  @override
  _$FeedbackCopyWith<_Feedback> get copyWith =>
      __$FeedbackCopyWithImpl<_Feedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackToJson(this);
  }
}

abstract class _Feedback extends FeedbackDto {
  const factory _Feedback(
      {required String id,
      required String bookingId,
      required String firstId,
      required String secondId,
      required int rating,
      required String content,
      required DateTime createdAt,
      required DateTime updatedAt,
      required FirstInfo firstInfo}) = _$_Feedback;
  const _Feedback._() : super._();

  factory _Feedback.fromJson(Map<String, dynamic> json) = _$_Feedback.fromJson;

  @override
  String get id;
  @override
  String get bookingId;
  @override
  String get firstId;
  @override
  String get secondId;
  @override
  int get rating;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  FirstInfo get firstInfo;
  @override
  @JsonKey(ignore: true)
  _$FeedbackCopyWith<_Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

FirstInfo _$FirstInfoFromJson(Map<String, dynamic> json) {
  return _FirstInfo.fromJson(json);
}

/// @nodoc
class _$FirstInfoTearOff {
  const _$FirstInfoTearOff();

  _FirstInfo call(
      {required String email, required String name, required String? avatar}) {
    return _FirstInfo(
      email: email,
      name: name,
      avatar: avatar,
    );
  }

  FirstInfo fromJson(Map<String, Object?> json) {
    return FirstInfo.fromJson(json);
  }
}

/// @nodoc
const $FirstInfo = _$FirstInfoTearOff();

/// @nodoc
mixin _$FirstInfo {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirstInfoCopyWith<FirstInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstInfoCopyWith<$Res> {
  factory $FirstInfoCopyWith(FirstInfo value, $Res Function(FirstInfo) then) =
      _$FirstInfoCopyWithImpl<$Res>;
  $Res call({String email, String name, String? avatar});
}

/// @nodoc
class _$FirstInfoCopyWithImpl<$Res> implements $FirstInfoCopyWith<$Res> {
  _$FirstInfoCopyWithImpl(this._value, this._then);

  final FirstInfo _value;
  // ignore: unused_field
  final $Res Function(FirstInfo) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FirstInfoCopyWith<$Res> implements $FirstInfoCopyWith<$Res> {
  factory _$FirstInfoCopyWith(
          _FirstInfo value, $Res Function(_FirstInfo) then) =
      __$FirstInfoCopyWithImpl<$Res>;
  @override
  $Res call({String email, String name, String? avatar});
}

/// @nodoc
class __$FirstInfoCopyWithImpl<$Res> extends _$FirstInfoCopyWithImpl<$Res>
    implements _$FirstInfoCopyWith<$Res> {
  __$FirstInfoCopyWithImpl(_FirstInfo _value, $Res Function(_FirstInfo) _then)
      : super(_value, (v) => _then(v as _FirstInfo));

  @override
  _FirstInfo get _value => super._value as _FirstInfo;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_FirstInfo(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirstInfo implements _FirstInfo {
  const _$_FirstInfo(
      {required this.email, required this.name, required this.avatar});

  factory _$_FirstInfo.fromJson(Map<String, dynamic> json) =>
      _$$_FirstInfoFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'FirstInfo(email: $email, name: $name, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirstInfo &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$FirstInfoCopyWith<_FirstInfo> get copyWith =>
      __$FirstInfoCopyWithImpl<_FirstInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirstInfoToJson(this);
  }
}

abstract class _FirstInfo implements FirstInfo {
  const factory _FirstInfo(
      {required String email,
      required String name,
      required String? avatar}) = _$_FirstInfo;

  factory _FirstInfo.fromJson(Map<String, dynamic> json) =
      _$_FirstInfo.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$FirstInfoCopyWith<_FirstInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

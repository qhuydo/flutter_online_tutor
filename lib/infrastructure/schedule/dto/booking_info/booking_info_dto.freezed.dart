// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingInfoDto _$BookingInfoDtoFromJson(Map<String, dynamic> json) {
  return _BookingInfoDto.fromJson(json);
}

/// @nodoc
class _$BookingInfoDtoTearOff {
  const _$BookingInfoDtoTearOff();

  _BookingInfoDto call(
      {required int createdAtTimeStamp,
      required int updatedAtTimeStamp,
      required String id,
      required String userId,
      required String scheduleDetailId,
      required String tutorMeetingLink,
      required String studentMeetingLink,
      required String? studentRequest,
      required String? tutorReview,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String? recordUrl,
      required bool isDeleted}) {
    return _BookingInfoDto(
      createdAtTimeStamp: createdAtTimeStamp,
      updatedAtTimeStamp: updatedAtTimeStamp,
      id: id,
      userId: userId,
      scheduleDetailId: scheduleDetailId,
      tutorMeetingLink: tutorMeetingLink,
      studentMeetingLink: studentMeetingLink,
      studentRequest: studentRequest,
      tutorReview: tutorReview,
      createdAt: createdAt,
      updatedAt: updatedAt,
      recordUrl: recordUrl,
      isDeleted: isDeleted,
    );
  }

  BookingInfoDto fromJson(Map<String, Object?> json) {
    return BookingInfoDto.fromJson(json);
  }
}

/// @nodoc
const $BookingInfoDto = _$BookingInfoDtoTearOff();

/// @nodoc
mixin _$BookingInfoDto {
  int get createdAtTimeStamp => throw _privateConstructorUsedError;
  int get updatedAtTimeStamp => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get scheduleDetailId => throw _privateConstructorUsedError;
  String get tutorMeetingLink => throw _privateConstructorUsedError;
  String get studentMeetingLink => throw _privateConstructorUsedError;
  String? get studentRequest => throw _privateConstructorUsedError;
  String? get tutorReview =>
      throw _privateConstructorUsedError; // dynamic scoreByTutor,
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get recordUrl => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingInfoDtoCopyWith<BookingInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingInfoDtoCopyWith<$Res> {
  factory $BookingInfoDtoCopyWith(
          BookingInfoDto value, $Res Function(BookingInfoDto) then) =
      _$BookingInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {int createdAtTimeStamp,
      int updatedAtTimeStamp,
      String id,
      String userId,
      String scheduleDetailId,
      String tutorMeetingLink,
      String studentMeetingLink,
      String? studentRequest,
      String? tutorReview,
      DateTime createdAt,
      DateTime updatedAt,
      String? recordUrl,
      bool isDeleted});
}

/// @nodoc
class _$BookingInfoDtoCopyWithImpl<$Res>
    implements $BookingInfoDtoCopyWith<$Res> {
  _$BookingInfoDtoCopyWithImpl(this._value, this._then);

  final BookingInfoDto _value;
  // ignore: unused_field
  final $Res Function(BookingInfoDto) _then;

  @override
  $Res call({
    Object? createdAtTimeStamp = freezed,
    Object? updatedAtTimeStamp = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? scheduleDetailId = freezed,
    Object? tutorMeetingLink = freezed,
    Object? studentMeetingLink = freezed,
    Object? studentRequest = freezed,
    Object? tutorReview = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? recordUrl = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(_value.copyWith(
      createdAtTimeStamp: createdAtTimeStamp == freezed
          ? _value.createdAtTimeStamp
          : createdAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAtTimeStamp: updatedAtTimeStamp == freezed
          ? _value.updatedAtTimeStamp
          : updatedAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleDetailId: scheduleDetailId == freezed
          ? _value.scheduleDetailId
          : scheduleDetailId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorMeetingLink: tutorMeetingLink == freezed
          ? _value.tutorMeetingLink
          : tutorMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentMeetingLink: studentMeetingLink == freezed
          ? _value.studentMeetingLink
          : studentMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentRequest: studentRequest == freezed
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorReview: tutorReview == freezed
          ? _value.tutorReview
          : tutorReview // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recordUrl: recordUrl == freezed
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$BookingInfoDtoCopyWith<$Res>
    implements $BookingInfoDtoCopyWith<$Res> {
  factory _$BookingInfoDtoCopyWith(
          _BookingInfoDto value, $Res Function(_BookingInfoDto) then) =
      __$BookingInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int createdAtTimeStamp,
      int updatedAtTimeStamp,
      String id,
      String userId,
      String scheduleDetailId,
      String tutorMeetingLink,
      String studentMeetingLink,
      String? studentRequest,
      String? tutorReview,
      DateTime createdAt,
      DateTime updatedAt,
      String? recordUrl,
      bool isDeleted});
}

/// @nodoc
class __$BookingInfoDtoCopyWithImpl<$Res>
    extends _$BookingInfoDtoCopyWithImpl<$Res>
    implements _$BookingInfoDtoCopyWith<$Res> {
  __$BookingInfoDtoCopyWithImpl(
      _BookingInfoDto _value, $Res Function(_BookingInfoDto) _then)
      : super(_value, (v) => _then(v as _BookingInfoDto));

  @override
  _BookingInfoDto get _value => super._value as _BookingInfoDto;

  @override
  $Res call({
    Object? createdAtTimeStamp = freezed,
    Object? updatedAtTimeStamp = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? scheduleDetailId = freezed,
    Object? tutorMeetingLink = freezed,
    Object? studentMeetingLink = freezed,
    Object? studentRequest = freezed,
    Object? tutorReview = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? recordUrl = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(_BookingInfoDto(
      createdAtTimeStamp: createdAtTimeStamp == freezed
          ? _value.createdAtTimeStamp
          : createdAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAtTimeStamp: updatedAtTimeStamp == freezed
          ? _value.updatedAtTimeStamp
          : updatedAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleDetailId: scheduleDetailId == freezed
          ? _value.scheduleDetailId
          : scheduleDetailId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorMeetingLink: tutorMeetingLink == freezed
          ? _value.tutorMeetingLink
          : tutorMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentMeetingLink: studentMeetingLink == freezed
          ? _value.studentMeetingLink
          : studentMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentRequest: studentRequest == freezed
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorReview: tutorReview == freezed
          ? _value.tutorReview
          : tutorReview // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recordUrl: recordUrl == freezed
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingInfoDto implements _BookingInfoDto {
  const _$_BookingInfoDto(
      {required this.createdAtTimeStamp,
      required this.updatedAtTimeStamp,
      required this.id,
      required this.userId,
      required this.scheduleDetailId,
      required this.tutorMeetingLink,
      required this.studentMeetingLink,
      required this.studentRequest,
      required this.tutorReview,
      required this.createdAt,
      required this.updatedAt,
      required this.recordUrl,
      required this.isDeleted});

  factory _$_BookingInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_BookingInfoDtoFromJson(json);

  @override
  final int createdAtTimeStamp;
  @override
  final int updatedAtTimeStamp;
  @override
  final String id;
  @override
  final String userId;
  @override
  final String scheduleDetailId;
  @override
  final String tutorMeetingLink;
  @override
  final String studentMeetingLink;
  @override
  final String? studentRequest;
  @override
  final String? tutorReview;
  @override // dynamic scoreByTutor,
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? recordUrl;
  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'BookingInfoDto(createdAtTimeStamp: $createdAtTimeStamp, updatedAtTimeStamp: $updatedAtTimeStamp, id: $id, userId: $userId, scheduleDetailId: $scheduleDetailId, tutorMeetingLink: $tutorMeetingLink, studentMeetingLink: $studentMeetingLink, studentRequest: $studentRequest, tutorReview: $tutorReview, createdAt: $createdAt, updatedAt: $updatedAt, recordUrl: $recordUrl, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingInfoDto &&
            const DeepCollectionEquality()
                .equals(other.createdAtTimeStamp, createdAtTimeStamp) &&
            const DeepCollectionEquality()
                .equals(other.updatedAtTimeStamp, updatedAtTimeStamp) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.scheduleDetailId, scheduleDetailId) &&
            const DeepCollectionEquality()
                .equals(other.tutorMeetingLink, tutorMeetingLink) &&
            const DeepCollectionEquality()
                .equals(other.studentMeetingLink, studentMeetingLink) &&
            const DeepCollectionEquality()
                .equals(other.studentRequest, studentRequest) &&
            const DeepCollectionEquality()
                .equals(other.tutorReview, tutorReview) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.recordUrl, recordUrl) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAtTimeStamp),
      const DeepCollectionEquality().hash(updatedAtTimeStamp),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(scheduleDetailId),
      const DeepCollectionEquality().hash(tutorMeetingLink),
      const DeepCollectionEquality().hash(studentMeetingLink),
      const DeepCollectionEquality().hash(studentRequest),
      const DeepCollectionEquality().hash(tutorReview),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(recordUrl),
      const DeepCollectionEquality().hash(isDeleted));

  @JsonKey(ignore: true)
  @override
  _$BookingInfoDtoCopyWith<_BookingInfoDto> get copyWith =>
      __$BookingInfoDtoCopyWithImpl<_BookingInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingInfoDtoToJson(this);
  }
}

abstract class _BookingInfoDto implements BookingInfoDto {
  const factory _BookingInfoDto(
      {required int createdAtTimeStamp,
      required int updatedAtTimeStamp,
      required String id,
      required String userId,
      required String scheduleDetailId,
      required String tutorMeetingLink,
      required String studentMeetingLink,
      required String? studentRequest,
      required String? tutorReview,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String? recordUrl,
      required bool isDeleted}) = _$_BookingInfoDto;

  factory _BookingInfoDto.fromJson(Map<String, dynamic> json) =
      _$_BookingInfoDto.fromJson;

  @override
  int get createdAtTimeStamp;
  @override
  int get updatedAtTimeStamp;
  @override
  String get id;
  @override
  String get userId;
  @override
  String get scheduleDetailId;
  @override
  String get tutorMeetingLink;
  @override
  String get studentMeetingLink;
  @override
  String? get studentRequest;
  @override
  String? get tutorReview;
  @override // dynamic scoreByTutor,
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get recordUrl;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$BookingInfoDtoCopyWith<_BookingInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

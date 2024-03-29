// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentDto _$AppointmentDtoFromJson(Map<String, dynamic> json) {
  return _AppointmentDto.fromJson(json);
}

/// @nodoc
class _$AppointmentDtoTearOff {
  const _$AppointmentDtoTearOff();

  _AppointmentDto call({required Data data}) {
    return _AppointmentDto(
      data: data,
    );
  }

  AppointmentDto fromJson(Map<String, Object?> json) {
    return AppointmentDto.fromJson(json);
  }
}

/// @nodoc
const $AppointmentDto = _$AppointmentDtoTearOff();

/// @nodoc
mixin _$AppointmentDto {
// String message,
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDtoCopyWith<AppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDtoCopyWith<$Res> {
  factory $AppointmentDtoCopyWith(
          AppointmentDto value, $Res Function(AppointmentDto) then) =
      _$AppointmentDtoCopyWithImpl<$Res>;
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$AppointmentDtoCopyWithImpl<$Res>
    implements $AppointmentDtoCopyWith<$Res> {
  _$AppointmentDtoCopyWithImpl(this._value, this._then);

  final AppointmentDto _value;
  // ignore: unused_field
  final $Res Function(AppointmentDto) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$AppointmentDtoCopyWith<$Res>
    implements $AppointmentDtoCopyWith<$Res> {
  factory _$AppointmentDtoCopyWith(
          _AppointmentDto value, $Res Function(_AppointmentDto) then) =
      __$AppointmentDtoCopyWithImpl<$Res>;
  @override
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$AppointmentDtoCopyWithImpl<$Res>
    extends _$AppointmentDtoCopyWithImpl<$Res>
    implements _$AppointmentDtoCopyWith<$Res> {
  __$AppointmentDtoCopyWithImpl(
      _AppointmentDto _value, $Res Function(_AppointmentDto) _then)
      : super(_value, (v) => _then(v as _AppointmentDto));

  @override
  _AppointmentDto get _value => super._value as _AppointmentDto;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_AppointmentDto(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentDto implements _AppointmentDto {
  const _$_AppointmentDto({required this.data});

  factory _$_AppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentDtoFromJson(json);

  @override // String message,
  final Data data;

  @override
  String toString() {
    return 'AppointmentDto(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentDto &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$AppointmentDtoCopyWith<_AppointmentDto> get copyWith =>
      __$AppointmentDtoCopyWithImpl<_AppointmentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentDtoToJson(this);
  }
}

abstract class _AppointmentDto implements AppointmentDto {
  const factory _AppointmentDto({required Data data}) = _$_AppointmentDto;

  factory _AppointmentDto.fromJson(Map<String, dynamic> json) =
      _$_AppointmentDto.fromJson;

  @override // String message,
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$AppointmentDtoCopyWith<_AppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({required int count, required List<AppointmentRowDto> rows}) {
    return _Data(
      count: count,
      rows: rows,
    );
  }

  Data fromJson(Map<String, Object?> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  int get count => throw _privateConstructorUsedError;
  List<AppointmentRowDto> get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({int count, List<AppointmentRowDto> rows});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<AppointmentRowDto>,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<AppointmentRowDto> rows});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_Data(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<AppointmentRowDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({required this.count, required this.rows});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int count;
  @override
  final List<AppointmentRowDto> rows;

  @override
  String toString() {
    return 'Data(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.rows, rows));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(rows));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required int count, required List<AppointmentRowDto> rows}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int get count;
  @override
  List<AppointmentRowDto> get rows;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

AppointmentRowDto _$AppointmentRowDtoFromJson(Map<String, dynamic> json) {
  return _AppointmentRowDto.fromJson(json);
}

/// @nodoc
class _$AppointmentRowDtoTearOff {
  const _$AppointmentRowDtoTearOff();

  _AppointmentRowDto call(
      {required int createdAtTimeStamp,
      required int updatedAtTimeStamp,
      required String id,
      required String userId,
      required String scheduleDetailId,
      required String studentMeetingLink,
      required String? studentRequest,
      required DateTime createdAt,
      required DateTime updatedAt,
      String? recordUrl,
      required bool isDeleted,
      required AppointmentDetailsDto scheduleDetailInfo}) {
    return _AppointmentRowDto(
      createdAtTimeStamp: createdAtTimeStamp,
      updatedAtTimeStamp: updatedAtTimeStamp,
      id: id,
      userId: userId,
      scheduleDetailId: scheduleDetailId,
      studentMeetingLink: studentMeetingLink,
      studentRequest: studentRequest,
      createdAt: createdAt,
      updatedAt: updatedAt,
      recordUrl: recordUrl,
      isDeleted: isDeleted,
      scheduleDetailInfo: scheduleDetailInfo,
    );
  }

  AppointmentRowDto fromJson(Map<String, Object?> json) {
    return AppointmentRowDto.fromJson(json);
  }
}

/// @nodoc
const $AppointmentRowDto = _$AppointmentRowDtoTearOff();

/// @nodoc
mixin _$AppointmentRowDto {
  int get createdAtTimeStamp => throw _privateConstructorUsedError;
  int get updatedAtTimeStamp => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get scheduleDetailId =>
      throw _privateConstructorUsedError; // String tutorMeetingLink,
  String get studentMeetingLink => throw _privateConstructorUsedError;
  String? get studentRequest =>
      throw _privateConstructorUsedError; // String? tutorReview,
// String? scoreByTutor,
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get recordUrl => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  AppointmentDetailsDto get scheduleDetailInfo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentRowDtoCopyWith<AppointmentRowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentRowDtoCopyWith<$Res> {
  factory $AppointmentRowDtoCopyWith(
          AppointmentRowDto value, $Res Function(AppointmentRowDto) then) =
      _$AppointmentRowDtoCopyWithImpl<$Res>;
  $Res call(
      {int createdAtTimeStamp,
      int updatedAtTimeStamp,
      String id,
      String userId,
      String scheduleDetailId,
      String studentMeetingLink,
      String? studentRequest,
      DateTime createdAt,
      DateTime updatedAt,
      String? recordUrl,
      bool isDeleted,
      AppointmentDetailsDto scheduleDetailInfo});

  $AppointmentDetailsDtoCopyWith<$Res> get scheduleDetailInfo;
}

/// @nodoc
class _$AppointmentRowDtoCopyWithImpl<$Res>
    implements $AppointmentRowDtoCopyWith<$Res> {
  _$AppointmentRowDtoCopyWithImpl(this._value, this._then);

  final AppointmentRowDto _value;
  // ignore: unused_field
  final $Res Function(AppointmentRowDto) _then;

  @override
  $Res call({
    Object? createdAtTimeStamp = freezed,
    Object? updatedAtTimeStamp = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? scheduleDetailId = freezed,
    Object? studentMeetingLink = freezed,
    Object? studentRequest = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? recordUrl = freezed,
    Object? isDeleted = freezed,
    Object? scheduleDetailInfo = freezed,
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
      studentMeetingLink: studentMeetingLink == freezed
          ? _value.studentMeetingLink
          : studentMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentRequest: studentRequest == freezed
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
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
      scheduleDetailInfo: scheduleDetailInfo == freezed
          ? _value.scheduleDetailInfo
          : scheduleDetailInfo // ignore: cast_nullable_to_non_nullable
              as AppointmentDetailsDto,
    ));
  }

  @override
  $AppointmentDetailsDtoCopyWith<$Res> get scheduleDetailInfo {
    return $AppointmentDetailsDtoCopyWith<$Res>(_value.scheduleDetailInfo,
        (value) {
      return _then(_value.copyWith(scheduleDetailInfo: value));
    });
  }
}

/// @nodoc
abstract class _$AppointmentRowDtoCopyWith<$Res>
    implements $AppointmentRowDtoCopyWith<$Res> {
  factory _$AppointmentRowDtoCopyWith(
          _AppointmentRowDto value, $Res Function(_AppointmentRowDto) then) =
      __$AppointmentRowDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int createdAtTimeStamp,
      int updatedAtTimeStamp,
      String id,
      String userId,
      String scheduleDetailId,
      String studentMeetingLink,
      String? studentRequest,
      DateTime createdAt,
      DateTime updatedAt,
      String? recordUrl,
      bool isDeleted,
      AppointmentDetailsDto scheduleDetailInfo});

  @override
  $AppointmentDetailsDtoCopyWith<$Res> get scheduleDetailInfo;
}

/// @nodoc
class __$AppointmentRowDtoCopyWithImpl<$Res>
    extends _$AppointmentRowDtoCopyWithImpl<$Res>
    implements _$AppointmentRowDtoCopyWith<$Res> {
  __$AppointmentRowDtoCopyWithImpl(
      _AppointmentRowDto _value, $Res Function(_AppointmentRowDto) _then)
      : super(_value, (v) => _then(v as _AppointmentRowDto));

  @override
  _AppointmentRowDto get _value => super._value as _AppointmentRowDto;

  @override
  $Res call({
    Object? createdAtTimeStamp = freezed,
    Object? updatedAtTimeStamp = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? scheduleDetailId = freezed,
    Object? studentMeetingLink = freezed,
    Object? studentRequest = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? recordUrl = freezed,
    Object? isDeleted = freezed,
    Object? scheduleDetailInfo = freezed,
  }) {
    return _then(_AppointmentRowDto(
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
      studentMeetingLink: studentMeetingLink == freezed
          ? _value.studentMeetingLink
          : studentMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentRequest: studentRequest == freezed
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
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
      scheduleDetailInfo: scheduleDetailInfo == freezed
          ? _value.scheduleDetailInfo
          : scheduleDetailInfo // ignore: cast_nullable_to_non_nullable
              as AppointmentDetailsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentRowDto implements _AppointmentRowDto {
  const _$_AppointmentRowDto(
      {required this.createdAtTimeStamp,
      required this.updatedAtTimeStamp,
      required this.id,
      required this.userId,
      required this.scheduleDetailId,
      required this.studentMeetingLink,
      required this.studentRequest,
      required this.createdAt,
      required this.updatedAt,
      this.recordUrl,
      required this.isDeleted,
      required this.scheduleDetailInfo});

  factory _$_AppointmentRowDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentRowDtoFromJson(json);

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
  @override // String tutorMeetingLink,
  final String studentMeetingLink;
  @override
  final String? studentRequest;
  @override // String? tutorReview,
// String? scoreByTutor,
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? recordUrl;
  @override
  final bool isDeleted;
  @override
  final AppointmentDetailsDto scheduleDetailInfo;

  @override
  String toString() {
    return 'AppointmentRowDto(createdAtTimeStamp: $createdAtTimeStamp, updatedAtTimeStamp: $updatedAtTimeStamp, id: $id, userId: $userId, scheduleDetailId: $scheduleDetailId, studentMeetingLink: $studentMeetingLink, studentRequest: $studentRequest, createdAt: $createdAt, updatedAt: $updatedAt, recordUrl: $recordUrl, isDeleted: $isDeleted, scheduleDetailInfo: $scheduleDetailInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentRowDto &&
            const DeepCollectionEquality()
                .equals(other.createdAtTimeStamp, createdAtTimeStamp) &&
            const DeepCollectionEquality()
                .equals(other.updatedAtTimeStamp, updatedAtTimeStamp) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.scheduleDetailId, scheduleDetailId) &&
            const DeepCollectionEquality()
                .equals(other.studentMeetingLink, studentMeetingLink) &&
            const DeepCollectionEquality()
                .equals(other.studentRequest, studentRequest) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.recordUrl, recordUrl) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted) &&
            const DeepCollectionEquality()
                .equals(other.scheduleDetailInfo, scheduleDetailInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAtTimeStamp),
      const DeepCollectionEquality().hash(updatedAtTimeStamp),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(scheduleDetailId),
      const DeepCollectionEquality().hash(studentMeetingLink),
      const DeepCollectionEquality().hash(studentRequest),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(recordUrl),
      const DeepCollectionEquality().hash(isDeleted),
      const DeepCollectionEquality().hash(scheduleDetailInfo));

  @JsonKey(ignore: true)
  @override
  _$AppointmentRowDtoCopyWith<_AppointmentRowDto> get copyWith =>
      __$AppointmentRowDtoCopyWithImpl<_AppointmentRowDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentRowDtoToJson(this);
  }
}

abstract class _AppointmentRowDto implements AppointmentRowDto {
  const factory _AppointmentRowDto(
          {required int createdAtTimeStamp,
          required int updatedAtTimeStamp,
          required String id,
          required String userId,
          required String scheduleDetailId,
          required String studentMeetingLink,
          required String? studentRequest,
          required DateTime createdAt,
          required DateTime updatedAt,
          String? recordUrl,
          required bool isDeleted,
          required AppointmentDetailsDto scheduleDetailInfo}) =
      _$_AppointmentRowDto;

  factory _AppointmentRowDto.fromJson(Map<String, dynamic> json) =
      _$_AppointmentRowDto.fromJson;

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
  @override // String tutorMeetingLink,
  String get studentMeetingLink;
  @override
  String? get studentRequest;
  @override // String? tutorReview,
// String? scoreByTutor,
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get recordUrl;
  @override
  bool get isDeleted;
  @override
  AppointmentDetailsDto get scheduleDetailInfo;
  @override
  @JsonKey(ignore: true)
  _$AppointmentRowDtoCopyWith<_AppointmentRowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

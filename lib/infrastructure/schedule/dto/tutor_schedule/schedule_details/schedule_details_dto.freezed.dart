// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDetailDto _$ScheduleDetailDtoFromJson(Map<String, dynamic> json) {
  return _ScheduleDetailDto.fromJson(json);
}

/// @nodoc
class _$ScheduleDetailDtoTearOff {
  const _$ScheduleDetailDtoTearOff();

  _ScheduleDetailDto call(
      {required int startPeriodTimestamp,
      required int endPeriodTimestamp,
      required String id,
      required String scheduleId,
      required String startPeriod,
      required String endPeriod,
      required DateTime createdAt,
      required DateTime updatedAt,
      required List<BookingInfoDto> bookingInfo,
      required bool isBooked}) {
    return _ScheduleDetailDto(
      startPeriodTimestamp: startPeriodTimestamp,
      endPeriodTimestamp: endPeriodTimestamp,
      id: id,
      scheduleId: scheduleId,
      startPeriod: startPeriod,
      endPeriod: endPeriod,
      createdAt: createdAt,
      updatedAt: updatedAt,
      bookingInfo: bookingInfo,
      isBooked: isBooked,
    );
  }

  ScheduleDetailDto fromJson(Map<String, Object?> json) {
    return ScheduleDetailDto.fromJson(json);
  }
}

/// @nodoc
const $ScheduleDetailDto = _$ScheduleDetailDtoTearOff();

/// @nodoc
mixin _$ScheduleDetailDto {
  int get startPeriodTimestamp => throw _privateConstructorUsedError;
  int get endPeriodTimestamp => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get scheduleId => throw _privateConstructorUsedError;
  String get startPeriod => throw _privateConstructorUsedError;
  String get endPeriod => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<BookingInfoDto> get bookingInfo => throw _privateConstructorUsedError;
  bool get isBooked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDetailDtoCopyWith<ScheduleDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDetailDtoCopyWith<$Res> {
  factory $ScheduleDetailDtoCopyWith(
          ScheduleDetailDto value, $Res Function(ScheduleDetailDto) then) =
      _$ScheduleDetailDtoCopyWithImpl<$Res>;
  $Res call(
      {int startPeriodTimestamp,
      int endPeriodTimestamp,
      String id,
      String scheduleId,
      String startPeriod,
      String endPeriod,
      DateTime createdAt,
      DateTime updatedAt,
      List<BookingInfoDto> bookingInfo,
      bool isBooked});
}

/// @nodoc
class _$ScheduleDetailDtoCopyWithImpl<$Res>
    implements $ScheduleDetailDtoCopyWith<$Res> {
  _$ScheduleDetailDtoCopyWithImpl(this._value, this._then);

  final ScheduleDetailDto _value;
  // ignore: unused_field
  final $Res Function(ScheduleDetailDto) _then;

  @override
  $Res call({
    Object? startPeriodTimestamp = freezed,
    Object? endPeriodTimestamp = freezed,
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? startPeriod = freezed,
    Object? endPeriod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookingInfo = freezed,
    Object? isBooked = freezed,
  }) {
    return _then(_value.copyWith(
      startPeriodTimestamp: startPeriodTimestamp == freezed
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endPeriodTimestamp: endPeriodTimestamp == freezed
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      startPeriod: startPeriod == freezed
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      endPeriod: endPeriod == freezed
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingInfo: bookingInfo == freezed
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as List<BookingInfoDto>,
      isBooked: isBooked == freezed
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleDetailDtoCopyWith<$Res>
    implements $ScheduleDetailDtoCopyWith<$Res> {
  factory _$ScheduleDetailDtoCopyWith(
          _ScheduleDetailDto value, $Res Function(_ScheduleDetailDto) then) =
      __$ScheduleDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int startPeriodTimestamp,
      int endPeriodTimestamp,
      String id,
      String scheduleId,
      String startPeriod,
      String endPeriod,
      DateTime createdAt,
      DateTime updatedAt,
      List<BookingInfoDto> bookingInfo,
      bool isBooked});
}

/// @nodoc
class __$ScheduleDetailDtoCopyWithImpl<$Res>
    extends _$ScheduleDetailDtoCopyWithImpl<$Res>
    implements _$ScheduleDetailDtoCopyWith<$Res> {
  __$ScheduleDetailDtoCopyWithImpl(
      _ScheduleDetailDto _value, $Res Function(_ScheduleDetailDto) _then)
      : super(_value, (v) => _then(v as _ScheduleDetailDto));

  @override
  _ScheduleDetailDto get _value => super._value as _ScheduleDetailDto;

  @override
  $Res call({
    Object? startPeriodTimestamp = freezed,
    Object? endPeriodTimestamp = freezed,
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? startPeriod = freezed,
    Object? endPeriod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookingInfo = freezed,
    Object? isBooked = freezed,
  }) {
    return _then(_ScheduleDetailDto(
      startPeriodTimestamp: startPeriodTimestamp == freezed
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endPeriodTimestamp: endPeriodTimestamp == freezed
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      startPeriod: startPeriod == freezed
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      endPeriod: endPeriod == freezed
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingInfo: bookingInfo == freezed
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as List<BookingInfoDto>,
      isBooked: isBooked == freezed
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDetailDto implements _ScheduleDetailDto {
  const _$_ScheduleDetailDto(
      {required this.startPeriodTimestamp,
      required this.endPeriodTimestamp,
      required this.id,
      required this.scheduleId,
      required this.startPeriod,
      required this.endPeriod,
      required this.createdAt,
      required this.updatedAt,
      required this.bookingInfo,
      required this.isBooked});

  factory _$_ScheduleDetailDto.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDetailDtoFromJson(json);

  @override
  final int startPeriodTimestamp;
  @override
  final int endPeriodTimestamp;
  @override
  final String id;
  @override
  final String scheduleId;
  @override
  final String startPeriod;
  @override
  final String endPeriod;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final List<BookingInfoDto> bookingInfo;
  @override
  final bool isBooked;

  @override
  String toString() {
    return 'ScheduleDetailDto(startPeriodTimestamp: $startPeriodTimestamp, endPeriodTimestamp: $endPeriodTimestamp, id: $id, scheduleId: $scheduleId, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, updatedAt: $updatedAt, bookingInfo: $bookingInfo, isBooked: $isBooked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScheduleDetailDto &&
            const DeepCollectionEquality()
                .equals(other.startPeriodTimestamp, startPeriodTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.endPeriodTimestamp, endPeriodTimestamp) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.scheduleId, scheduleId) &&
            const DeepCollectionEquality()
                .equals(other.startPeriod, startPeriod) &&
            const DeepCollectionEquality().equals(other.endPeriod, endPeriod) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.bookingInfo, bookingInfo) &&
            const DeepCollectionEquality().equals(other.isBooked, isBooked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startPeriodTimestamp),
      const DeepCollectionEquality().hash(endPeriodTimestamp),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(scheduleId),
      const DeepCollectionEquality().hash(startPeriod),
      const DeepCollectionEquality().hash(endPeriod),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(bookingInfo),
      const DeepCollectionEquality().hash(isBooked));

  @JsonKey(ignore: true)
  @override
  _$ScheduleDetailDtoCopyWith<_ScheduleDetailDto> get copyWith =>
      __$ScheduleDetailDtoCopyWithImpl<_ScheduleDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDetailDtoToJson(this);
  }
}

abstract class _ScheduleDetailDto implements ScheduleDetailDto {
  const factory _ScheduleDetailDto(
      {required int startPeriodTimestamp,
      required int endPeriodTimestamp,
      required String id,
      required String scheduleId,
      required String startPeriod,
      required String endPeriod,
      required DateTime createdAt,
      required DateTime updatedAt,
      required List<BookingInfoDto> bookingInfo,
      required bool isBooked}) = _$_ScheduleDetailDto;

  factory _ScheduleDetailDto.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDetailDto.fromJson;

  @override
  int get startPeriodTimestamp;
  @override
  int get endPeriodTimestamp;
  @override
  String get id;
  @override
  String get scheduleId;
  @override
  String get startPeriod;
  @override
  String get endPeriod;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<BookingInfoDto> get bookingInfo;
  @override
  bool get isBooked;
  @override
  @JsonKey(ignore: true)
  _$ScheduleDetailDtoCopyWith<_ScheduleDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

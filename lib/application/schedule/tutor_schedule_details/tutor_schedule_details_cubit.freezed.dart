// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_schedule_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TutorScheduleDetailsStateTearOff {
  const _$TutorScheduleDetailsStateTearOff();

  _TutorScheduleDetailsState call(
      {dynamic isLoading = false,
      Either<Failure, Unit>? scheduleFailureOrSuccess = null,
      dynamic note = '',
      required Schedule schedule}) {
    return _TutorScheduleDetailsState(
      isLoading: isLoading,
      scheduleFailureOrSuccess: scheduleFailureOrSuccess,
      note: note,
      schedule: schedule,
    );
  }
}

/// @nodoc
const $TutorScheduleDetailsState = _$TutorScheduleDetailsStateTearOff();

/// @nodoc
mixin _$TutorScheduleDetailsState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, Unit>? get scheduleFailureOrSuccess =>
      throw _privateConstructorUsedError;
  dynamic get note => throw _privateConstructorUsedError;
  Schedule get schedule => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorScheduleDetailsStateCopyWith<TutorScheduleDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorScheduleDetailsStateCopyWith<$Res> {
  factory $TutorScheduleDetailsStateCopyWith(TutorScheduleDetailsState value,
          $Res Function(TutorScheduleDetailsState) then) =
      _$TutorScheduleDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      Either<Failure, Unit>? scheduleFailureOrSuccess,
      dynamic note,
      Schedule schedule});

  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class _$TutorScheduleDetailsStateCopyWithImpl<$Res>
    implements $TutorScheduleDetailsStateCopyWith<$Res> {
  _$TutorScheduleDetailsStateCopyWithImpl(this._value, this._then);

  final TutorScheduleDetailsState _value;
  // ignore: unused_field
  final $Res Function(TutorScheduleDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? scheduleFailureOrSuccess = freezed,
    Object? note = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scheduleFailureOrSuccess: scheduleFailureOrSuccess == freezed
          ? _value.scheduleFailureOrSuccess
          : scheduleFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as dynamic,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
    ));
  }

  @override
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }
}

/// @nodoc
abstract class _$TutorScheduleDetailsStateCopyWith<$Res>
    implements $TutorScheduleDetailsStateCopyWith<$Res> {
  factory _$TutorScheduleDetailsStateCopyWith(_TutorScheduleDetailsState value,
          $Res Function(_TutorScheduleDetailsState) then) =
      __$TutorScheduleDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      Either<Failure, Unit>? scheduleFailureOrSuccess,
      dynamic note,
      Schedule schedule});

  @override
  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class __$TutorScheduleDetailsStateCopyWithImpl<$Res>
    extends _$TutorScheduleDetailsStateCopyWithImpl<$Res>
    implements _$TutorScheduleDetailsStateCopyWith<$Res> {
  __$TutorScheduleDetailsStateCopyWithImpl(_TutorScheduleDetailsState _value,
      $Res Function(_TutorScheduleDetailsState) _then)
      : super(_value, (v) => _then(v as _TutorScheduleDetailsState));

  @override
  _TutorScheduleDetailsState get _value =>
      super._value as _TutorScheduleDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? scheduleFailureOrSuccess = freezed,
    Object? note = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_TutorScheduleDetailsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      scheduleFailureOrSuccess: scheduleFailureOrSuccess == freezed
          ? _value.scheduleFailureOrSuccess
          : scheduleFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
      note: note == freezed ? _value.note : note,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
    ));
  }
}

/// @nodoc

class _$_TutorScheduleDetailsState implements _TutorScheduleDetailsState {
  const _$_TutorScheduleDetailsState(
      {this.isLoading = false,
      this.scheduleFailureOrSuccess = null,
      this.note = '',
      required this.schedule});

  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final Either<Failure, Unit>? scheduleFailureOrSuccess;
  @JsonKey()
  @override
  final dynamic note;
  @override
  final Schedule schedule;

  @override
  String toString() {
    return 'TutorScheduleDetailsState(isLoading: $isLoading, scheduleFailureOrSuccess: $scheduleFailureOrSuccess, note: $note, schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TutorScheduleDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.scheduleFailureOrSuccess, scheduleFailureOrSuccess) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.schedule, schedule));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(scheduleFailureOrSuccess),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(schedule));

  @JsonKey(ignore: true)
  @override
  _$TutorScheduleDetailsStateCopyWith<_TutorScheduleDetailsState>
      get copyWith =>
          __$TutorScheduleDetailsStateCopyWithImpl<_TutorScheduleDetailsState>(
              this, _$identity);
}

abstract class _TutorScheduleDetailsState implements TutorScheduleDetailsState {
  const factory _TutorScheduleDetailsState(
      {dynamic isLoading,
      Either<Failure, Unit>? scheduleFailureOrSuccess,
      dynamic note,
      required Schedule schedule}) = _$_TutorScheduleDetailsState;

  @override
  dynamic get isLoading;
  @override
  Either<Failure, Unit>? get scheduleFailureOrSuccess;
  @override
  dynamic get note;
  @override
  Schedule get schedule;
  @override
  @JsonKey(ignore: true)
  _$TutorScheduleDetailsStateCopyWith<_TutorScheduleDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}

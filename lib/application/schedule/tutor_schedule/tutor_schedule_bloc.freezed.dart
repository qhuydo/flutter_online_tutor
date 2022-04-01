// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TutorScheduleEventTearOff {
  const _$TutorScheduleEventTearOff();

  _Initialise initialise(String tutorId) {
    return _Initialise(
      tutorId,
    );
  }

  _DateSelected dateSelected(
      {required DateTime selectedDay, required DateTime focusedDay}) {
    return _DateSelected(
      selectedDay: selectedDay,
      focusedDay: focusedDay,
    );
  }

  _FormatChanged formatChanged({required CalendarFormat format}) {
    return _FormatChanged(
      format: format,
    );
  }
}

/// @nodoc
const $TutorScheduleEvent = _$TutorScheduleEventTearOff();

/// @nodoc
mixin _$TutorScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tutorId) initialise,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        dateSelected,
    required TResult Function(CalendarFormat format) formatChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_FormatChanged value) formatChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_FormatChanged value)? formatChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_FormatChanged value)? formatChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorScheduleEventCopyWith<$Res> {
  factory $TutorScheduleEventCopyWith(
          TutorScheduleEvent value, $Res Function(TutorScheduleEvent) then) =
      _$TutorScheduleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TutorScheduleEventCopyWithImpl<$Res>
    implements $TutorScheduleEventCopyWith<$Res> {
  _$TutorScheduleEventCopyWithImpl(this._value, this._then);

  final TutorScheduleEvent _value;
  // ignore: unused_field
  final $Res Function(TutorScheduleEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
  $Res call({String tutorId});
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$TutorScheduleEventCopyWithImpl<$Res>
    implements _$InitialiseCopyWith<$Res> {
  __$InitialiseCopyWithImpl(
      _Initialise _value, $Res Function(_Initialise) _then)
      : super(_value, (v) => _then(v as _Initialise));

  @override
  _Initialise get _value => super._value as _Initialise;

  @override
  $Res call({
    Object? tutorId = freezed,
  }) {
    return _then(_Initialise(
      tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialise implements _Initialise {
  const _$_Initialise(this.tutorId);

  @override
  final String tutorId;

  @override
  String toString() {
    return 'TutorScheduleEvent.initialise(tutorId: $tutorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialise &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tutorId));

  @JsonKey(ignore: true)
  @override
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      __$InitialiseCopyWithImpl<_Initialise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tutorId) initialise,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        dateSelected,
    required TResult Function(CalendarFormat format) formatChanged,
  }) {
    return initialise(tutorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
  }) {
    return initialise?.call(tutorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(tutorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_FormatChanged value) formatChanged,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_FormatChanged value)? formatChanged,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_FormatChanged value)? formatChanged,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements TutorScheduleEvent {
  const factory _Initialise(String tutorId) = _$_Initialise;

  String get tutorId;
  @JsonKey(ignore: true)
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DateSelectedCopyWith<$Res> {
  factory _$DateSelectedCopyWith(
          _DateSelected value, $Res Function(_DateSelected) then) =
      __$DateSelectedCopyWithImpl<$Res>;
  $Res call({DateTime selectedDay, DateTime focusedDay});
}

/// @nodoc
class __$DateSelectedCopyWithImpl<$Res>
    extends _$TutorScheduleEventCopyWithImpl<$Res>
    implements _$DateSelectedCopyWith<$Res> {
  __$DateSelectedCopyWithImpl(
      _DateSelected _value, $Res Function(_DateSelected) _then)
      : super(_value, (v) => _then(v as _DateSelected));

  @override
  _DateSelected get _value => super._value as _DateSelected;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
  }) {
    return _then(_DateSelected(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateSelected implements _DateSelected {
  const _$_DateSelected({required this.selectedDay, required this.focusedDay});

  @override
  final DateTime selectedDay;
  @override
  final DateTime focusedDay;

  @override
  String toString() {
    return 'TutorScheduleEvent.dateSelected(selectedDay: $selectedDay, focusedDay: $focusedDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateSelected &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(focusedDay));

  @JsonKey(ignore: true)
  @override
  _$DateSelectedCopyWith<_DateSelected> get copyWith =>
      __$DateSelectedCopyWithImpl<_DateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tutorId) initialise,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        dateSelected,
    required TResult Function(CalendarFormat format) formatChanged,
  }) {
    return dateSelected(selectedDay, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
  }) {
    return dateSelected?.call(selectedDay, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(selectedDay, focusedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_FormatChanged value) formatChanged,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_FormatChanged value)? formatChanged,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_FormatChanged value)? formatChanged,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements TutorScheduleEvent {
  const factory _DateSelected(
      {required DateTime selectedDay,
      required DateTime focusedDay}) = _$_DateSelected;

  DateTime get selectedDay;
  DateTime get focusedDay;
  @JsonKey(ignore: true)
  _$DateSelectedCopyWith<_DateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FormatChangedCopyWith<$Res> {
  factory _$FormatChangedCopyWith(
          _FormatChanged value, $Res Function(_FormatChanged) then) =
      __$FormatChangedCopyWithImpl<$Res>;
  $Res call({CalendarFormat format});
}

/// @nodoc
class __$FormatChangedCopyWithImpl<$Res>
    extends _$TutorScheduleEventCopyWithImpl<$Res>
    implements _$FormatChangedCopyWith<$Res> {
  __$FormatChangedCopyWithImpl(
      _FormatChanged _value, $Res Function(_FormatChanged) _then)
      : super(_value, (v) => _then(v as _FormatChanged));

  @override
  _FormatChanged get _value => super._value as _FormatChanged;

  @override
  $Res call({
    Object? format = freezed,
  }) {
    return _then(_FormatChanged(
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
    ));
  }
}

/// @nodoc

class _$_FormatChanged implements _FormatChanged {
  const _$_FormatChanged({required this.format});

  @override
  final CalendarFormat format;

  @override
  String toString() {
    return 'TutorScheduleEvent.formatChanged(format: $format)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormatChanged &&
            const DeepCollectionEquality().equals(other.format, format));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(format));

  @JsonKey(ignore: true)
  @override
  _$FormatChangedCopyWith<_FormatChanged> get copyWith =>
      __$FormatChangedCopyWithImpl<_FormatChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tutorId) initialise,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        dateSelected,
    required TResult Function(CalendarFormat format) formatChanged,
  }) {
    return formatChanged(format);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
  }) {
    return formatChanged?.call(format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
    required TResult orElse(),
  }) {
    if (formatChanged != null) {
      return formatChanged(format);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_FormatChanged value) formatChanged,
  }) {
    return formatChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_FormatChanged value)? formatChanged,
  }) {
    return formatChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_FormatChanged value)? formatChanged,
    required TResult orElse(),
  }) {
    if (formatChanged != null) {
      return formatChanged(this);
    }
    return orElse();
  }
}

abstract class _FormatChanged implements TutorScheduleEvent {
  const factory _FormatChanged({required CalendarFormat format}) =
      _$_FormatChanged;

  CalendarFormat get format;
  @JsonKey(ignore: true)
  _$FormatChangedCopyWith<_FormatChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TutorScheduleStateTearOff {
  const _$TutorScheduleStateTearOff();

  _TutorSchedulePage call(
      {String? tutorId,
      bool isLoading = false,
      required CalendarFormat format,
      required DateTime focusedDay,
      DateTime? selectedDay,
      required DateTime firstDay,
      required DateTime lastDay,
      Either<Failure, Map<DateTime, List<Schedule>>> scheduleOrFailure =
          const Right({})}) {
    return _TutorSchedulePage(
      tutorId: tutorId,
      isLoading: isLoading,
      format: format,
      focusedDay: focusedDay,
      selectedDay: selectedDay,
      firstDay: firstDay,
      lastDay: lastDay,
      scheduleOrFailure: scheduleOrFailure,
    );
  }
}

/// @nodoc
const $TutorScheduleState = _$TutorScheduleStateTearOff();

/// @nodoc
mixin _$TutorScheduleState {
  String? get tutorId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  CalendarFormat get format => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  DateTime get firstDay => throw _privateConstructorUsedError;
  DateTime get lastDay => throw _privateConstructorUsedError;
  Either<Failure, Map<DateTime, List<Schedule>>> get scheduleOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorScheduleStateCopyWith<TutorScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorScheduleStateCopyWith<$Res> {
  factory $TutorScheduleStateCopyWith(
          TutorScheduleState value, $Res Function(TutorScheduleState) then) =
      _$TutorScheduleStateCopyWithImpl<$Res>;
  $Res call(
      {String? tutorId,
      bool isLoading,
      CalendarFormat format,
      DateTime focusedDay,
      DateTime? selectedDay,
      DateTime firstDay,
      DateTime lastDay,
      Either<Failure, Map<DateTime, List<Schedule>>> scheduleOrFailure});
}

/// @nodoc
class _$TutorScheduleStateCopyWithImpl<$Res>
    implements $TutorScheduleStateCopyWith<$Res> {
  _$TutorScheduleStateCopyWithImpl(this._value, this._then);

  final TutorScheduleState _value;
  // ignore: unused_field
  final $Res Function(TutorScheduleState) _then;

  @override
  $Res call({
    Object? tutorId = freezed,
    Object? isLoading = freezed,
    Object? format = freezed,
    Object? focusedDay = freezed,
    Object? selectedDay = freezed,
    Object? firstDay = freezed,
    Object? lastDay = freezed,
    Object? scheduleOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      firstDay: firstDay == freezed
          ? _value.firstDay
          : firstDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastDay: lastDay == freezed
          ? _value.lastDay
          : lastDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleOrFailure: scheduleOrFailure == freezed
          ? _value.scheduleOrFailure
          : scheduleOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Map<DateTime, List<Schedule>>>,
    ));
  }
}

/// @nodoc
abstract class _$TutorSchedulePageCopyWith<$Res>
    implements $TutorScheduleStateCopyWith<$Res> {
  factory _$TutorSchedulePageCopyWith(
          _TutorSchedulePage value, $Res Function(_TutorSchedulePage) then) =
      __$TutorSchedulePageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? tutorId,
      bool isLoading,
      CalendarFormat format,
      DateTime focusedDay,
      DateTime? selectedDay,
      DateTime firstDay,
      DateTime lastDay,
      Either<Failure, Map<DateTime, List<Schedule>>> scheduleOrFailure});
}

/// @nodoc
class __$TutorSchedulePageCopyWithImpl<$Res>
    extends _$TutorScheduleStateCopyWithImpl<$Res>
    implements _$TutorSchedulePageCopyWith<$Res> {
  __$TutorSchedulePageCopyWithImpl(
      _TutorSchedulePage _value, $Res Function(_TutorSchedulePage) _then)
      : super(_value, (v) => _then(v as _TutorSchedulePage));

  @override
  _TutorSchedulePage get _value => super._value as _TutorSchedulePage;

  @override
  $Res call({
    Object? tutorId = freezed,
    Object? isLoading = freezed,
    Object? format = freezed,
    Object? focusedDay = freezed,
    Object? selectedDay = freezed,
    Object? firstDay = freezed,
    Object? lastDay = freezed,
    Object? scheduleOrFailure = freezed,
  }) {
    return _then(_TutorSchedulePage(
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      firstDay: firstDay == freezed
          ? _value.firstDay
          : firstDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastDay: lastDay == freezed
          ? _value.lastDay
          : lastDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleOrFailure: scheduleOrFailure == freezed
          ? _value.scheduleOrFailure
          : scheduleOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Map<DateTime, List<Schedule>>>,
    ));
  }
}

/// @nodoc

class _$_TutorSchedulePage extends _TutorSchedulePage {
  const _$_TutorSchedulePage(
      {this.tutorId,
      this.isLoading = false,
      required this.format,
      required this.focusedDay,
      this.selectedDay,
      required this.firstDay,
      required this.lastDay,
      this.scheduleOrFailure = const Right({})})
      : super._();

  @override
  final String? tutorId;
  @JsonKey()
  @override
  final bool isLoading;
  @override
  final CalendarFormat format;
  @override
  final DateTime focusedDay;
  @override
  final DateTime? selectedDay;
  @override
  final DateTime firstDay;
  @override
  final DateTime lastDay;
  @JsonKey()
  @override
  final Either<Failure, Map<DateTime, List<Schedule>>> scheduleOrFailure;

  @override
  String toString() {
    return 'TutorScheduleState(tutorId: $tutorId, isLoading: $isLoading, format: $format, focusedDay: $focusedDay, selectedDay: $selectedDay, firstDay: $firstDay, lastDay: $lastDay, scheduleOrFailure: $scheduleOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TutorSchedulePage &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality().equals(other.firstDay, firstDay) &&
            const DeepCollectionEquality().equals(other.lastDay, lastDay) &&
            const DeepCollectionEquality()
                .equals(other.scheduleOrFailure, scheduleOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tutorId),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(format),
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(firstDay),
      const DeepCollectionEquality().hash(lastDay),
      const DeepCollectionEquality().hash(scheduleOrFailure));

  @JsonKey(ignore: true)
  @override
  _$TutorSchedulePageCopyWith<_TutorSchedulePage> get copyWith =>
      __$TutorSchedulePageCopyWithImpl<_TutorSchedulePage>(this, _$identity);
}

abstract class _TutorSchedulePage extends TutorScheduleState {
  const factory _TutorSchedulePage(
          {String? tutorId,
          bool isLoading,
          required CalendarFormat format,
          required DateTime focusedDay,
          DateTime? selectedDay,
          required DateTime firstDay,
          required DateTime lastDay,
          Either<Failure, Map<DateTime, List<Schedule>>> scheduleOrFailure}) =
      _$_TutorSchedulePage;
  const _TutorSchedulePage._() : super._();

  @override
  String? get tutorId;
  @override
  bool get isLoading;
  @override
  CalendarFormat get format;
  @override
  DateTime get focusedDay;
  @override
  DateTime? get selectedDay;
  @override
  DateTime get firstDay;
  @override
  DateTime get lastDay;
  @override
  Either<Failure, Map<DateTime, List<Schedule>>> get scheduleOrFailure;
  @override
  @JsonKey(ignore: true)
  _$TutorSchedulePageCopyWith<_TutorSchedulePage> get copyWith =>
      throw _privateConstructorUsedError;
}

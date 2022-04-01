// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TutorDetailsEventTearOff {
  const _$TutorDetailsEventTearOff();

  _Initialise initialise(String tutorId) {
    return _Initialise(
      tutorId,
    );
  }

  _ToggleFavourite toggleFavourite() {
    return const _ToggleFavourite();
  }
}

/// @nodoc
const $TutorDetailsEvent = _$TutorDetailsEventTearOff();

/// @nodoc
mixin _$TutorDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tutorId) initialise,
    required TResult Function() toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function()? toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function()? toggleFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_ToggleFavourite value) toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_ToggleFavourite value)? toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorDetailsEventCopyWith<$Res> {
  factory $TutorDetailsEventCopyWith(
          TutorDetailsEvent value, $Res Function(TutorDetailsEvent) then) =
      _$TutorDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TutorDetailsEventCopyWithImpl<$Res>
    implements $TutorDetailsEventCopyWith<$Res> {
  _$TutorDetailsEventCopyWithImpl(this._value, this._then);

  final TutorDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(TutorDetailsEvent) _then;
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
    extends _$TutorDetailsEventCopyWithImpl<$Res>
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
    return 'TutorDetailsEvent.initialise(tutorId: $tutorId)';
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
    required TResult Function() toggleFavourite,
  }) {
    return initialise(tutorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function()? toggleFavourite,
  }) {
    return initialise?.call(tutorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function()? toggleFavourite,
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
    required TResult Function(_ToggleFavourite value) toggleFavourite,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_ToggleFavourite value)? toggleFavourite,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements TutorDetailsEvent {
  const factory _Initialise(String tutorId) = _$_Initialise;

  String get tutorId;
  @JsonKey(ignore: true)
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleFavouriteCopyWith<$Res> {
  factory _$ToggleFavouriteCopyWith(
          _ToggleFavourite value, $Res Function(_ToggleFavourite) then) =
      __$ToggleFavouriteCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToggleFavouriteCopyWithImpl<$Res>
    extends _$TutorDetailsEventCopyWithImpl<$Res>
    implements _$ToggleFavouriteCopyWith<$Res> {
  __$ToggleFavouriteCopyWithImpl(
      _ToggleFavourite _value, $Res Function(_ToggleFavourite) _then)
      : super(_value, (v) => _then(v as _ToggleFavourite));

  @override
  _ToggleFavourite get _value => super._value as _ToggleFavourite;
}

/// @nodoc

class _$_ToggleFavourite implements _ToggleFavourite {
  const _$_ToggleFavourite();

  @override
  String toString() {
    return 'TutorDetailsEvent.toggleFavourite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ToggleFavourite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tutorId) initialise,
    required TResult Function() toggleFavourite,
  }) {
    return toggleFavourite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function()? toggleFavourite,
  }) {
    return toggleFavourite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tutorId)? initialise,
    TResult Function()? toggleFavourite,
    required TResult orElse(),
  }) {
    if (toggleFavourite != null) {
      return toggleFavourite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_ToggleFavourite value) toggleFavourite,
  }) {
    return toggleFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_ToggleFavourite value)? toggleFavourite,
  }) {
    return toggleFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_ToggleFavourite value)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (toggleFavourite != null) {
      return toggleFavourite(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavourite implements TutorDetailsEvent {
  const factory _ToggleFavourite() = _$_ToggleFavourite;
}

/// @nodoc
class _$TutorDetailsStateTearOff {
  const _$TutorDetailsStateTearOff();

  _TutorDetailsState call(
      {dynamic isLoading = false,
      dynamic isTutorScheduleLoading = false,
      required Either<Failure, Tutor> tutorOrFailure}) {
    return _TutorDetailsState(
      isLoading: isLoading,
      isTutorScheduleLoading: isTutorScheduleLoading,
      tutorOrFailure: tutorOrFailure,
    );
  }
}

/// @nodoc
const $TutorDetailsState = _$TutorDetailsStateTearOff();

/// @nodoc
mixin _$TutorDetailsState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  dynamic get isTutorScheduleLoading => throw _privateConstructorUsedError;
  Either<Failure, Tutor> get tutorOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorDetailsStateCopyWith<TutorDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorDetailsStateCopyWith<$Res> {
  factory $TutorDetailsStateCopyWith(
          TutorDetailsState value, $Res Function(TutorDetailsState) then) =
      _$TutorDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      dynamic isTutorScheduleLoading,
      Either<Failure, Tutor> tutorOrFailure});
}

/// @nodoc
class _$TutorDetailsStateCopyWithImpl<$Res>
    implements $TutorDetailsStateCopyWith<$Res> {
  _$TutorDetailsStateCopyWithImpl(this._value, this._then);

  final TutorDetailsState _value;
  // ignore: unused_field
  final $Res Function(TutorDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isTutorScheduleLoading = freezed,
    Object? tutorOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isTutorScheduleLoading: isTutorScheduleLoading == freezed
          ? _value.isTutorScheduleLoading
          : isTutorScheduleLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tutorOrFailure: tutorOrFailure == freezed
          ? _value.tutorOrFailure
          : tutorOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Tutor>,
    ));
  }
}

/// @nodoc
abstract class _$TutorDetailsStateCopyWith<$Res>
    implements $TutorDetailsStateCopyWith<$Res> {
  factory _$TutorDetailsStateCopyWith(
          _TutorDetailsState value, $Res Function(_TutorDetailsState) then) =
      __$TutorDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      dynamic isTutorScheduleLoading,
      Either<Failure, Tutor> tutorOrFailure});
}

/// @nodoc
class __$TutorDetailsStateCopyWithImpl<$Res>
    extends _$TutorDetailsStateCopyWithImpl<$Res>
    implements _$TutorDetailsStateCopyWith<$Res> {
  __$TutorDetailsStateCopyWithImpl(
      _TutorDetailsState _value, $Res Function(_TutorDetailsState) _then)
      : super(_value, (v) => _then(v as _TutorDetailsState));

  @override
  _TutorDetailsState get _value => super._value as _TutorDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isTutorScheduleLoading = freezed,
    Object? tutorOrFailure = freezed,
  }) {
    return _then(_TutorDetailsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      isTutorScheduleLoading: isTutorScheduleLoading == freezed
          ? _value.isTutorScheduleLoading
          : isTutorScheduleLoading,
      tutorOrFailure: tutorOrFailure == freezed
          ? _value.tutorOrFailure
          : tutorOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Tutor>,
    ));
  }
}

/// @nodoc

class _$_TutorDetailsState implements _TutorDetailsState {
  const _$_TutorDetailsState(
      {this.isLoading = false,
      this.isTutorScheduleLoading = false,
      required this.tutorOrFailure});

  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final dynamic isTutorScheduleLoading;
  @override
  final Either<Failure, Tutor> tutorOrFailure;

  @override
  String toString() {
    return 'TutorDetailsState(isLoading: $isLoading, isTutorScheduleLoading: $isTutorScheduleLoading, tutorOrFailure: $tutorOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TutorDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isTutorScheduleLoading, isTutorScheduleLoading) &&
            const DeepCollectionEquality()
                .equals(other.tutorOrFailure, tutorOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isTutorScheduleLoading),
      const DeepCollectionEquality().hash(tutorOrFailure));

  @JsonKey(ignore: true)
  @override
  _$TutorDetailsStateCopyWith<_TutorDetailsState> get copyWith =>
      __$TutorDetailsStateCopyWithImpl<_TutorDetailsState>(this, _$identity);
}

abstract class _TutorDetailsState implements TutorDetailsState {
  const factory _TutorDetailsState(
      {dynamic isLoading,
      dynamic isTutorScheduleLoading,
      required Either<Failure, Tutor> tutorOrFailure}) = _$_TutorDetailsState;

  @override
  dynamic get isLoading;
  @override
  dynamic get isTutorScheduleLoading;
  @override
  Either<Failure, Tutor> get tutorOrFailure;
  @override
  @JsonKey(ignore: true)
  _$TutorDetailsStateCopyWith<_TutorDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

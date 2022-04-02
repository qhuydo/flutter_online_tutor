// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upcoming_class_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpcomingClassEventTearOff {
  const _$UpcomingClassEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
  }
}

/// @nodoc
const $UpcomingClassEvent = _$UpcomingClassEventTearOff();

/// @nodoc
mixin _$UpcomingClassEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingClassEventCopyWith<$Res> {
  factory $UpcomingClassEventCopyWith(
          UpcomingClassEvent value, $Res Function(UpcomingClassEvent) then) =
      _$UpcomingClassEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpcomingClassEventCopyWithImpl<$Res>
    implements $UpcomingClassEventCopyWith<$Res> {
  _$UpcomingClassEventCopyWithImpl(this._value, this._then);

  final UpcomingClassEvent _value;
  // ignore: unused_field
  final $Res Function(UpcomingClassEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$UpcomingClassEventCopyWithImpl<$Res>
    implements _$InitialiseCopyWith<$Res> {
  __$InitialiseCopyWithImpl(
      _Initialise _value, $Res Function(_Initialise) _then)
      : super(_value, (v) => _then(v as _Initialise));

  @override
  _Initialise get _value => super._value as _Initialise;
}

/// @nodoc

class _$_Initialise implements _Initialise {
  const _$_Initialise();

  @override
  String toString() {
    return 'UpcomingClassEvent.initialise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
  }) {
    return initialise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements UpcomingClassEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
class _$UpcomingClassStateTearOff {
  const _$UpcomingClassStateTearOff();

  _UpcomingClassState call(
      {dynamic isLoading = false,
      Either<Failure, List<Appointment>> classOrFailure = const Right([])}) {
    return _UpcomingClassState(
      isLoading: isLoading,
      classOrFailure: classOrFailure,
    );
  }
}

/// @nodoc
const $UpcomingClassState = _$UpcomingClassStateTearOff();

/// @nodoc
mixin _$UpcomingClassState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, List<Appointment>> get classOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpcomingClassStateCopyWith<UpcomingClassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingClassStateCopyWith<$Res> {
  factory $UpcomingClassStateCopyWith(
          UpcomingClassState value, $Res Function(UpcomingClassState) then) =
      _$UpcomingClassStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading, Either<Failure, List<Appointment>> classOrFailure});
}

/// @nodoc
class _$UpcomingClassStateCopyWithImpl<$Res>
    implements $UpcomingClassStateCopyWith<$Res> {
  _$UpcomingClassStateCopyWithImpl(this._value, this._then);

  final UpcomingClassState _value;
  // ignore: unused_field
  final $Res Function(UpcomingClassState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? classOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classOrFailure: classOrFailure == freezed
          ? _value.classOrFailure
          : classOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Appointment>>,
    ));
  }
}

/// @nodoc
abstract class _$UpcomingClassStateCopyWith<$Res>
    implements $UpcomingClassStateCopyWith<$Res> {
  factory _$UpcomingClassStateCopyWith(
          _UpcomingClassState value, $Res Function(_UpcomingClassState) then) =
      __$UpcomingClassStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading, Either<Failure, List<Appointment>> classOrFailure});
}

/// @nodoc
class __$UpcomingClassStateCopyWithImpl<$Res>
    extends _$UpcomingClassStateCopyWithImpl<$Res>
    implements _$UpcomingClassStateCopyWith<$Res> {
  __$UpcomingClassStateCopyWithImpl(
      _UpcomingClassState _value, $Res Function(_UpcomingClassState) _then)
      : super(_value, (v) => _then(v as _UpcomingClassState));

  @override
  _UpcomingClassState get _value => super._value as _UpcomingClassState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? classOrFailure = freezed,
  }) {
    return _then(_UpcomingClassState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      classOrFailure: classOrFailure == freezed
          ? _value.classOrFailure
          : classOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Appointment>>,
    ));
  }
}

/// @nodoc

class _$_UpcomingClassState extends _UpcomingClassState {
  const _$_UpcomingClassState(
      {this.isLoading = false, this.classOrFailure = const Right([])})
      : super._();

  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final Either<Failure, List<Appointment>> classOrFailure;

  @override
  String toString() {
    return 'UpcomingClassState(isLoading: $isLoading, classOrFailure: $classOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpcomingClassState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.classOrFailure, classOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(classOrFailure));

  @JsonKey(ignore: true)
  @override
  _$UpcomingClassStateCopyWith<_UpcomingClassState> get copyWith =>
      __$UpcomingClassStateCopyWithImpl<_UpcomingClassState>(this, _$identity);
}

abstract class _UpcomingClassState extends UpcomingClassState {
  const factory _UpcomingClassState(
          {dynamic isLoading,
          Either<Failure, List<Appointment>> classOrFailure}) =
      _$_UpcomingClassState;
  const _UpcomingClassState._() : super._();

  @override
  dynamic get isLoading;
  @override
  Either<Failure, List<Appointment>> get classOrFailure;
  @override
  @JsonKey(ignore: true)
  _$UpcomingClassStateCopyWith<_UpcomingClassState> get copyWith =>
      throw _privateConstructorUsedError;
}

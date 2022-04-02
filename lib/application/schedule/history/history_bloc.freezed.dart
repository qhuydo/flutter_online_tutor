// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryEventTearOff {
  const _$HistoryEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
  }
}

/// @nodoc
const $HistoryEvent = _$HistoryEventTearOff();

/// @nodoc
mixin _$HistoryEvent {
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
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res> implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  final HistoryEvent _value;
  // ignore: unused_field
  final $Res Function(HistoryEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res> extends _$HistoryEventCopyWithImpl<$Res>
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
    return 'HistoryEvent.initialise()';
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

abstract class _Initialise implements HistoryEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  _HistoryState call(
      {dynamic isLoading = false,
      Either<Failure, List<Appointment>> classOrFailure = const Right([])}) {
    return _HistoryState(
      isLoading: isLoading,
      classOrFailure: classOrFailure,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, List<Appointment>> get classOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading, Either<Failure, List<Appointment>> classOrFailure});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

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
abstract class _$HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(
          _HistoryState value, $Res Function(_HistoryState) then) =
      __$HistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading, Either<Failure, List<Appointment>> classOrFailure});
}

/// @nodoc
class __$HistoryStateCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(
      _HistoryState _value, $Res Function(_HistoryState) _then)
      : super(_value, (v) => _then(v as _HistoryState));

  @override
  _HistoryState get _value => super._value as _HistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? classOrFailure = freezed,
  }) {
    return _then(_HistoryState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      classOrFailure: classOrFailure == freezed
          ? _value.classOrFailure
          : classOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Appointment>>,
    ));
  }
}

/// @nodoc

class _$_HistoryState extends _HistoryState {
  const _$_HistoryState(
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
    return 'HistoryState(isLoading: $isLoading, classOrFailure: $classOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryState &&
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
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);
}

abstract class _HistoryState extends HistoryState {
  const factory _HistoryState(
      {dynamic isLoading,
      Either<Failure, List<Appointment>> classOrFailure}) = _$_HistoryState;
  const _HistoryState._() : super._();

  @override
  dynamic get isLoading;
  @override
  Either<Failure, List<Appointment>> get classOrFailure;
  @override
  @JsonKey(ignore: true)
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

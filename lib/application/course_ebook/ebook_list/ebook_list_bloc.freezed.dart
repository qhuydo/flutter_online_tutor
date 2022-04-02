// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ebook_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EbookListEventTearOff {
  const _$EbookListEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
  }
}

/// @nodoc
const $EbookListEvent = _$EbookListEventTearOff();

/// @nodoc
mixin _$EbookListEvent {
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
abstract class $EbookListEventCopyWith<$Res> {
  factory $EbookListEventCopyWith(
          EbookListEvent value, $Res Function(EbookListEvent) then) =
      _$EbookListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EbookListEventCopyWithImpl<$Res>
    implements $EbookListEventCopyWith<$Res> {
  _$EbookListEventCopyWithImpl(this._value, this._then);

  final EbookListEvent _value;
  // ignore: unused_field
  final $Res Function(EbookListEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res> extends _$EbookListEventCopyWithImpl<$Res>
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
    return 'EbookListEvent.initialise()';
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

abstract class _Initialise implements EbookListEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
class _$EbookListStateTearOff {
  const _$EbookListStateTearOff();

  _EbookListState call(
      {dynamic isLoading = false,
      Either<Failure, List<Ebook>> listOrFailure = const Right([])}) {
    return _EbookListState(
      isLoading: isLoading,
      listOrFailure: listOrFailure,
    );
  }
}

/// @nodoc
const $EbookListState = _$EbookListStateTearOff();

/// @nodoc
mixin _$EbookListState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, List<Ebook>> get listOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EbookListStateCopyWith<EbookListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookListStateCopyWith<$Res> {
  factory $EbookListStateCopyWith(
          EbookListState value, $Res Function(EbookListState) then) =
      _$EbookListStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoading, Either<Failure, List<Ebook>> listOrFailure});
}

/// @nodoc
class _$EbookListStateCopyWithImpl<$Res>
    implements $EbookListStateCopyWith<$Res> {
  _$EbookListStateCopyWithImpl(this._value, this._then);

  final EbookListState _value;
  // ignore: unused_field
  final $Res Function(EbookListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      listOrFailure: listOrFailure == freezed
          ? _value.listOrFailure
          : listOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Ebook>>,
    ));
  }
}

/// @nodoc
abstract class _$EbookListStateCopyWith<$Res>
    implements $EbookListStateCopyWith<$Res> {
  factory _$EbookListStateCopyWith(
          _EbookListState value, $Res Function(_EbookListState) then) =
      __$EbookListStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoading, Either<Failure, List<Ebook>> listOrFailure});
}

/// @nodoc
class __$EbookListStateCopyWithImpl<$Res>
    extends _$EbookListStateCopyWithImpl<$Res>
    implements _$EbookListStateCopyWith<$Res> {
  __$EbookListStateCopyWithImpl(
      _EbookListState _value, $Res Function(_EbookListState) _then)
      : super(_value, (v) => _then(v as _EbookListState));

  @override
  _EbookListState get _value => super._value as _EbookListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listOrFailure = freezed,
  }) {
    return _then(_EbookListState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      listOrFailure: listOrFailure == freezed
          ? _value.listOrFailure
          : listOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Ebook>>,
    ));
  }
}

/// @nodoc

class _$_EbookListState extends _EbookListState {
  const _$_EbookListState(
      {this.isLoading = false, this.listOrFailure = const Right([])})
      : super._();

  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final Either<Failure, List<Ebook>> listOrFailure;

  @override
  String toString() {
    return 'EbookListState(isLoading: $isLoading, listOrFailure: $listOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EbookListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.listOrFailure, listOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(listOrFailure));

  @JsonKey(ignore: true)
  @override
  _$EbookListStateCopyWith<_EbookListState> get copyWith =>
      __$EbookListStateCopyWithImpl<_EbookListState>(this, _$identity);
}

abstract class _EbookListState extends EbookListState {
  const factory _EbookListState(
      {dynamic isLoading,
      Either<Failure, List<Ebook>> listOrFailure}) = _$_EbookListState;
  const _EbookListState._() : super._();

  @override
  dynamic get isLoading;
  @override
  Either<Failure, List<Ebook>> get listOrFailure;
  @override
  @JsonKey(ignore: true)
  _$EbookListStateCopyWith<_EbookListState> get copyWith =>
      throw _privateConstructorUsedError;
}

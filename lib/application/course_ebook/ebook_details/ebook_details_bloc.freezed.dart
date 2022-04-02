// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ebook_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EbookDetailsEventTearOff {
  const _$EbookDetailsEventTearOff();

  _Initialise initialise(String id) {
    return _Initialise(
      id,
    );
  }
}

/// @nodoc
const $EbookDetailsEvent = _$EbookDetailsEventTearOff();

/// @nodoc
mixin _$EbookDetailsEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialise,
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

  @JsonKey(ignore: true)
  $EbookDetailsEventCopyWith<EbookDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookDetailsEventCopyWith<$Res> {
  factory $EbookDetailsEventCopyWith(
          EbookDetailsEvent value, $Res Function(EbookDetailsEvent) then) =
      _$EbookDetailsEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$EbookDetailsEventCopyWithImpl<$Res>
    implements $EbookDetailsEventCopyWith<$Res> {
  _$EbookDetailsEventCopyWithImpl(this._value, this._then);

  final EbookDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(EbookDetailsEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res>
    implements $EbookDetailsEventCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$EbookDetailsEventCopyWithImpl<$Res>
    implements _$InitialiseCopyWith<$Res> {
  __$InitialiseCopyWithImpl(
      _Initialise _value, $Res Function(_Initialise) _then)
      : super(_value, (v) => _then(v as _Initialise));

  @override
  _Initialise get _value => super._value as _Initialise;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Initialise(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialise implements _Initialise {
  const _$_Initialise(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'EbookDetailsEvent.initialise(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialise &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      __$InitialiseCopyWithImpl<_Initialise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initialise,
  }) {
    return initialise(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? initialise,
  }) {
    return initialise?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initialise,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(id);
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

abstract class _Initialise implements EbookDetailsEvent {
  const factory _Initialise(String id) = _$_Initialise;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EbookDetailsStateTearOff {
  const _$EbookDetailsStateTearOff();

  _EbookDetailsState call(
      {dynamic isLoading = false,
      required Either<Failure, Ebook> ebookOrFailure}) {
    return _EbookDetailsState(
      isLoading: isLoading,
      ebookOrFailure: ebookOrFailure,
    );
  }
}

/// @nodoc
const $EbookDetailsState = _$EbookDetailsStateTearOff();

/// @nodoc
mixin _$EbookDetailsState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, Ebook> get ebookOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EbookDetailsStateCopyWith<EbookDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookDetailsStateCopyWith<$Res> {
  factory $EbookDetailsStateCopyWith(
          EbookDetailsState value, $Res Function(EbookDetailsState) then) =
      _$EbookDetailsStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoading, Either<Failure, Ebook> ebookOrFailure});
}

/// @nodoc
class _$EbookDetailsStateCopyWithImpl<$Res>
    implements $EbookDetailsStateCopyWith<$Res> {
  _$EbookDetailsStateCopyWithImpl(this._value, this._then);

  final EbookDetailsState _value;
  // ignore: unused_field
  final $Res Function(EbookDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? ebookOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ebookOrFailure: ebookOrFailure == freezed
          ? _value.ebookOrFailure
          : ebookOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Ebook>,
    ));
  }
}

/// @nodoc
abstract class _$EbookDetailsStateCopyWith<$Res>
    implements $EbookDetailsStateCopyWith<$Res> {
  factory _$EbookDetailsStateCopyWith(
          _EbookDetailsState value, $Res Function(_EbookDetailsState) then) =
      __$EbookDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoading, Either<Failure, Ebook> ebookOrFailure});
}

/// @nodoc
class __$EbookDetailsStateCopyWithImpl<$Res>
    extends _$EbookDetailsStateCopyWithImpl<$Res>
    implements _$EbookDetailsStateCopyWith<$Res> {
  __$EbookDetailsStateCopyWithImpl(
      _EbookDetailsState _value, $Res Function(_EbookDetailsState) _then)
      : super(_value, (v) => _then(v as _EbookDetailsState));

  @override
  _EbookDetailsState get _value => super._value as _EbookDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? ebookOrFailure = freezed,
  }) {
    return _then(_EbookDetailsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      ebookOrFailure: ebookOrFailure == freezed
          ? _value.ebookOrFailure
          : ebookOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Ebook>,
    ));
  }
}

/// @nodoc

class _$_EbookDetailsState extends _EbookDetailsState {
  const _$_EbookDetailsState(
      {this.isLoading = false, required this.ebookOrFailure})
      : super._();

  @JsonKey()
  @override
  final dynamic isLoading;
  @override
  final Either<Failure, Ebook> ebookOrFailure;

  @override
  String toString() {
    return 'EbookDetailsState(isLoading: $isLoading, ebookOrFailure: $ebookOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EbookDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.ebookOrFailure, ebookOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(ebookOrFailure));

  @JsonKey(ignore: true)
  @override
  _$EbookDetailsStateCopyWith<_EbookDetailsState> get copyWith =>
      __$EbookDetailsStateCopyWithImpl<_EbookDetailsState>(this, _$identity);
}

abstract class _EbookDetailsState extends EbookDetailsState {
  const factory _EbookDetailsState(
      {dynamic isLoading,
      required Either<Failure, Ebook> ebookOrFailure}) = _$_EbookDetailsState;
  const _EbookDetailsState._() : super._();

  @override
  dynamic get isLoading;
  @override
  Either<Failure, Ebook> get ebookOrFailure;
  @override
  @JsonKey(ignore: true)
  _$EbookDetailsStateCopyWith<_EbookDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

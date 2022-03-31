// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recommended_tutors_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecommendedTutorsEventTearOff {
  const _$RecommendedTutorsEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
  }

  _ToggleFavourite toggleFavourite(String tutorId) {
    return _ToggleFavourite(
      tutorId,
    );
  }
}

/// @nodoc
const $RecommendedTutorsEvent = _$RecommendedTutorsEventTearOff();

/// @nodoc
mixin _$RecommendedTutorsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String tutorId) toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String tutorId)? toggleFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String tutorId)? toggleFavourite,
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
abstract class $RecommendedTutorsEventCopyWith<$Res> {
  factory $RecommendedTutorsEventCopyWith(RecommendedTutorsEvent value,
          $Res Function(RecommendedTutorsEvent) then) =
      _$RecommendedTutorsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecommendedTutorsEventCopyWithImpl<$Res>
    implements $RecommendedTutorsEventCopyWith<$Res> {
  _$RecommendedTutorsEventCopyWithImpl(this._value, this._then);

  final RecommendedTutorsEvent _value;
  // ignore: unused_field
  final $Res Function(RecommendedTutorsEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$RecommendedTutorsEventCopyWithImpl<$Res>
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
    return 'RecommendedTutorsEvent.initialise()';
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
    required TResult Function(String tutorId) toggleFavourite,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String tutorId)? toggleFavourite,
  }) {
    return initialise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String tutorId)? toggleFavourite,
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

abstract class _Initialise implements RecommendedTutorsEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
abstract class _$ToggleFavouriteCopyWith<$Res> {
  factory _$ToggleFavouriteCopyWith(
          _ToggleFavourite value, $Res Function(_ToggleFavourite) then) =
      __$ToggleFavouriteCopyWithImpl<$Res>;
  $Res call({String tutorId});
}

/// @nodoc
class __$ToggleFavouriteCopyWithImpl<$Res>
    extends _$RecommendedTutorsEventCopyWithImpl<$Res>
    implements _$ToggleFavouriteCopyWith<$Res> {
  __$ToggleFavouriteCopyWithImpl(
      _ToggleFavourite _value, $Res Function(_ToggleFavourite) _then)
      : super(_value, (v) => _then(v as _ToggleFavourite));

  @override
  _ToggleFavourite get _value => super._value as _ToggleFavourite;

  @override
  $Res call({
    Object? tutorId = freezed,
  }) {
    return _then(_ToggleFavourite(
      tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ToggleFavourite implements _ToggleFavourite {
  const _$_ToggleFavourite(this.tutorId);

  @override
  final String tutorId;

  @override
  String toString() {
    return 'RecommendedTutorsEvent.toggleFavourite(tutorId: $tutorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToggleFavourite &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tutorId));

  @JsonKey(ignore: true)
  @override
  _$ToggleFavouriteCopyWith<_ToggleFavourite> get copyWith =>
      __$ToggleFavouriteCopyWithImpl<_ToggleFavourite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String tutorId) toggleFavourite,
  }) {
    return toggleFavourite(tutorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String tutorId)? toggleFavourite,
  }) {
    return toggleFavourite?.call(tutorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String tutorId)? toggleFavourite,
    required TResult orElse(),
  }) {
    if (toggleFavourite != null) {
      return toggleFavourite(tutorId);
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

abstract class _ToggleFavourite implements RecommendedTutorsEvent {
  const factory _ToggleFavourite(String tutorId) = _$_ToggleFavourite;

  String get tutorId;
  @JsonKey(ignore: true)
  _$ToggleFavouriteCopyWith<_ToggleFavourite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RecommendedTutorsStateTearOff {
  const _$RecommendedTutorsStateTearOff();

  _RecommendedTutorsState call(
      {bool isLoading = false,
      Either<Failure, List<Tutor>> tutorsOrFailure = const Right([]),
      required Set<String> loadingTutors}) {
    return _RecommendedTutorsState(
      isLoading: isLoading,
      tutorsOrFailure: tutorsOrFailure,
      loadingTutors: loadingTutors,
    );
  }
}

/// @nodoc
const $RecommendedTutorsState = _$RecommendedTutorsStateTearOff();

/// @nodoc
mixin _$RecommendedTutorsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<Failure, List<Tutor>> get tutorsOrFailure =>
      throw _privateConstructorUsedError;
  Set<String> get loadingTutors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendedTutorsStateCopyWith<RecommendedTutorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedTutorsStateCopyWith<$Res> {
  factory $RecommendedTutorsStateCopyWith(RecommendedTutorsState value,
          $Res Function(RecommendedTutorsState) then) =
      _$RecommendedTutorsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<Failure, List<Tutor>> tutorsOrFailure,
      Set<String> loadingTutors});
}

/// @nodoc
class _$RecommendedTutorsStateCopyWithImpl<$Res>
    implements $RecommendedTutorsStateCopyWith<$Res> {
  _$RecommendedTutorsStateCopyWithImpl(this._value, this._then);

  final RecommendedTutorsState _value;
  // ignore: unused_field
  final $Res Function(RecommendedTutorsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? tutorsOrFailure = freezed,
    Object? loadingTutors = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tutorsOrFailure: tutorsOrFailure == freezed
          ? _value.tutorsOrFailure
          : tutorsOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Tutor>>,
      loadingTutors: loadingTutors == freezed
          ? _value.loadingTutors
          : loadingTutors // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
abstract class _$RecommendedTutorsStateCopyWith<$Res>
    implements $RecommendedTutorsStateCopyWith<$Res> {
  factory _$RecommendedTutorsStateCopyWith(_RecommendedTutorsState value,
          $Res Function(_RecommendedTutorsState) then) =
      __$RecommendedTutorsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<Failure, List<Tutor>> tutorsOrFailure,
      Set<String> loadingTutors});
}

/// @nodoc
class __$RecommendedTutorsStateCopyWithImpl<$Res>
    extends _$RecommendedTutorsStateCopyWithImpl<$Res>
    implements _$RecommendedTutorsStateCopyWith<$Res> {
  __$RecommendedTutorsStateCopyWithImpl(_RecommendedTutorsState _value,
      $Res Function(_RecommendedTutorsState) _then)
      : super(_value, (v) => _then(v as _RecommendedTutorsState));

  @override
  _RecommendedTutorsState get _value => super._value as _RecommendedTutorsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? tutorsOrFailure = freezed,
    Object? loadingTutors = freezed,
  }) {
    return _then(_RecommendedTutorsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tutorsOrFailure: tutorsOrFailure == freezed
          ? _value.tutorsOrFailure
          : tutorsOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Tutor>>,
      loadingTutors: loadingTutors == freezed
          ? _value.loadingTutors
          : loadingTutors // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_RecommendedTutorsState implements _RecommendedTutorsState {
  _$_RecommendedTutorsState(
      {this.isLoading = false,
      this.tutorsOrFailure = const Right([]),
      required this.loadingTutors});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final Either<Failure, List<Tutor>> tutorsOrFailure;
  @override
  final Set<String> loadingTutors;

  @override
  String toString() {
    return 'RecommendedTutorsState(isLoading: $isLoading, tutorsOrFailure: $tutorsOrFailure, loadingTutors: $loadingTutors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecommendedTutorsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.tutorsOrFailure, tutorsOrFailure) &&
            const DeepCollectionEquality()
                .equals(other.loadingTutors, loadingTutors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(tutorsOrFailure),
      const DeepCollectionEquality().hash(loadingTutors));

  @JsonKey(ignore: true)
  @override
  _$RecommendedTutorsStateCopyWith<_RecommendedTutorsState> get copyWith =>
      __$RecommendedTutorsStateCopyWithImpl<_RecommendedTutorsState>(
          this, _$identity);
}

abstract class _RecommendedTutorsState implements RecommendedTutorsState {
  factory _RecommendedTutorsState(
      {bool isLoading,
      Either<Failure, List<Tutor>> tutorsOrFailure,
      required Set<String> loadingTutors}) = _$_RecommendedTutorsState;

  @override
  bool get isLoading;
  @override
  Either<Failure, List<Tutor>> get tutorsOrFailure;
  @override
  Set<String> get loadingTutors;
  @override
  @JsonKey(ignore: true)
  _$RecommendedTutorsStateCopyWith<_RecommendedTutorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

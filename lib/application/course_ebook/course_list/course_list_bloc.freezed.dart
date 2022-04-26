// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseListEventTearOff {
  const _$CourseListEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
  }
}

/// @nodoc
const $CourseListEvent = _$CourseListEventTearOff();

/// @nodoc
mixin _$CourseListEvent {
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
abstract class $CourseListEventCopyWith<$Res> {
  factory $CourseListEventCopyWith(
          CourseListEvent value, $Res Function(CourseListEvent) then) =
      _$CourseListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseListEventCopyWithImpl<$Res>
    implements $CourseListEventCopyWith<$Res> {
  _$CourseListEventCopyWithImpl(this._value, this._then);

  final CourseListEvent _value;
  // ignore: unused_field
  final $Res Function(CourseListEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$CourseListEventCopyWithImpl<$Res>
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
    return 'CourseListEvent.initialise()';
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

abstract class _Initialise implements CourseListEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
class _$CourseListStateTearOff {
  const _$CourseListStateTearOff();

  _CourseListState call(
      {dynamic isLoading = false,
      Either<Failure, List<Course>> listOrFailure = const Right([]),
      Either<Failure, List<Course>> recommendedListOrFailure =
          const Right([])}) {
    return _CourseListState(
      isLoading: isLoading,
      listOrFailure: listOrFailure,
      recommendedListOrFailure: recommendedListOrFailure,
    );
  }
}

/// @nodoc
const $CourseListState = _$CourseListStateTearOff();

/// @nodoc
mixin _$CourseListState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, List<Course>> get listOrFailure =>
      throw _privateConstructorUsedError;
  Either<Failure, List<Course>> get recommendedListOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseListStateCopyWith<CourseListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseListStateCopyWith<$Res> {
  factory $CourseListStateCopyWith(
          CourseListState value, $Res Function(CourseListState) then) =
      _$CourseListStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      Either<Failure, List<Course>> listOrFailure,
      Either<Failure, List<Course>> recommendedListOrFailure});
}

/// @nodoc
class _$CourseListStateCopyWithImpl<$Res>
    implements $CourseListStateCopyWith<$Res> {
  _$CourseListStateCopyWithImpl(this._value, this._then);

  final CourseListState _value;
  // ignore: unused_field
  final $Res Function(CourseListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listOrFailure = freezed,
    Object? recommendedListOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      listOrFailure: listOrFailure == freezed
          ? _value.listOrFailure
          : listOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Course>>,
      recommendedListOrFailure: recommendedListOrFailure == freezed
          ? _value.recommendedListOrFailure
          : recommendedListOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Course>>,
    ));
  }
}

/// @nodoc
abstract class _$CourseListStateCopyWith<$Res>
    implements $CourseListStateCopyWith<$Res> {
  factory _$CourseListStateCopyWith(
          _CourseListState value, $Res Function(_CourseListState) then) =
      __$CourseListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      Either<Failure, List<Course>> listOrFailure,
      Either<Failure, List<Course>> recommendedListOrFailure});
}

/// @nodoc
class __$CourseListStateCopyWithImpl<$Res>
    extends _$CourseListStateCopyWithImpl<$Res>
    implements _$CourseListStateCopyWith<$Res> {
  __$CourseListStateCopyWithImpl(
      _CourseListState _value, $Res Function(_CourseListState) _then)
      : super(_value, (v) => _then(v as _CourseListState));

  @override
  _CourseListState get _value => super._value as _CourseListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listOrFailure = freezed,
    Object? recommendedListOrFailure = freezed,
  }) {
    return _then(_CourseListState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      listOrFailure: listOrFailure == freezed
          ? _value.listOrFailure
          : listOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Course>>,
      recommendedListOrFailure: recommendedListOrFailure == freezed
          ? _value.recommendedListOrFailure
          : recommendedListOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Course>>,
    ));
  }
}

/// @nodoc

class _$_CourseListState extends _CourseListState {
  const _$_CourseListState(
      {this.isLoading = false,
      this.listOrFailure = const Right([]),
      this.recommendedListOrFailure = const Right([])})
      : super._();

  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final Either<Failure, List<Course>> listOrFailure;
  @JsonKey()
  @override
  final Either<Failure, List<Course>> recommendedListOrFailure;

  @override
  String toString() {
    return 'CourseListState(isLoading: $isLoading, listOrFailure: $listOrFailure, recommendedListOrFailure: $recommendedListOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.listOrFailure, listOrFailure) &&
            const DeepCollectionEquality().equals(
                other.recommendedListOrFailure, recommendedListOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(listOrFailure),
      const DeepCollectionEquality().hash(recommendedListOrFailure));

  @JsonKey(ignore: true)
  @override
  _$CourseListStateCopyWith<_CourseListState> get copyWith =>
      __$CourseListStateCopyWithImpl<_CourseListState>(this, _$identity);
}

abstract class _CourseListState extends CourseListState {
  const factory _CourseListState(
          {dynamic isLoading,
          Either<Failure, List<Course>> listOrFailure,
          Either<Failure, List<Course>> recommendedListOrFailure}) =
      _$_CourseListState;
  const _CourseListState._() : super._();

  @override
  dynamic get isLoading;
  @override
  Either<Failure, List<Course>> get listOrFailure;
  @override
  Either<Failure, List<Course>> get recommendedListOrFailure;
  @override
  @JsonKey(ignore: true)
  _$CourseListStateCopyWith<_CourseListState> get copyWith =>
      throw _privateConstructorUsedError;
}

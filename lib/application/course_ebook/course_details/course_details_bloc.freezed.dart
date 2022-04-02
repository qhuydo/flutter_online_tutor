// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseDetailsEventTearOff {
  const _$CourseDetailsEventTearOff();

  _Initialise initialise(String courseId) {
    return _Initialise(
      courseId,
    );
  }
}

/// @nodoc
const $CourseDetailsEvent = _$CourseDetailsEventTearOff();

/// @nodoc
mixin _$CourseDetailsEvent {
  String get courseId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String courseId)? initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? initialise,
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
  $CourseDetailsEventCopyWith<CourseDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsEventCopyWith<$Res> {
  factory $CourseDetailsEventCopyWith(
          CourseDetailsEvent value, $Res Function(CourseDetailsEvent) then) =
      _$CourseDetailsEventCopyWithImpl<$Res>;
  $Res call({String courseId});
}

/// @nodoc
class _$CourseDetailsEventCopyWithImpl<$Res>
    implements $CourseDetailsEventCopyWith<$Res> {
  _$CourseDetailsEventCopyWithImpl(this._value, this._then);

  final CourseDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(CourseDetailsEvent) _then;

  @override
  $Res call({
    Object? courseId = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res>
    implements $CourseDetailsEventCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
  @override
  $Res call({String courseId});
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res>
    implements _$InitialiseCopyWith<$Res> {
  __$InitialiseCopyWithImpl(
      _Initialise _value, $Res Function(_Initialise) _then)
      : super(_value, (v) => _then(v as _Initialise));

  @override
  _Initialise get _value => super._value as _Initialise;

  @override
  $Res call({
    Object? courseId = freezed,
  }) {
    return _then(_Initialise(
      courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialise implements _Initialise {
  const _$_Initialise(this.courseId);

  @override
  final String courseId;

  @override
  String toString() {
    return 'CourseDetailsEvent.initialise(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialise &&
            const DeepCollectionEquality().equals(other.courseId, courseId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(courseId));

  @JsonKey(ignore: true)
  @override
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      __$InitialiseCopyWithImpl<_Initialise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) initialise,
  }) {
    return initialise(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String courseId)? initialise,
  }) {
    return initialise?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? initialise,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(courseId);
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

abstract class _Initialise implements CourseDetailsEvent {
  const factory _Initialise(String courseId) = _$_Initialise;

  @override
  String get courseId;
  @override
  @JsonKey(ignore: true)
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CourseDetailsStateTearOff {
  const _$CourseDetailsStateTearOff();

  _CourseDetailsState call(
      {dynamic isLoading = false,
      required Either<Failure, Course> courseOrFailure}) {
    return _CourseDetailsState(
      isLoading: isLoading,
      courseOrFailure: courseOrFailure,
    );
  }
}

/// @nodoc
const $CourseDetailsState = _$CourseDetailsStateTearOff();

/// @nodoc
mixin _$CourseDetailsState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, Course> get courseOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseDetailsStateCopyWith<CourseDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsStateCopyWith<$Res> {
  factory $CourseDetailsStateCopyWith(
          CourseDetailsState value, $Res Function(CourseDetailsState) then) =
      _$CourseDetailsStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoading, Either<Failure, Course> courseOrFailure});
}

/// @nodoc
class _$CourseDetailsStateCopyWithImpl<$Res>
    implements $CourseDetailsStateCopyWith<$Res> {
  _$CourseDetailsStateCopyWithImpl(this._value, this._then);

  final CourseDetailsState _value;
  // ignore: unused_field
  final $Res Function(CourseDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? courseOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      courseOrFailure: courseOrFailure == freezed
          ? _value.courseOrFailure
          : courseOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Course>,
    ));
  }
}

/// @nodoc
abstract class _$CourseDetailsStateCopyWith<$Res>
    implements $CourseDetailsStateCopyWith<$Res> {
  factory _$CourseDetailsStateCopyWith(
          _CourseDetailsState value, $Res Function(_CourseDetailsState) then) =
      __$CourseDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoading, Either<Failure, Course> courseOrFailure});
}

/// @nodoc
class __$CourseDetailsStateCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res>
    implements _$CourseDetailsStateCopyWith<$Res> {
  __$CourseDetailsStateCopyWithImpl(
      _CourseDetailsState _value, $Res Function(_CourseDetailsState) _then)
      : super(_value, (v) => _then(v as _CourseDetailsState));

  @override
  _CourseDetailsState get _value => super._value as _CourseDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? courseOrFailure = freezed,
  }) {
    return _then(_CourseDetailsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      courseOrFailure: courseOrFailure == freezed
          ? _value.courseOrFailure
          : courseOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Course>,
    ));
  }
}

/// @nodoc

class _$_CourseDetailsState extends _CourseDetailsState {
  const _$_CourseDetailsState(
      {this.isLoading = false, required this.courseOrFailure})
      : super._();

  @JsonKey()
  @override
  final dynamic isLoading;
  @override
  final Either<Failure, Course> courseOrFailure;

  @override
  String toString() {
    return 'CourseDetailsState(isLoading: $isLoading, courseOrFailure: $courseOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.courseOrFailure, courseOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(courseOrFailure));

  @JsonKey(ignore: true)
  @override
  _$CourseDetailsStateCopyWith<_CourseDetailsState> get copyWith =>
      __$CourseDetailsStateCopyWithImpl<_CourseDetailsState>(this, _$identity);
}

abstract class _CourseDetailsState extends CourseDetailsState {
  const factory _CourseDetailsState(
          {dynamic isLoading,
          required Either<Failure, Course> courseOrFailure}) =
      _$_CourseDetailsState;
  const _CourseDetailsState._() : super._();

  @override
  dynamic get isLoading;
  @override
  Either<Failure, Course> get courseOrFailure;
  @override
  @JsonKey(ignore: true)
  _$CourseDetailsStateCopyWith<_CourseDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_tutors_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavouriteTutorsStateTearOff {
  const _$FavouriteTutorsStateTearOff();

  _FavouriteTutorsState call(
      {bool isLoading = false,
      Either<Failure, List<Tutor>> tutorsOrFailure = const Right([]),
      required Set<String> loadingTutors}) {
    return _FavouriteTutorsState(
      isLoading: isLoading,
      tutorsOrFailure: tutorsOrFailure,
      loadingTutors: loadingTutors,
    );
  }
}

/// @nodoc
const $FavouriteTutorsState = _$FavouriteTutorsStateTearOff();

/// @nodoc
mixin _$FavouriteTutorsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<Failure, List<Tutor>> get tutorsOrFailure =>
      throw _privateConstructorUsedError;
  Set<String> get loadingTutors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteTutorsStateCopyWith<FavouriteTutorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteTutorsStateCopyWith<$Res> {
  factory $FavouriteTutorsStateCopyWith(FavouriteTutorsState value,
          $Res Function(FavouriteTutorsState) then) =
      _$FavouriteTutorsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<Failure, List<Tutor>> tutorsOrFailure,
      Set<String> loadingTutors});
}

/// @nodoc
class _$FavouriteTutorsStateCopyWithImpl<$Res>
    implements $FavouriteTutorsStateCopyWith<$Res> {
  _$FavouriteTutorsStateCopyWithImpl(this._value, this._then);

  final FavouriteTutorsState _value;
  // ignore: unused_field
  final $Res Function(FavouriteTutorsState) _then;

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
abstract class _$FavouriteTutorsStateCopyWith<$Res>
    implements $FavouriteTutorsStateCopyWith<$Res> {
  factory _$FavouriteTutorsStateCopyWith(_FavouriteTutorsState value,
          $Res Function(_FavouriteTutorsState) then) =
      __$FavouriteTutorsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<Failure, List<Tutor>> tutorsOrFailure,
      Set<String> loadingTutors});
}

/// @nodoc
class __$FavouriteTutorsStateCopyWithImpl<$Res>
    extends _$FavouriteTutorsStateCopyWithImpl<$Res>
    implements _$FavouriteTutorsStateCopyWith<$Res> {
  __$FavouriteTutorsStateCopyWithImpl(
      _FavouriteTutorsState _value, $Res Function(_FavouriteTutorsState) _then)
      : super(_value, (v) => _then(v as _FavouriteTutorsState));

  @override
  _FavouriteTutorsState get _value => super._value as _FavouriteTutorsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? tutorsOrFailure = freezed,
    Object? loadingTutors = freezed,
  }) {
    return _then(_FavouriteTutorsState(
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

class _$_FavouriteTutorsState implements _FavouriteTutorsState {
  const _$_FavouriteTutorsState(
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
    return 'FavouriteTutorsState(isLoading: $isLoading, tutorsOrFailure: $tutorsOrFailure, loadingTutors: $loadingTutors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavouriteTutorsState &&
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
  _$FavouriteTutorsStateCopyWith<_FavouriteTutorsState> get copyWith =>
      __$FavouriteTutorsStateCopyWithImpl<_FavouriteTutorsState>(
          this, _$identity);
}

abstract class _FavouriteTutorsState implements FavouriteTutorsState {
  const factory _FavouriteTutorsState(
      {bool isLoading,
      Either<Failure, List<Tutor>> tutorsOrFailure,
      required Set<String> loadingTutors}) = _$_FavouriteTutorsState;

  @override
  bool get isLoading;
  @override
  Either<Failure, List<Tutor>> get tutorsOrFailure;
  @override
  Set<String> get loadingTutors;
  @override
  @JsonKey(ignore: true)
  _$FavouriteTutorsStateCopyWith<_FavouriteTutorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

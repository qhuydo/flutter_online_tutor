// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_repository_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TutorRepositoryEventTearOff {
  const _$TutorRepositoryEventTearOff();

  _TutorDataChanged tutorDataChanged(Tutor tutor) {
    return _TutorDataChanged(
      tutor,
    );
  }
}

/// @nodoc
const $TutorRepositoryEvent = _$TutorRepositoryEventTearOff();

/// @nodoc
mixin _$TutorRepositoryEvent {
  Tutor get tutor => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tutor tutor) tutorDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tutor tutor)? tutorDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tutor tutor)? tutorDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TutorDataChanged value) tutorDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TutorDataChanged value)? tutorDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TutorDataChanged value)? tutorDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorRepositoryEventCopyWith<TutorRepositoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorRepositoryEventCopyWith<$Res> {
  factory $TutorRepositoryEventCopyWith(TutorRepositoryEvent value,
          $Res Function(TutorRepositoryEvent) then) =
      _$TutorRepositoryEventCopyWithImpl<$Res>;
  $Res call({Tutor tutor});

  $TutorCopyWith<$Res> get tutor;
}

/// @nodoc
class _$TutorRepositoryEventCopyWithImpl<$Res>
    implements $TutorRepositoryEventCopyWith<$Res> {
  _$TutorRepositoryEventCopyWithImpl(this._value, this._then);

  final TutorRepositoryEvent _value;
  // ignore: unused_field
  final $Res Function(TutorRepositoryEvent) _then;

  @override
  $Res call({
    Object? tutor = freezed,
  }) {
    return _then(_value.copyWith(
      tutor: tutor == freezed
          ? _value.tutor
          : tutor // ignore: cast_nullable_to_non_nullable
              as Tutor,
    ));
  }

  @override
  $TutorCopyWith<$Res> get tutor {
    return $TutorCopyWith<$Res>(_value.tutor, (value) {
      return _then(_value.copyWith(tutor: value));
    });
  }
}

/// @nodoc
abstract class _$TutorDataChangedCopyWith<$Res>
    implements $TutorRepositoryEventCopyWith<$Res> {
  factory _$TutorDataChangedCopyWith(
          _TutorDataChanged value, $Res Function(_TutorDataChanged) then) =
      __$TutorDataChangedCopyWithImpl<$Res>;
  @override
  $Res call({Tutor tutor});

  @override
  $TutorCopyWith<$Res> get tutor;
}

/// @nodoc
class __$TutorDataChangedCopyWithImpl<$Res>
    extends _$TutorRepositoryEventCopyWithImpl<$Res>
    implements _$TutorDataChangedCopyWith<$Res> {
  __$TutorDataChangedCopyWithImpl(
      _TutorDataChanged _value, $Res Function(_TutorDataChanged) _then)
      : super(_value, (v) => _then(v as _TutorDataChanged));

  @override
  _TutorDataChanged get _value => super._value as _TutorDataChanged;

  @override
  $Res call({
    Object? tutor = freezed,
  }) {
    return _then(_TutorDataChanged(
      tutor == freezed
          ? _value.tutor
          : tutor // ignore: cast_nullable_to_non_nullable
              as Tutor,
    ));
  }
}

/// @nodoc

class _$_TutorDataChanged implements _TutorDataChanged {
  const _$_TutorDataChanged(this.tutor);

  @override
  final Tutor tutor;

  @override
  String toString() {
    return 'TutorRepositoryEvent.tutorDataChanged(tutor: $tutor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TutorDataChanged &&
            const DeepCollectionEquality().equals(other.tutor, tutor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tutor));

  @JsonKey(ignore: true)
  @override
  _$TutorDataChangedCopyWith<_TutorDataChanged> get copyWith =>
      __$TutorDataChangedCopyWithImpl<_TutorDataChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tutor tutor) tutorDataChanged,
  }) {
    return tutorDataChanged(tutor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Tutor tutor)? tutorDataChanged,
  }) {
    return tutorDataChanged?.call(tutor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tutor tutor)? tutorDataChanged,
    required TResult orElse(),
  }) {
    if (tutorDataChanged != null) {
      return tutorDataChanged(tutor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TutorDataChanged value) tutorDataChanged,
  }) {
    return tutorDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TutorDataChanged value)? tutorDataChanged,
  }) {
    return tutorDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TutorDataChanged value)? tutorDataChanged,
    required TResult orElse(),
  }) {
    if (tutorDataChanged != null) {
      return tutorDataChanged(this);
    }
    return orElse();
  }
}

abstract class _TutorDataChanged implements TutorRepositoryEvent {
  const factory _TutorDataChanged(Tutor tutor) = _$_TutorDataChanged;

  @override
  Tutor get tutor;
  @override
  @JsonKey(ignore: true)
  _$TutorDataChangedCopyWith<_TutorDataChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_tutor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReportTutorStateTearOff {
  const _$ReportTutorStateTearOff();

  _ReportTutorState call(
      {required String tutorId,
      required NonEmptyValue content,
      Either<Failure, Unit>? reportFailedOrSucceed,
      dynamic isLoading = false,
      bool showError = false}) {
    return _ReportTutorState(
      tutorId: tutorId,
      content: content,
      reportFailedOrSucceed: reportFailedOrSucceed,
      isLoading: isLoading,
      showError: showError,
    );
  }
}

/// @nodoc
const $ReportTutorState = _$ReportTutorStateTearOff();

/// @nodoc
mixin _$ReportTutorState {
  String get tutorId => throw _privateConstructorUsedError;
  NonEmptyValue get content => throw _privateConstructorUsedError;
  Either<Failure, Unit>? get reportFailedOrSucceed =>
      throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportTutorStateCopyWith<ReportTutorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportTutorStateCopyWith<$Res> {
  factory $ReportTutorStateCopyWith(
          ReportTutorState value, $Res Function(ReportTutorState) then) =
      _$ReportTutorStateCopyWithImpl<$Res>;
  $Res call(
      {String tutorId,
      NonEmptyValue content,
      Either<Failure, Unit>? reportFailedOrSucceed,
      dynamic isLoading,
      bool showError});
}

/// @nodoc
class _$ReportTutorStateCopyWithImpl<$Res>
    implements $ReportTutorStateCopyWith<$Res> {
  _$ReportTutorStateCopyWithImpl(this._value, this._then);

  final ReportTutorState _value;
  // ignore: unused_field
  final $Res Function(ReportTutorState) _then;

  @override
  $Res call({
    Object? tutorId = freezed,
    Object? content = freezed,
    Object? reportFailedOrSucceed = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_value.copyWith(
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as NonEmptyValue,
      reportFailedOrSucceed: reportFailedOrSucceed == freezed
          ? _value.reportFailedOrSucceed
          : reportFailedOrSucceed // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ReportTutorStateCopyWith<$Res>
    implements $ReportTutorStateCopyWith<$Res> {
  factory _$ReportTutorStateCopyWith(
          _ReportTutorState value, $Res Function(_ReportTutorState) then) =
      __$ReportTutorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String tutorId,
      NonEmptyValue content,
      Either<Failure, Unit>? reportFailedOrSucceed,
      dynamic isLoading,
      bool showError});
}

/// @nodoc
class __$ReportTutorStateCopyWithImpl<$Res>
    extends _$ReportTutorStateCopyWithImpl<$Res>
    implements _$ReportTutorStateCopyWith<$Res> {
  __$ReportTutorStateCopyWithImpl(
      _ReportTutorState _value, $Res Function(_ReportTutorState) _then)
      : super(_value, (v) => _then(v as _ReportTutorState));

  @override
  _ReportTutorState get _value => super._value as _ReportTutorState;

  @override
  $Res call({
    Object? tutorId = freezed,
    Object? content = freezed,
    Object? reportFailedOrSucceed = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_ReportTutorState(
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as NonEmptyValue,
      reportFailedOrSucceed: reportFailedOrSucceed == freezed
          ? _value.reportFailedOrSucceed
          : reportFailedOrSucceed // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReportTutorState implements _ReportTutorState {
  const _$_ReportTutorState(
      {required this.tutorId,
      required this.content,
      this.reportFailedOrSucceed,
      this.isLoading = false,
      this.showError = false});

  @override
  final String tutorId;
  @override
  final NonEmptyValue content;
  @override
  final Either<Failure, Unit>? reportFailedOrSucceed;
  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final bool showError;

  @override
  String toString() {
    return 'ReportTutorState(tutorId: $tutorId, content: $content, reportFailedOrSucceed: $reportFailedOrSucceed, isLoading: $isLoading, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportTutorState &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.reportFailedOrSucceed, reportFailedOrSucceed) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.showError, showError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tutorId),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(reportFailedOrSucceed),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showError));

  @JsonKey(ignore: true)
  @override
  _$ReportTutorStateCopyWith<_ReportTutorState> get copyWith =>
      __$ReportTutorStateCopyWithImpl<_ReportTutorState>(this, _$identity);
}

abstract class _ReportTutorState implements ReportTutorState {
  const factory _ReportTutorState(
      {required String tutorId,
      required NonEmptyValue content,
      Either<Failure, Unit>? reportFailedOrSucceed,
      dynamic isLoading,
      bool showError}) = _$_ReportTutorState;

  @override
  String get tutorId;
  @override
  NonEmptyValue get content;
  @override
  Either<Failure, Unit>? get reportFailedOrSucceed;
  @override
  dynamic get isLoading;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$ReportTutorStateCopyWith<_ReportTutorState> get copyWith =>
      throw _privateConstructorUsedError;
}

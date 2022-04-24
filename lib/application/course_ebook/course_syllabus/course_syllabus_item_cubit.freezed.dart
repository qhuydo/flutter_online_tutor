// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_syllabus_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseSyllabusItemStateTearOff {
  const _$CourseSyllabusItemStateTearOff();

  _CourseSyllabusItemState call(
      {required CourseTopic item, bool isLoading = true, Uint8List? pdf}) {
    return _CourseSyllabusItemState(
      item: item,
      isLoading: isLoading,
      pdf: pdf,
    );
  }
}

/// @nodoc
const $CourseSyllabusItemState = _$CourseSyllabusItemStateTearOff();

/// @nodoc
mixin _$CourseSyllabusItemState {
  CourseTopic get item => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Uint8List? get pdf => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseSyllabusItemStateCopyWith<CourseSyllabusItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseSyllabusItemStateCopyWith<$Res> {
  factory $CourseSyllabusItemStateCopyWith(CourseSyllabusItemState value,
          $Res Function(CourseSyllabusItemState) then) =
      _$CourseSyllabusItemStateCopyWithImpl<$Res>;
  $Res call({CourseTopic item, bool isLoading, Uint8List? pdf});

  $CourseTopicCopyWith<$Res> get item;
}

/// @nodoc
class _$CourseSyllabusItemStateCopyWithImpl<$Res>
    implements $CourseSyllabusItemStateCopyWith<$Res> {
  _$CourseSyllabusItemStateCopyWithImpl(this._value, this._then);

  final CourseSyllabusItemState _value;
  // ignore: unused_field
  final $Res Function(CourseSyllabusItemState) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? isLoading = freezed,
    Object? pdf = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CourseTopic,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pdf: pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }

  @override
  $CourseTopicCopyWith<$Res> get item {
    return $CourseTopicCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$CourseSyllabusItemStateCopyWith<$Res>
    implements $CourseSyllabusItemStateCopyWith<$Res> {
  factory _$CourseSyllabusItemStateCopyWith(_CourseSyllabusItemState value,
          $Res Function(_CourseSyllabusItemState) then) =
      __$CourseSyllabusItemStateCopyWithImpl<$Res>;
  @override
  $Res call({CourseTopic item, bool isLoading, Uint8List? pdf});

  @override
  $CourseTopicCopyWith<$Res> get item;
}

/// @nodoc
class __$CourseSyllabusItemStateCopyWithImpl<$Res>
    extends _$CourseSyllabusItemStateCopyWithImpl<$Res>
    implements _$CourseSyllabusItemStateCopyWith<$Res> {
  __$CourseSyllabusItemStateCopyWithImpl(_CourseSyllabusItemState _value,
      $Res Function(_CourseSyllabusItemState) _then)
      : super(_value, (v) => _then(v as _CourseSyllabusItemState));

  @override
  _CourseSyllabusItemState get _value =>
      super._value as _CourseSyllabusItemState;

  @override
  $Res call({
    Object? item = freezed,
    Object? isLoading = freezed,
    Object? pdf = freezed,
  }) {
    return _then(_CourseSyllabusItemState(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CourseTopic,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pdf: pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_CourseSyllabusItemState implements _CourseSyllabusItemState {
  const _$_CourseSyllabusItemState(
      {required this.item, this.isLoading = true, this.pdf});

  @override
  final CourseTopic item;
  @JsonKey()
  @override
  final bool isLoading;
  @override
  final Uint8List? pdf;

  @override
  String toString() {
    return 'CourseSyllabusItemState(item: $item, isLoading: $isLoading, pdf: $pdf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseSyllabusItemState &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.pdf, pdf));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(pdf));

  @JsonKey(ignore: true)
  @override
  _$CourseSyllabusItemStateCopyWith<_CourseSyllabusItemState> get copyWith =>
      __$CourseSyllabusItemStateCopyWithImpl<_CourseSyllabusItemState>(
          this, _$identity);
}

abstract class _CourseSyllabusItemState implements CourseSyllabusItemState {
  const factory _CourseSyllabusItemState(
      {required CourseTopic item,
      bool isLoading,
      Uint8List? pdf}) = _$_CourseSyllabusItemState;

  @override
  CourseTopic get item;
  @override
  bool get isLoading;
  @override
  Uint8List? get pdf;
  @override
  @JsonKey(ignore: true)
  _$CourseSyllabusItemStateCopyWith<_CourseSyllabusItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

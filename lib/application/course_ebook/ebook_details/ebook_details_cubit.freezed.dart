// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ebook_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EbookDetailsStateTearOff {
  const _$EbookDetailsStateTearOff();

  _EbookDetailsState call({dynamic isLoading = false, required Ebook ebook}) {
    return _EbookDetailsState(
      isLoading: isLoading,
      ebook: ebook,
    );
  }
}

/// @nodoc
const $EbookDetailsState = _$EbookDetailsStateTearOff();

/// @nodoc
mixin _$EbookDetailsState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  Ebook get ebook => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EbookDetailsStateCopyWith<EbookDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookDetailsStateCopyWith<$Res> {
  factory $EbookDetailsStateCopyWith(
          EbookDetailsState value, $Res Function(EbookDetailsState) then) =
      _$EbookDetailsStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoading, Ebook ebook});

  $EbookCopyWith<$Res> get ebook;
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
    Object? ebook = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ebook: ebook == freezed
          ? _value.ebook
          : ebook // ignore: cast_nullable_to_non_nullable
              as Ebook,
    ));
  }

  @override
  $EbookCopyWith<$Res> get ebook {
    return $EbookCopyWith<$Res>(_value.ebook, (value) {
      return _then(_value.copyWith(ebook: value));
    });
  }
}

/// @nodoc
abstract class _$EbookDetailsStateCopyWith<$Res>
    implements $EbookDetailsStateCopyWith<$Res> {
  factory _$EbookDetailsStateCopyWith(
          _EbookDetailsState value, $Res Function(_EbookDetailsState) then) =
      __$EbookDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoading, Ebook ebook});

  @override
  $EbookCopyWith<$Res> get ebook;
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
    Object? ebook = freezed,
  }) {
    return _then(_EbookDetailsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      ebook: ebook == freezed
          ? _value.ebook
          : ebook // ignore: cast_nullable_to_non_nullable
              as Ebook,
    ));
  }
}

/// @nodoc

class _$_EbookDetailsState extends _EbookDetailsState {
  const _$_EbookDetailsState({this.isLoading = false, required this.ebook})
      : super._();

  @JsonKey()
  @override
  final dynamic isLoading;
  @override
  final Ebook ebook;

  @override
  String toString() {
    return 'EbookDetailsState(isLoading: $isLoading, ebook: $ebook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EbookDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.ebook, ebook));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(ebook));

  @JsonKey(ignore: true)
  @override
  _$EbookDetailsStateCopyWith<_EbookDetailsState> get copyWith =>
      __$EbookDetailsStateCopyWithImpl<_EbookDetailsState>(this, _$identity);
}

abstract class _EbookDetailsState extends EbookDetailsState {
  const factory _EbookDetailsState({dynamic isLoading, required Ebook ebook}) =
      _$_EbookDetailsState;
  const _EbookDetailsState._() : super._();

  @override
  dynamic get isLoading;
  @override
  Ebook get ebook;
  @override
  @JsonKey(ignore: true)
  _$EbookDetailsStateCopyWith<_EbookDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

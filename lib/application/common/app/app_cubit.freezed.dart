// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {required Language language,
      required ColourScheme colourScheme,
      required AppThemeMode themeMode,
      dynamic hasInternetConnection = true}) {
    return _AppState(
      language: language,
      colourScheme: colourScheme,
      themeMode: themeMode,
      hasInternetConnection: hasInternetConnection,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  Language get language => throw _privateConstructorUsedError;
  ColourScheme get colourScheme => throw _privateConstructorUsedError;
  AppThemeMode get themeMode => throw _privateConstructorUsedError;
  dynamic get hasInternetConnection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {Language language,
      ColourScheme colourScheme,
      AppThemeMode themeMode,
      dynamic hasInternetConnection});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? colourScheme = freezed,
    Object? themeMode = freezed,
    Object? hasInternetConnection = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      colourScheme: colourScheme == freezed
          ? _value.colourScheme
          : colourScheme // ignore: cast_nullable_to_non_nullable
              as ColourScheme,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as AppThemeMode,
      hasInternetConnection: hasInternetConnection == freezed
          ? _value.hasInternetConnection
          : hasInternetConnection // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Language language,
      ColourScheme colourScheme,
      AppThemeMode themeMode,
      dynamic hasInternetConnection});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? language = freezed,
    Object? colourScheme = freezed,
    Object? themeMode = freezed,
    Object? hasInternetConnection = freezed,
  }) {
    return _then(_AppState(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      colourScheme: colourScheme == freezed
          ? _value.colourScheme
          : colourScheme // ignore: cast_nullable_to_non_nullable
              as ColourScheme,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as AppThemeMode,
      hasInternetConnection: hasInternetConnection == freezed
          ? _value.hasInternetConnection
          : hasInternetConnection,
    ));
  }
}

/// @nodoc

class _$_AppState extends _AppState {
  const _$_AppState(
      {required this.language,
      required this.colourScheme,
      required this.themeMode,
      this.hasInternetConnection = true})
      : super._();

  @override
  final Language language;
  @override
  final ColourScheme colourScheme;
  @override
  final AppThemeMode themeMode;
  @JsonKey()
  @override
  final dynamic hasInternetConnection;

  @override
  String toString() {
    return 'AppState(language: $language, colourScheme: $colourScheme, themeMode: $themeMode, hasInternetConnection: $hasInternetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.colourScheme, colourScheme) &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode) &&
            const DeepCollectionEquality()
                .equals(other.hasInternetConnection, hasInternetConnection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(colourScheme),
      const DeepCollectionEquality().hash(themeMode),
      const DeepCollectionEquality().hash(hasInternetConnection));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {required Language language,
      required ColourScheme colourScheme,
      required AppThemeMode themeMode,
      dynamic hasInternetConnection}) = _$_AppState;
  const _AppState._() : super._();

  @override
  Language get language;
  @override
  ColourScheme get colourScheme;
  @override
  AppThemeMode get themeMode;
  @override
  dynamic get hasInternetConnection;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

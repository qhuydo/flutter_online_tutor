// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_number_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneNumberFailureTearOff {
  const _$PhoneNumberFailureTearOff();

  _EmptyValue emptyValue() {
    return const _EmptyValue();
  }

  _InvalidPhoneNumber invalidPhoneNumber(String value) {
    return _InvalidPhoneNumber(
      value,
    );
  }

  _InvalidCountryCode invalidCountryCode(Country country) {
    return _InvalidCountryCode(
      country,
    );
  }
}

/// @nodoc
const $PhoneNumberFailure = _$PhoneNumberFailureTearOff();

/// @nodoc
mixin _$PhoneNumberFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyValue,
    required TResult Function(String value) invalidPhoneNumber,
    required TResult Function(Country country) invalidCountryCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyValue,
    TResult Function(String value)? invalidPhoneNumber,
    TResult Function(Country country)? invalidCountryCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyValue,
    TResult Function(String value)? invalidPhoneNumber,
    TResult Function(Country country)? invalidCountryCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyValue value) emptyValue,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidCountryCode value) invalidCountryCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidCountryCode value)? invalidCountryCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidCountryCode value)? invalidCountryCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberFailureCopyWith<$Res> {
  factory $PhoneNumberFailureCopyWith(
          PhoneNumberFailure value, $Res Function(PhoneNumberFailure) then) =
      _$PhoneNumberFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneNumberFailureCopyWithImpl<$Res>
    implements $PhoneNumberFailureCopyWith<$Res> {
  _$PhoneNumberFailureCopyWithImpl(this._value, this._then);

  final PhoneNumberFailure _value;
  // ignore: unused_field
  final $Res Function(PhoneNumberFailure) _then;
}

/// @nodoc
abstract class _$EmptyValueCopyWith<$Res> {
  factory _$EmptyValueCopyWith(
          _EmptyValue value, $Res Function(_EmptyValue) then) =
      __$EmptyValueCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyValueCopyWithImpl<$Res>
    extends _$PhoneNumberFailureCopyWithImpl<$Res>
    implements _$EmptyValueCopyWith<$Res> {
  __$EmptyValueCopyWithImpl(
      _EmptyValue _value, $Res Function(_EmptyValue) _then)
      : super(_value, (v) => _then(v as _EmptyValue));

  @override
  _EmptyValue get _value => super._value as _EmptyValue;
}

/// @nodoc

class _$_EmptyValue implements _EmptyValue {
  const _$_EmptyValue();

  @override
  String toString() {
    return 'PhoneNumberFailure.emptyValue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmptyValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyValue,
    required TResult Function(String value) invalidPhoneNumber,
    required TResult Function(Country country) invalidCountryCode,
  }) {
    return emptyValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyValue,
    TResult Function(String value)? invalidPhoneNumber,
    TResult Function(Country country)? invalidCountryCode,
  }) {
    return emptyValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyValue,
    TResult Function(String value)? invalidPhoneNumber,
    TResult Function(Country country)? invalidCountryCode,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyValue value) emptyValue,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidCountryCode value) invalidCountryCode,
  }) {
    return emptyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidCountryCode value)? invalidCountryCode,
  }) {
    return emptyValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidCountryCode value)? invalidCountryCode,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(this);
    }
    return orElse();
  }
}

abstract class _EmptyValue implements PhoneNumberFailure {
  const factory _EmptyValue() = _$_EmptyValue;
}

/// @nodoc
abstract class _$InvalidPhoneNumberCopyWith<$Res> {
  factory _$InvalidPhoneNumberCopyWith(
          _InvalidPhoneNumber value, $Res Function(_InvalidPhoneNumber) then) =
      __$InvalidPhoneNumberCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$PhoneNumberFailureCopyWithImpl<$Res>
    implements _$InvalidPhoneNumberCopyWith<$Res> {
  __$InvalidPhoneNumberCopyWithImpl(
      _InvalidPhoneNumber _value, $Res Function(_InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as _InvalidPhoneNumber));

  @override
  _InvalidPhoneNumber get _value => super._value as _InvalidPhoneNumber;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_InvalidPhoneNumber(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidPhoneNumber implements _InvalidPhoneNumber {
  const _$_InvalidPhoneNumber(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PhoneNumberFailure.invalidPhoneNumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidPhoneNumber &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$InvalidPhoneNumberCopyWith<_InvalidPhoneNumber> get copyWith =>
      __$InvalidPhoneNumberCopyWithImpl<_InvalidPhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyValue,
    required TResult Function(String value) invalidPhoneNumber,
    required TResult Function(Country country) invalidCountryCode,
  }) {
    return invalidPhoneNumber(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyValue,
    TResult Function(String value)? invalidPhoneNumber,
    TResult Function(Country country)? invalidCountryCode,
  }) {
    return invalidPhoneNumber?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyValue,
    TResult Function(String value)? invalidPhoneNumber,
    TResult Function(Country country)? invalidCountryCode,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyValue value) emptyValue,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidCountryCode value) invalidCountryCode,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidCountryCode value)? invalidCountryCode,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidCountryCode value)? invalidCountryCode,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber implements PhoneNumberFailure {
  const factory _InvalidPhoneNumber(String value) = _$_InvalidPhoneNumber;

  String get value;
  @JsonKey(ignore: true)
  _$InvalidPhoneNumberCopyWith<_InvalidPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidCountryCodeCopyWith<$Res> {
  factory _$InvalidCountryCodeCopyWith(
          _InvalidCountryCode value, $Res Function(_InvalidCountryCode) then) =
      __$InvalidCountryCodeCopyWithImpl<$Res>;
  $Res call({Country country});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$InvalidCountryCodeCopyWithImpl<$Res>
    extends _$PhoneNumberFailureCopyWithImpl<$Res>
    implements _$InvalidCountryCodeCopyWith<$Res> {
  __$InvalidCountryCodeCopyWithImpl(
      _InvalidCountryCode _value, $Res Function(_InvalidCountryCode) _then)
      : super(_value, (v) => _then(v as _InvalidCountryCode));

  @override
  _InvalidCountryCode get _value => super._value as _InvalidCountryCode;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_InvalidCountryCode(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc

class _$_InvalidCountryCode implements _InvalidCountryCode {
  const _$_InvalidCountryCode(this.country);

  @override
  final Country country;

  @override
  String toString() {
    return 'PhoneNumberFailure.invalidCountryCode(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidCountryCode &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$InvalidCountryCodeCopyWith<_InvalidCountryCode> get copyWith =>
      __$InvalidCountryCodeCopyWithImpl<_InvalidCountryCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyValue,
    required TResult Function(String value) invalidPhoneNumber,
    required TResult Function(Country country) invalidCountryCode,
  }) {
    return invalidCountryCode(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyValue,
    TResult Function(String value)? invalidPhoneNumber,
    TResult Function(Country country)? invalidCountryCode,
  }) {
    return invalidCountryCode?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyValue,
    TResult Function(String value)? invalidPhoneNumber,
    TResult Function(Country country)? invalidCountryCode,
    required TResult orElse(),
  }) {
    if (invalidCountryCode != null) {
      return invalidCountryCode(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyValue value) emptyValue,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidCountryCode value) invalidCountryCode,
  }) {
    return invalidCountryCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidCountryCode value)? invalidCountryCode,
  }) {
    return invalidCountryCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidCountryCode value)? invalidCountryCode,
    required TResult orElse(),
  }) {
    if (invalidCountryCode != null) {
      return invalidCountryCode(this);
    }
    return orElse();
  }
}

abstract class _InvalidCountryCode implements PhoneNumberFailure {
  const factory _InvalidCountryCode(Country country) = _$_InvalidCountryCode;

  Country get country;
  @JsonKey(ignore: true)
  _$InvalidCountryCodeCopyWith<_InvalidCountryCode> get copyWith =>
      throw _privateConstructorUsedError;
}

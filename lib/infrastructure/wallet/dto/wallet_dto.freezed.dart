// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletDto _$WalletDtoFromJson(Map<String, dynamic> json) {
  return _WalletDto.fromJson(json);
}

/// @nodoc
class _$WalletDtoTearOff {
  const _$WalletDtoTearOff();

  _WalletDto call(
      {required String id,
      required String userId,
      required double amount,
      required bool isBlocked,
      required String createdAt,
      required String updatedAt,
      required int bonus}) {
    return _WalletDto(
      id: id,
      userId: userId,
      amount: amount,
      isBlocked: isBlocked,
      createdAt: createdAt,
      updatedAt: updatedAt,
      bonus: bonus,
    );
  }

  WalletDto fromJson(Map<String, Object?> json) {
    return WalletDto.fromJson(json);
  }
}

/// @nodoc
const $WalletDto = _$WalletDtoTearOff();

/// @nodoc
mixin _$WalletDto {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDtoCopyWith<WalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDtoCopyWith<$Res> {
  factory $WalletDtoCopyWith(WalletDto value, $Res Function(WalletDto) then) =
      _$WalletDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      double amount,
      bool isBlocked,
      String createdAt,
      String updatedAt,
      int bonus});
}

/// @nodoc
class _$WalletDtoCopyWithImpl<$Res> implements $WalletDtoCopyWith<$Res> {
  _$WalletDtoCopyWithImpl(this._value, this._then);

  final WalletDto _value;
  // ignore: unused_field
  final $Res Function(WalletDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? amount = freezed,
    Object? isBlocked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      isBlocked: isBlocked == freezed
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WalletDtoCopyWith<$Res> implements $WalletDtoCopyWith<$Res> {
  factory _$WalletDtoCopyWith(
          _WalletDto value, $Res Function(_WalletDto) then) =
      __$WalletDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      double amount,
      bool isBlocked,
      String createdAt,
      String updatedAt,
      int bonus});
}

/// @nodoc
class __$WalletDtoCopyWithImpl<$Res> extends _$WalletDtoCopyWithImpl<$Res>
    implements _$WalletDtoCopyWith<$Res> {
  __$WalletDtoCopyWithImpl(_WalletDto _value, $Res Function(_WalletDto) _then)
      : super(_value, (v) => _then(v as _WalletDto));

  @override
  _WalletDto get _value => super._value as _WalletDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? amount = freezed,
    Object? isBlocked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_WalletDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      isBlocked: isBlocked == freezed
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletDto implements _WalletDto {
  const _$_WalletDto(
      {required this.id,
      required this.userId,
      required this.amount,
      required this.isBlocked,
      required this.createdAt,
      required this.updatedAt,
      required this.bonus});

  factory _$_WalletDto.fromJson(Map<String, dynamic> json) =>
      _$$_WalletDtoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final double amount;
  @override
  final bool isBlocked;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final int bonus;

  @override
  String toString() {
    return 'WalletDto(id: $id, userId: $userId, amount: $amount, isBlocked: $isBlocked, createdAt: $createdAt, updatedAt: $updatedAt, bonus: $bonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.isBlocked, isBlocked) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.bonus, bonus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(isBlocked),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(bonus));

  @JsonKey(ignore: true)
  @override
  _$WalletDtoCopyWith<_WalletDto> get copyWith =>
      __$WalletDtoCopyWithImpl<_WalletDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletDtoToJson(this);
  }
}

abstract class _WalletDto implements WalletDto {
  const factory _WalletDto(
      {required String id,
      required String userId,
      required double amount,
      required bool isBlocked,
      required String createdAt,
      required String updatedAt,
      required int bonus}) = _$_WalletDto;

  factory _WalletDto.fromJson(Map<String, dynamic> json) =
      _$_WalletDto.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  double get amount;
  @override
  bool get isBlocked;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  int get bonus;
  @override
  @JsonKey(ignore: true)
  _$WalletDtoCopyWith<_WalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}

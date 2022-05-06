// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'partner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartnerDto _$PartnerDtoFromJson(Map<String, dynamic> json) {
  return _PartnerDto.fromJson(json);
}

/// @nodoc
class _$PartnerDtoTearOff {
  const _$PartnerDtoTearOff();

  _PartnerDto call(
      {required String id,
      String name = '',
      String? avatar,
      bool isOnline = false}) {
    return _PartnerDto(
      id: id,
      name: name,
      avatar: avatar,
      isOnline: isOnline,
    );
  }

  PartnerDto fromJson(Map<String, Object?> json) {
    return PartnerDto.fromJson(json);
  }
}

/// @nodoc
const $PartnerDto = _$PartnerDtoTearOff();

/// @nodoc
mixin _$PartnerDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerDtoCopyWith<PartnerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerDtoCopyWith<$Res> {
  factory $PartnerDtoCopyWith(
          PartnerDto value, $Res Function(PartnerDto) then) =
      _$PartnerDtoCopyWithImpl<$Res>;
  $Res call({String id, String name, String? avatar, bool isOnline});
}

/// @nodoc
class _$PartnerDtoCopyWithImpl<$Res> implements $PartnerDtoCopyWith<$Res> {
  _$PartnerDtoCopyWithImpl(this._value, this._then);

  final PartnerDto _value;
  // ignore: unused_field
  final $Res Function(PartnerDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PartnerDtoCopyWith<$Res> implements $PartnerDtoCopyWith<$Res> {
  factory _$PartnerDtoCopyWith(
          _PartnerDto value, $Res Function(_PartnerDto) then) =
      __$PartnerDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? avatar, bool isOnline});
}

/// @nodoc
class __$PartnerDtoCopyWithImpl<$Res> extends _$PartnerDtoCopyWithImpl<$Res>
    implements _$PartnerDtoCopyWith<$Res> {
  __$PartnerDtoCopyWithImpl(
      _PartnerDto _value, $Res Function(_PartnerDto) _then)
      : super(_value, (v) => _then(v as _PartnerDto));

  @override
  _PartnerDto get _value => super._value as _PartnerDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_PartnerDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartnerDto extends _PartnerDto {
  const _$_PartnerDto(
      {required this.id, this.name = '', this.avatar, this.isOnline = false})
      : super._();

  factory _$_PartnerDto.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerDtoFromJson(json);

  @override
  final String id;
  @JsonKey()
  @override
  final String name;
  @override
  final String? avatar;
  @JsonKey()
  @override
  final bool isOnline;

  @override
  String toString() {
    return 'PartnerDto(id: $id, name: $name, avatar: $avatar, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PartnerDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(isOnline));

  @JsonKey(ignore: true)
  @override
  _$PartnerDtoCopyWith<_PartnerDto> get copyWith =>
      __$PartnerDtoCopyWithImpl<_PartnerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerDtoToJson(this);
  }
}

abstract class _PartnerDto extends PartnerDto {
  const factory _PartnerDto(
      {required String id,
      String name,
      String? avatar,
      bool isOnline}) = _$_PartnerDto;
  const _PartnerDto._() : super._();

  factory _PartnerDto.fromJson(Map<String, dynamic> json) =
      _$_PartnerDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get avatar;
  @override
  bool get isOnline;
  @override
  @JsonKey(ignore: true)
  _$PartnerDtoCopyWith<_PartnerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'partner_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PartnerInfoTearOff {
  const _$PartnerInfoTearOff();

  _PartnerInfo call(
      {required String id,
      String? avatar,
      required String name,
      dynamic isOnline = false}) {
    return _PartnerInfo(
      id: id,
      avatar: avatar,
      name: name,
      isOnline: isOnline,
    );
  }
}

/// @nodoc
const $PartnerInfo = _$PartnerInfoTearOff();

/// @nodoc
mixin _$PartnerInfo {
  String get id => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  dynamic get isOnline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartnerInfoCopyWith<PartnerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerInfoCopyWith<$Res> {
  factory $PartnerInfoCopyWith(
          PartnerInfo value, $Res Function(PartnerInfo) then) =
      _$PartnerInfoCopyWithImpl<$Res>;
  $Res call({String id, String? avatar, String name, dynamic isOnline});
}

/// @nodoc
class _$PartnerInfoCopyWithImpl<$Res> implements $PartnerInfoCopyWith<$Res> {
  _$PartnerInfoCopyWithImpl(this._value, this._then);

  final PartnerInfo _value;
  // ignore: unused_field
  final $Res Function(PartnerInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$PartnerInfoCopyWith<$Res>
    implements $PartnerInfoCopyWith<$Res> {
  factory _$PartnerInfoCopyWith(
          _PartnerInfo value, $Res Function(_PartnerInfo) then) =
      __$PartnerInfoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? avatar, String name, dynamic isOnline});
}

/// @nodoc
class __$PartnerInfoCopyWithImpl<$Res> extends _$PartnerInfoCopyWithImpl<$Res>
    implements _$PartnerInfoCopyWith<$Res> {
  __$PartnerInfoCopyWithImpl(
      _PartnerInfo _value, $Res Function(_PartnerInfo) _then)
      : super(_value, (v) => _then(v as _PartnerInfo));

  @override
  _PartnerInfo get _value => super._value as _PartnerInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_PartnerInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: isOnline == freezed ? _value.isOnline : isOnline,
    ));
  }
}

/// @nodoc

class _$_PartnerInfo implements _PartnerInfo {
  const _$_PartnerInfo(
      {required this.id,
      this.avatar,
      required this.name,
      this.isOnline = false});

  @override
  final String id;
  @override
  final String? avatar;
  @override
  final String name;
  @JsonKey()
  @override
  final dynamic isOnline;

  @override
  String toString() {
    return 'PartnerInfo(id: $id, avatar: $avatar, name: $name, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PartnerInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isOnline));

  @JsonKey(ignore: true)
  @override
  _$PartnerInfoCopyWith<_PartnerInfo> get copyWith =>
      __$PartnerInfoCopyWithImpl<_PartnerInfo>(this, _$identity);
}

abstract class _PartnerInfo implements PartnerInfo {
  const factory _PartnerInfo(
      {required String id,
      String? avatar,
      required String name,
      dynamic isOnline}) = _$_PartnerInfo;

  @override
  String get id;
  @override
  String? get avatar;
  @override
  String get name;
  @override
  dynamic get isOnline;
  @override
  @JsonKey(ignore: true)
  _$PartnerInfoCopyWith<_PartnerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

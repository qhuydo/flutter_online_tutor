// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_list_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageListItemDto _$MessageListItemDtoFromJson(Map<String, dynamic> json) {
  return _MessageListItemDto.fromJson(json);
}

/// @nodoc
class _$MessageListItemDtoTearOff {
  const _$MessageListItemDtoTearOff();

  _MessageListItemDto call(
      {required String id,
      String content = '',
      bool isRead = false,
      required DateTime createdAt,
      required UserInfoDto fromInfo,
      required UserInfoDto toInfo,
      required PartnerDto partner}) {
    return _MessageListItemDto(
      id: id,
      content: content,
      isRead: isRead,
      createdAt: createdAt,
      fromInfo: fromInfo,
      toInfo: toInfo,
      partner: partner,
    );
  }

  MessageListItemDto fromJson(Map<String, Object?> json) {
    return MessageListItemDto.fromJson(json);
  }
}

/// @nodoc
const $MessageListItemDto = _$MessageListItemDtoTearOff();

/// @nodoc
mixin _$MessageListItemDto {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  UserInfoDto get fromInfo => throw _privateConstructorUsedError;
  UserInfoDto get toInfo => throw _privateConstructorUsedError;
  PartnerDto get partner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageListItemDtoCopyWith<MessageListItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListItemDtoCopyWith<$Res> {
  factory $MessageListItemDtoCopyWith(
          MessageListItemDto value, $Res Function(MessageListItemDto) then) =
      _$MessageListItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String content,
      bool isRead,
      DateTime createdAt,
      UserInfoDto fromInfo,
      UserInfoDto toInfo,
      PartnerDto partner});

  $UserInfoDtoCopyWith<$Res> get fromInfo;
  $UserInfoDtoCopyWith<$Res> get toInfo;
  $PartnerDtoCopyWith<$Res> get partner;
}

/// @nodoc
class _$MessageListItemDtoCopyWithImpl<$Res>
    implements $MessageListItemDtoCopyWith<$Res> {
  _$MessageListItemDtoCopyWithImpl(this._value, this._then);

  final MessageListItemDto _value;
  // ignore: unused_field
  final $Res Function(MessageListItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
    Object? fromInfo = freezed,
    Object? toInfo = freezed,
    Object? partner = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromInfo: fromInfo == freezed
          ? _value.fromInfo
          : fromInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoDto,
      toInfo: toInfo == freezed
          ? _value.toInfo
          : toInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoDto,
      partner: partner == freezed
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerDto,
    ));
  }

  @override
  $UserInfoDtoCopyWith<$Res> get fromInfo {
    return $UserInfoDtoCopyWith<$Res>(_value.fromInfo, (value) {
      return _then(_value.copyWith(fromInfo: value));
    });
  }

  @override
  $UserInfoDtoCopyWith<$Res> get toInfo {
    return $UserInfoDtoCopyWith<$Res>(_value.toInfo, (value) {
      return _then(_value.copyWith(toInfo: value));
    });
  }

  @override
  $PartnerDtoCopyWith<$Res> get partner {
    return $PartnerDtoCopyWith<$Res>(_value.partner, (value) {
      return _then(_value.copyWith(partner: value));
    });
  }
}

/// @nodoc
abstract class _$MessageListItemDtoCopyWith<$Res>
    implements $MessageListItemDtoCopyWith<$Res> {
  factory _$MessageListItemDtoCopyWith(
          _MessageListItemDto value, $Res Function(_MessageListItemDto) then) =
      __$MessageListItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String content,
      bool isRead,
      DateTime createdAt,
      UserInfoDto fromInfo,
      UserInfoDto toInfo,
      PartnerDto partner});

  @override
  $UserInfoDtoCopyWith<$Res> get fromInfo;
  @override
  $UserInfoDtoCopyWith<$Res> get toInfo;
  @override
  $PartnerDtoCopyWith<$Res> get partner;
}

/// @nodoc
class __$MessageListItemDtoCopyWithImpl<$Res>
    extends _$MessageListItemDtoCopyWithImpl<$Res>
    implements _$MessageListItemDtoCopyWith<$Res> {
  __$MessageListItemDtoCopyWithImpl(
      _MessageListItemDto _value, $Res Function(_MessageListItemDto) _then)
      : super(_value, (v) => _then(v as _MessageListItemDto));

  @override
  _MessageListItemDto get _value => super._value as _MessageListItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
    Object? fromInfo = freezed,
    Object? toInfo = freezed,
    Object? partner = freezed,
  }) {
    return _then(_MessageListItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromInfo: fromInfo == freezed
          ? _value.fromInfo
          : fromInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoDto,
      toInfo: toInfo == freezed
          ? _value.toInfo
          : toInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoDto,
      partner: partner == freezed
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageListItemDto extends _MessageListItemDto {
  const _$_MessageListItemDto(
      {required this.id,
      this.content = '',
      this.isRead = false,
      required this.createdAt,
      required this.fromInfo,
      required this.toInfo,
      required this.partner})
      : super._();

  factory _$_MessageListItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageListItemDtoFromJson(json);

  @override
  final String id;
  @JsonKey()
  @override
  final String content;
  @JsonKey()
  @override
  final bool isRead;
  @override
  final DateTime createdAt;
  @override
  final UserInfoDto fromInfo;
  @override
  final UserInfoDto toInfo;
  @override
  final PartnerDto partner;

  @override
  String toString() {
    return 'MessageListItemDto(id: $id, content: $content, isRead: $isRead, createdAt: $createdAt, fromInfo: $fromInfo, toInfo: $toInfo, partner: $partner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageListItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.isRead, isRead) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.fromInfo, fromInfo) &&
            const DeepCollectionEquality().equals(other.toInfo, toInfo) &&
            const DeepCollectionEquality().equals(other.partner, partner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(isRead),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(fromInfo),
      const DeepCollectionEquality().hash(toInfo),
      const DeepCollectionEquality().hash(partner));

  @JsonKey(ignore: true)
  @override
  _$MessageListItemDtoCopyWith<_MessageListItemDto> get copyWith =>
      __$MessageListItemDtoCopyWithImpl<_MessageListItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageListItemDtoToJson(this);
  }
}

abstract class _MessageListItemDto extends MessageListItemDto {
  const factory _MessageListItemDto(
      {required String id,
      String content,
      bool isRead,
      required DateTime createdAt,
      required UserInfoDto fromInfo,
      required UserInfoDto toInfo,
      required PartnerDto partner}) = _$_MessageListItemDto;
  const _MessageListItemDto._() : super._();

  factory _MessageListItemDto.fromJson(Map<String, dynamic> json) =
      _$_MessageListItemDto.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  bool get isRead;
  @override
  DateTime get createdAt;
  @override
  UserInfoDto get fromInfo;
  @override
  UserInfoDto get toInfo;
  @override
  PartnerDto get partner;
  @override
  @JsonKey(ignore: true)
  _$MessageListItemDtoCopyWith<_MessageListItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

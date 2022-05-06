// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_bubble_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageBubbleDto _$MessageBubbleDtoFromJson(Map<String, dynamic> json) {
  return _MessageBubbleDto.fromJson(json);
}

/// @nodoc
class _$MessageBubbleDtoTearOff {
  const _$MessageBubbleDtoTearOff();

  _MessageBubbleDto call(
      {required String id,
      String content = '',
      bool isRead = false,
      required DateTime createdAt,
      required UserInfoDto fromInfo,
      required UserInfoDto toInfo}) {
    return _MessageBubbleDto(
      id: id,
      content: content,
      isRead: isRead,
      createdAt: createdAt,
      fromInfo: fromInfo,
      toInfo: toInfo,
    );
  }

  MessageBubbleDto fromJson(Map<String, Object?> json) {
    return MessageBubbleDto.fromJson(json);
  }
}

/// @nodoc
const $MessageBubbleDto = _$MessageBubbleDtoTearOff();

/// @nodoc
mixin _$MessageBubbleDto {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // required DateTime updatedAt,
  UserInfoDto get fromInfo => throw _privateConstructorUsedError;
  UserInfoDto get toInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageBubbleDtoCopyWith<MessageBubbleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBubbleDtoCopyWith<$Res> {
  factory $MessageBubbleDtoCopyWith(
          MessageBubbleDto value, $Res Function(MessageBubbleDto) then) =
      _$MessageBubbleDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String content,
      bool isRead,
      DateTime createdAt,
      UserInfoDto fromInfo,
      UserInfoDto toInfo});

  $UserInfoDtoCopyWith<$Res> get fromInfo;
  $UserInfoDtoCopyWith<$Res> get toInfo;
}

/// @nodoc
class _$MessageBubbleDtoCopyWithImpl<$Res>
    implements $MessageBubbleDtoCopyWith<$Res> {
  _$MessageBubbleDtoCopyWithImpl(this._value, this._then);

  final MessageBubbleDto _value;
  // ignore: unused_field
  final $Res Function(MessageBubbleDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
    Object? fromInfo = freezed,
    Object? toInfo = freezed,
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
}

/// @nodoc
abstract class _$MessageBubbleDtoCopyWith<$Res>
    implements $MessageBubbleDtoCopyWith<$Res> {
  factory _$MessageBubbleDtoCopyWith(
          _MessageBubbleDto value, $Res Function(_MessageBubbleDto) then) =
      __$MessageBubbleDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String content,
      bool isRead,
      DateTime createdAt,
      UserInfoDto fromInfo,
      UserInfoDto toInfo});

  @override
  $UserInfoDtoCopyWith<$Res> get fromInfo;
  @override
  $UserInfoDtoCopyWith<$Res> get toInfo;
}

/// @nodoc
class __$MessageBubbleDtoCopyWithImpl<$Res>
    extends _$MessageBubbleDtoCopyWithImpl<$Res>
    implements _$MessageBubbleDtoCopyWith<$Res> {
  __$MessageBubbleDtoCopyWithImpl(
      _MessageBubbleDto _value, $Res Function(_MessageBubbleDto) _then)
      : super(_value, (v) => _then(v as _MessageBubbleDto));

  @override
  _MessageBubbleDto get _value => super._value as _MessageBubbleDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
    Object? fromInfo = freezed,
    Object? toInfo = freezed,
  }) {
    return _then(_MessageBubbleDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageBubbleDto extends _MessageBubbleDto {
  const _$_MessageBubbleDto(
      {required this.id,
      this.content = '',
      this.isRead = false,
      required this.createdAt,
      required this.fromInfo,
      required this.toInfo})
      : super._();

  factory _$_MessageBubbleDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageBubbleDtoFromJson(json);

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
  @override // required DateTime updatedAt,
  final UserInfoDto fromInfo;
  @override
  final UserInfoDto toInfo;

  @override
  String toString() {
    return 'MessageBubbleDto(id: $id, content: $content, isRead: $isRead, createdAt: $createdAt, fromInfo: $fromInfo, toInfo: $toInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageBubbleDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.isRead, isRead) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.fromInfo, fromInfo) &&
            const DeepCollectionEquality().equals(other.toInfo, toInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(isRead),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(fromInfo),
      const DeepCollectionEquality().hash(toInfo));

  @JsonKey(ignore: true)
  @override
  _$MessageBubbleDtoCopyWith<_MessageBubbleDto> get copyWith =>
      __$MessageBubbleDtoCopyWithImpl<_MessageBubbleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageBubbleDtoToJson(this);
  }
}

abstract class _MessageBubbleDto extends MessageBubbleDto {
  const factory _MessageBubbleDto(
      {required String id,
      String content,
      bool isRead,
      required DateTime createdAt,
      required UserInfoDto fromInfo,
      required UserInfoDto toInfo}) = _$_MessageBubbleDto;
  const _MessageBubbleDto._() : super._();

  factory _MessageBubbleDto.fromJson(Map<String, dynamic> json) =
      _$_MessageBubbleDto.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  bool get isRead;
  @override
  DateTime get createdAt;
  @override // required DateTime updatedAt,
  UserInfoDto get fromInfo;
  @override
  UserInfoDto get toInfo;
  @override
  @JsonKey(ignore: true)
  _$MessageBubbleDtoCopyWith<_MessageBubbleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

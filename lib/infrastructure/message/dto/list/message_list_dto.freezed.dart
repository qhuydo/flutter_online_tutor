// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageListDto _$MessageListDtoFromJson(Map<String, dynamic> json) {
  return _MessageListDto.fromJson(json);
}

/// @nodoc
class _$MessageListDtoTearOff {
  const _$MessageListDtoTearOff();

  _MessageListDto call(
      {List<MessageListItemDto> recentList = const [], int unreadCount = 0}) {
    return _MessageListDto(
      recentList: recentList,
      unreadCount: unreadCount,
    );
  }

  MessageListDto fromJson(Map<String, Object?> json) {
    return MessageListDto.fromJson(json);
  }
}

/// @nodoc
const $MessageListDto = _$MessageListDtoTearOff();

/// @nodoc
mixin _$MessageListDto {
  List<MessageListItemDto> get recentList => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageListDtoCopyWith<MessageListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListDtoCopyWith<$Res> {
  factory $MessageListDtoCopyWith(
          MessageListDto value, $Res Function(MessageListDto) then) =
      _$MessageListDtoCopyWithImpl<$Res>;
  $Res call({List<MessageListItemDto> recentList, int unreadCount});
}

/// @nodoc
class _$MessageListDtoCopyWithImpl<$Res>
    implements $MessageListDtoCopyWith<$Res> {
  _$MessageListDtoCopyWithImpl(this._value, this._then);

  final MessageListDto _value;
  // ignore: unused_field
  final $Res Function(MessageListDto) _then;

  @override
  $Res call({
    Object? recentList = freezed,
    Object? unreadCount = freezed,
  }) {
    return _then(_value.copyWith(
      recentList: recentList == freezed
          ? _value.recentList
          : recentList // ignore: cast_nullable_to_non_nullable
              as List<MessageListItemDto>,
      unreadCount: unreadCount == freezed
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MessageListDtoCopyWith<$Res>
    implements $MessageListDtoCopyWith<$Res> {
  factory _$MessageListDtoCopyWith(
          _MessageListDto value, $Res Function(_MessageListDto) then) =
      __$MessageListDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<MessageListItemDto> recentList, int unreadCount});
}

/// @nodoc
class __$MessageListDtoCopyWithImpl<$Res>
    extends _$MessageListDtoCopyWithImpl<$Res>
    implements _$MessageListDtoCopyWith<$Res> {
  __$MessageListDtoCopyWithImpl(
      _MessageListDto _value, $Res Function(_MessageListDto) _then)
      : super(_value, (v) => _then(v as _MessageListDto));

  @override
  _MessageListDto get _value => super._value as _MessageListDto;

  @override
  $Res call({
    Object? recentList = freezed,
    Object? unreadCount = freezed,
  }) {
    return _then(_MessageListDto(
      recentList: recentList == freezed
          ? _value.recentList
          : recentList // ignore: cast_nullable_to_non_nullable
              as List<MessageListItemDto>,
      unreadCount: unreadCount == freezed
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageListDto implements _MessageListDto {
  const _$_MessageListDto({this.recentList = const [], this.unreadCount = 0});

  factory _$_MessageListDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageListDtoFromJson(json);

  @JsonKey()
  @override
  final List<MessageListItemDto> recentList;
  @JsonKey()
  @override
  final int unreadCount;

  @override
  String toString() {
    return 'MessageListDto(recentList: $recentList, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageListDto &&
            const DeepCollectionEquality()
                .equals(other.recentList, recentList) &&
            const DeepCollectionEquality()
                .equals(other.unreadCount, unreadCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recentList),
      const DeepCollectionEquality().hash(unreadCount));

  @JsonKey(ignore: true)
  @override
  _$MessageListDtoCopyWith<_MessageListDto> get copyWith =>
      __$MessageListDtoCopyWithImpl<_MessageListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageListDtoToJson(this);
  }
}

abstract class _MessageListDto implements MessageListDto {
  const factory _MessageListDto(
      {List<MessageListItemDto> recentList,
      int unreadCount}) = _$_MessageListDto;

  factory _MessageListDto.fromJson(Map<String, dynamic> json) =
      _$_MessageListDto.fromJson;

  @override
  List<MessageListItemDto> get recentList;
  @override
  int get unreadCount;
  @override
  @JsonKey(ignore: true)
  _$MessageListDtoCopyWith<_MessageListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

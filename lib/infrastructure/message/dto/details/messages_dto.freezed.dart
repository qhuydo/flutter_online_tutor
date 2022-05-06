// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messages_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagesDto _$MessagesDtoFromJson(Map<String, dynamic> json) {
  return _MessagesDto.fromJson(json);
}

/// @nodoc
class _$MessagesDtoTearOff {
  const _$MessagesDtoTearOff();

  _MessagesDto call({List<MessageBubbleDto> messages = const []}) {
    return _MessagesDto(
      messages: messages,
    );
  }

  MessagesDto fromJson(Map<String, Object?> json) {
    return MessagesDto.fromJson(json);
  }
}

/// @nodoc
const $MessagesDto = _$MessagesDtoTearOff();

/// @nodoc
mixin _$MessagesDto {
  List<MessageBubbleDto> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesDtoCopyWith<MessagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesDtoCopyWith<$Res> {
  factory $MessagesDtoCopyWith(
          MessagesDto value, $Res Function(MessagesDto) then) =
      _$MessagesDtoCopyWithImpl<$Res>;
  $Res call({List<MessageBubbleDto> messages});
}

/// @nodoc
class _$MessagesDtoCopyWithImpl<$Res> implements $MessagesDtoCopyWith<$Res> {
  _$MessagesDtoCopyWithImpl(this._value, this._then);

  final MessagesDto _value;
  // ignore: unused_field
  final $Res Function(MessagesDto) _then;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageBubbleDto>,
    ));
  }
}

/// @nodoc
abstract class _$MessagesDtoCopyWith<$Res>
    implements $MessagesDtoCopyWith<$Res> {
  factory _$MessagesDtoCopyWith(
          _MessagesDto value, $Res Function(_MessagesDto) then) =
      __$MessagesDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<MessageBubbleDto> messages});
}

/// @nodoc
class __$MessagesDtoCopyWithImpl<$Res> extends _$MessagesDtoCopyWithImpl<$Res>
    implements _$MessagesDtoCopyWith<$Res> {
  __$MessagesDtoCopyWithImpl(
      _MessagesDto _value, $Res Function(_MessagesDto) _then)
      : super(_value, (v) => _then(v as _MessagesDto));

  @override
  _MessagesDto get _value => super._value as _MessagesDto;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_MessagesDto(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageBubbleDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagesDto implements _MessagesDto {
  const _$_MessagesDto({this.messages = const []});

  factory _$_MessagesDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesDtoFromJson(json);

  @JsonKey()
  @override
  final List<MessageBubbleDto> messages;

  @override
  String toString() {
    return 'MessagesDto(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessagesDto &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$MessagesDtoCopyWith<_MessagesDto> get copyWith =>
      __$MessagesDtoCopyWithImpl<_MessagesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesDtoToJson(this);
  }
}

abstract class _MessagesDto implements MessagesDto {
  const factory _MessagesDto({List<MessageBubbleDto> messages}) =
      _$_MessagesDto;

  factory _MessagesDto.fromJson(Map<String, dynamic> json) =
      _$_MessagesDto.fromJson;

  @override
  List<MessageBubbleDto> get messages;
  @override
  @JsonKey(ignore: true)
  _$MessagesDtoCopyWith<_MessagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

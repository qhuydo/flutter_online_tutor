// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_bubble.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageBubbleTearOff {
  const _$MessageBubbleTearOff();

  _MessageBubble call(
      {required UserInfo from,
      required UserInfo to,
      required DateTime createdAt,
      dynamic hasRead = false}) {
    return _MessageBubble(
      from: from,
      to: to,
      createdAt: createdAt,
      hasRead: hasRead,
    );
  }
}

/// @nodoc
const $MessageBubble = _$MessageBubbleTearOff();

/// @nodoc
mixin _$MessageBubble {
  UserInfo get from => throw _privateConstructorUsedError;
  UserInfo get to => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  dynamic get hasRead => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageBubbleCopyWith<MessageBubble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBubbleCopyWith<$Res> {
  factory $MessageBubbleCopyWith(
          MessageBubble value, $Res Function(MessageBubble) then) =
      _$MessageBubbleCopyWithImpl<$Res>;
  $Res call({UserInfo from, UserInfo to, DateTime createdAt, dynamic hasRead});

  $UserInfoCopyWith<$Res> get from;
  $UserInfoCopyWith<$Res> get to;
}

/// @nodoc
class _$MessageBubbleCopyWithImpl<$Res>
    implements $MessageBubbleCopyWith<$Res> {
  _$MessageBubbleCopyWithImpl(this._value, this._then);

  final MessageBubble _value;
  // ignore: unused_field
  final $Res Function(MessageBubble) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? createdAt = freezed,
    Object? hasRead = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasRead: hasRead == freezed
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  @override
  $UserInfoCopyWith<$Res> get from {
    return $UserInfoCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $UserInfoCopyWith<$Res> get to {
    return $UserInfoCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$MessageBubbleCopyWith<$Res>
    implements $MessageBubbleCopyWith<$Res> {
  factory _$MessageBubbleCopyWith(
          _MessageBubble value, $Res Function(_MessageBubble) then) =
      __$MessageBubbleCopyWithImpl<$Res>;
  @override
  $Res call({UserInfo from, UserInfo to, DateTime createdAt, dynamic hasRead});

  @override
  $UserInfoCopyWith<$Res> get from;
  @override
  $UserInfoCopyWith<$Res> get to;
}

/// @nodoc
class __$MessageBubbleCopyWithImpl<$Res>
    extends _$MessageBubbleCopyWithImpl<$Res>
    implements _$MessageBubbleCopyWith<$Res> {
  __$MessageBubbleCopyWithImpl(
      _MessageBubble _value, $Res Function(_MessageBubble) _then)
      : super(_value, (v) => _then(v as _MessageBubble));

  @override
  _MessageBubble get _value => super._value as _MessageBubble;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? createdAt = freezed,
    Object? hasRead = freezed,
  }) {
    return _then(_MessageBubble(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasRead: hasRead == freezed ? _value.hasRead : hasRead,
    ));
  }
}

/// @nodoc

class _$_MessageBubble extends _MessageBubble {
  const _$_MessageBubble(
      {required this.from,
      required this.to,
      required this.createdAt,
      this.hasRead = false})
      : super._();

  @override
  final UserInfo from;
  @override
  final UserInfo to;
  @override
  final DateTime createdAt;
  @JsonKey()
  @override
  final dynamic hasRead;

  @override
  String toString() {
    return 'MessageBubble(from: $from, to: $to, createdAt: $createdAt, hasRead: $hasRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageBubble &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.hasRead, hasRead));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(hasRead));

  @JsonKey(ignore: true)
  @override
  _$MessageBubbleCopyWith<_MessageBubble> get copyWith =>
      __$MessageBubbleCopyWithImpl<_MessageBubble>(this, _$identity);
}

abstract class _MessageBubble extends MessageBubble {
  const factory _MessageBubble(
      {required UserInfo from,
      required UserInfo to,
      required DateTime createdAt,
      dynamic hasRead}) = _$_MessageBubble;
  const _MessageBubble._() : super._();

  @override
  UserInfo get from;
  @override
  UserInfo get to;
  @override
  DateTime get createdAt;
  @override
  dynamic get hasRead;
  @override
  @JsonKey(ignore: true)
  _$MessageBubbleCopyWith<_MessageBubble> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meeting_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MeetingRoomTearOff {
  const _$MeetingRoomTearOff();

  _MeetingRoom call(
      {required String room,
      required String roomName,
      required String token,
      required User user}) {
    return _MeetingRoom(
      room: room,
      roomName: roomName,
      token: token,
      user: user,
    );
  }
}

/// @nodoc
const $MeetingRoom = _$MeetingRoomTearOff();

/// @nodoc
mixin _$MeetingRoom {
  String get room => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeetingRoomCopyWith<MeetingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRoomCopyWith<$Res> {
  factory $MeetingRoomCopyWith(
          MeetingRoom value, $Res Function(MeetingRoom) then) =
      _$MeetingRoomCopyWithImpl<$Res>;
  $Res call({String room, String roomName, String token, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$MeetingRoomCopyWithImpl<$Res> implements $MeetingRoomCopyWith<$Res> {
  _$MeetingRoomCopyWithImpl(this._value, this._then);

  final MeetingRoom _value;
  // ignore: unused_field
  final $Res Function(MeetingRoom) _then;

  @override
  $Res call({
    Object? room = freezed,
    Object? roomName = freezed,
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$MeetingRoomCopyWith<$Res>
    implements $MeetingRoomCopyWith<$Res> {
  factory _$MeetingRoomCopyWith(
          _MeetingRoom value, $Res Function(_MeetingRoom) then) =
      __$MeetingRoomCopyWithImpl<$Res>;
  @override
  $Res call({String room, String roomName, String token, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$MeetingRoomCopyWithImpl<$Res> extends _$MeetingRoomCopyWithImpl<$Res>
    implements _$MeetingRoomCopyWith<$Res> {
  __$MeetingRoomCopyWithImpl(
      _MeetingRoom _value, $Res Function(_MeetingRoom) _then)
      : super(_value, (v) => _then(v as _MeetingRoom));

  @override
  _MeetingRoom get _value => super._value as _MeetingRoom;

  @override
  $Res call({
    Object? room = freezed,
    Object? roomName = freezed,
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_MeetingRoom(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_MeetingRoom implements _MeetingRoom {
  const _$_MeetingRoom(
      {required this.room,
      required this.roomName,
      required this.token,
      required this.user});

  @override
  final String room;
  @override
  final String roomName;
  @override
  final String token;
  @override
  final User user;

  @override
  String toString() {
    return 'MeetingRoom(room: $room, roomName: $roomName, token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeetingRoom &&
            const DeepCollectionEquality().equals(other.room, room) &&
            const DeepCollectionEquality().equals(other.roomName, roomName) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(room),
      const DeepCollectionEquality().hash(roomName),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$MeetingRoomCopyWith<_MeetingRoom> get copyWith =>
      __$MeetingRoomCopyWithImpl<_MeetingRoom>(this, _$identity);
}

abstract class _MeetingRoom implements MeetingRoom {
  const factory _MeetingRoom(
      {required String room,
      required String roomName,
      required String token,
      required User user}) = _$_MeetingRoom;

  @override
  String get room;
  @override
  String get roomName;
  @override
  String get token;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$MeetingRoomCopyWith<_MeetingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

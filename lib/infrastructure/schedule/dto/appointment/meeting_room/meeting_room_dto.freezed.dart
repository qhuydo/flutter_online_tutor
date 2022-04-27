// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meeting_room_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetingRoomDto _$MeetingRoomDtoFromJson(Map<String, dynamic> json) {
  return _MeetingRoomDto.fromJson(json);
}

/// @nodoc
class _$MeetingRoomDtoTearOff {
  const _$MeetingRoomDtoTearOff();

  _MeetingRoomDto call(
      {required Context context,
      required String room,
      required String roomName,
      required UserDto userCall,
      required UserDto userBeCalled,
      required bool isTutor,
      required int startTime,
      required int endSession,
      required int timeInRoom,
      required String bookingId,
      required int iat,
      required int exp,
      required String aud,
      required String iss,
      required String sub}) {
    return _MeetingRoomDto(
      context: context,
      room: room,
      roomName: roomName,
      userCall: userCall,
      userBeCalled: userBeCalled,
      isTutor: isTutor,
      startTime: startTime,
      endSession: endSession,
      timeInRoom: timeInRoom,
      bookingId: bookingId,
      iat: iat,
      exp: exp,
      aud: aud,
      iss: iss,
      sub: sub,
    );
  }

  MeetingRoomDto fromJson(Map<String, Object?> json) {
    return MeetingRoomDto.fromJson(json);
  }
}

/// @nodoc
const $MeetingRoomDto = _$MeetingRoomDtoTearOff();

/// @nodoc
mixin _$MeetingRoomDto {
  Context get context => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;
  UserDto get userCall => throw _privateConstructorUsedError;
  UserDto get userBeCalled => throw _privateConstructorUsedError;
  bool get isTutor => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endSession => throw _privateConstructorUsedError;
  int get timeInRoom => throw _privateConstructorUsedError;
  String get bookingId => throw _privateConstructorUsedError;
  int get iat => throw _privateConstructorUsedError;
  int get exp => throw _privateConstructorUsedError;
  String get aud => throw _privateConstructorUsedError;
  String get iss => throw _privateConstructorUsedError;
  String get sub => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRoomDtoCopyWith<MeetingRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRoomDtoCopyWith<$Res> {
  factory $MeetingRoomDtoCopyWith(
          MeetingRoomDto value, $Res Function(MeetingRoomDto) then) =
      _$MeetingRoomDtoCopyWithImpl<$Res>;
  $Res call(
      {Context context,
      String room,
      String roomName,
      UserDto userCall,
      UserDto userBeCalled,
      bool isTutor,
      int startTime,
      int endSession,
      int timeInRoom,
      String bookingId,
      int iat,
      int exp,
      String aud,
      String iss,
      String sub});

  $ContextCopyWith<$Res> get context;
  $UserDtoCopyWith<$Res> get userCall;
  $UserDtoCopyWith<$Res> get userBeCalled;
}

/// @nodoc
class _$MeetingRoomDtoCopyWithImpl<$Res>
    implements $MeetingRoomDtoCopyWith<$Res> {
  _$MeetingRoomDtoCopyWithImpl(this._value, this._then);

  final MeetingRoomDto _value;
  // ignore: unused_field
  final $Res Function(MeetingRoomDto) _then;

  @override
  $Res call({
    Object? context = freezed,
    Object? room = freezed,
    Object? roomName = freezed,
    Object? userCall = freezed,
    Object? userBeCalled = freezed,
    Object? isTutor = freezed,
    Object? startTime = freezed,
    Object? endSession = freezed,
    Object? timeInRoom = freezed,
    Object? bookingId = freezed,
    Object? iat = freezed,
    Object? exp = freezed,
    Object? aud = freezed,
    Object? iss = freezed,
    Object? sub = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      userCall: userCall == freezed
          ? _value.userCall
          : userCall // ignore: cast_nullable_to_non_nullable
              as UserDto,
      userBeCalled: userBeCalled == freezed
          ? _value.userBeCalled
          : userBeCalled // ignore: cast_nullable_to_non_nullable
              as UserDto,
      isTutor: isTutor == freezed
          ? _value.isTutor
          : isTutor // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endSession: endSession == freezed
          ? _value.endSession
          : endSession // ignore: cast_nullable_to_non_nullable
              as int,
      timeInRoom: timeInRoom == freezed
          ? _value.timeInRoom
          : timeInRoom // ignore: cast_nullable_to_non_nullable
              as int,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      iat: iat == freezed
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      aud: aud == freezed
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      iss: iss == freezed
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String,
      sub: sub == freezed
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ContextCopyWith<$Res> get context {
    return $ContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value));
    });
  }

  @override
  $UserDtoCopyWith<$Res> get userCall {
    return $UserDtoCopyWith<$Res>(_value.userCall, (value) {
      return _then(_value.copyWith(userCall: value));
    });
  }

  @override
  $UserDtoCopyWith<$Res> get userBeCalled {
    return $UserDtoCopyWith<$Res>(_value.userBeCalled, (value) {
      return _then(_value.copyWith(userBeCalled: value));
    });
  }
}

/// @nodoc
abstract class _$MeetingRoomDtoCopyWith<$Res>
    implements $MeetingRoomDtoCopyWith<$Res> {
  factory _$MeetingRoomDtoCopyWith(
          _MeetingRoomDto value, $Res Function(_MeetingRoomDto) then) =
      __$MeetingRoomDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Context context,
      String room,
      String roomName,
      UserDto userCall,
      UserDto userBeCalled,
      bool isTutor,
      int startTime,
      int endSession,
      int timeInRoom,
      String bookingId,
      int iat,
      int exp,
      String aud,
      String iss,
      String sub});

  @override
  $ContextCopyWith<$Res> get context;
  @override
  $UserDtoCopyWith<$Res> get userCall;
  @override
  $UserDtoCopyWith<$Res> get userBeCalled;
}

/// @nodoc
class __$MeetingRoomDtoCopyWithImpl<$Res>
    extends _$MeetingRoomDtoCopyWithImpl<$Res>
    implements _$MeetingRoomDtoCopyWith<$Res> {
  __$MeetingRoomDtoCopyWithImpl(
      _MeetingRoomDto _value, $Res Function(_MeetingRoomDto) _then)
      : super(_value, (v) => _then(v as _MeetingRoomDto));

  @override
  _MeetingRoomDto get _value => super._value as _MeetingRoomDto;

  @override
  $Res call({
    Object? context = freezed,
    Object? room = freezed,
    Object? roomName = freezed,
    Object? userCall = freezed,
    Object? userBeCalled = freezed,
    Object? isTutor = freezed,
    Object? startTime = freezed,
    Object? endSession = freezed,
    Object? timeInRoom = freezed,
    Object? bookingId = freezed,
    Object? iat = freezed,
    Object? exp = freezed,
    Object? aud = freezed,
    Object? iss = freezed,
    Object? sub = freezed,
  }) {
    return _then(_MeetingRoomDto(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      userCall: userCall == freezed
          ? _value.userCall
          : userCall // ignore: cast_nullable_to_non_nullable
              as UserDto,
      userBeCalled: userBeCalled == freezed
          ? _value.userBeCalled
          : userBeCalled // ignore: cast_nullable_to_non_nullable
              as UserDto,
      isTutor: isTutor == freezed
          ? _value.isTutor
          : isTutor // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endSession: endSession == freezed
          ? _value.endSession
          : endSession // ignore: cast_nullable_to_non_nullable
              as int,
      timeInRoom: timeInRoom == freezed
          ? _value.timeInRoom
          : timeInRoom // ignore: cast_nullable_to_non_nullable
              as int,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      iat: iat == freezed
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      aud: aud == freezed
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      iss: iss == freezed
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String,
      sub: sub == freezed
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetingRoomDto extends _MeetingRoomDto {
  const _$_MeetingRoomDto(
      {required this.context,
      required this.room,
      required this.roomName,
      required this.userCall,
      required this.userBeCalled,
      required this.isTutor,
      required this.startTime,
      required this.endSession,
      required this.timeInRoom,
      required this.bookingId,
      required this.iat,
      required this.exp,
      required this.aud,
      required this.iss,
      required this.sub})
      : super._();

  factory _$_MeetingRoomDto.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRoomDtoFromJson(json);

  @override
  final Context context;
  @override
  final String room;
  @override
  final String roomName;
  @override
  final UserDto userCall;
  @override
  final UserDto userBeCalled;
  @override
  final bool isTutor;
  @override
  final int startTime;
  @override
  final int endSession;
  @override
  final int timeInRoom;
  @override
  final String bookingId;
  @override
  final int iat;
  @override
  final int exp;
  @override
  final String aud;
  @override
  final String iss;
  @override
  final String sub;

  @override
  String toString() {
    return 'MeetingRoomDto(context: $context, room: $room, roomName: $roomName, userCall: $userCall, userBeCalled: $userBeCalled, isTutor: $isTutor, startTime: $startTime, endSession: $endSession, timeInRoom: $timeInRoom, bookingId: $bookingId, iat: $iat, exp: $exp, aud: $aud, iss: $iss, sub: $sub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeetingRoomDto &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.room, room) &&
            const DeepCollectionEquality().equals(other.roomName, roomName) &&
            const DeepCollectionEquality().equals(other.userCall, userCall) &&
            const DeepCollectionEquality()
                .equals(other.userBeCalled, userBeCalled) &&
            const DeepCollectionEquality().equals(other.isTutor, isTutor) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality()
                .equals(other.endSession, endSession) &&
            const DeepCollectionEquality()
                .equals(other.timeInRoom, timeInRoom) &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality().equals(other.iat, iat) &&
            const DeepCollectionEquality().equals(other.exp, exp) &&
            const DeepCollectionEquality().equals(other.aud, aud) &&
            const DeepCollectionEquality().equals(other.iss, iss) &&
            const DeepCollectionEquality().equals(other.sub, sub));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(room),
      const DeepCollectionEquality().hash(roomName),
      const DeepCollectionEquality().hash(userCall),
      const DeepCollectionEquality().hash(userBeCalled),
      const DeepCollectionEquality().hash(isTutor),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endSession),
      const DeepCollectionEquality().hash(timeInRoom),
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(iat),
      const DeepCollectionEquality().hash(exp),
      const DeepCollectionEquality().hash(aud),
      const DeepCollectionEquality().hash(iss),
      const DeepCollectionEquality().hash(sub));

  @JsonKey(ignore: true)
  @override
  _$MeetingRoomDtoCopyWith<_MeetingRoomDto> get copyWith =>
      __$MeetingRoomDtoCopyWithImpl<_MeetingRoomDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRoomDtoToJson(this);
  }
}

abstract class _MeetingRoomDto extends MeetingRoomDto {
  const factory _MeetingRoomDto(
      {required Context context,
      required String room,
      required String roomName,
      required UserDto userCall,
      required UserDto userBeCalled,
      required bool isTutor,
      required int startTime,
      required int endSession,
      required int timeInRoom,
      required String bookingId,
      required int iat,
      required int exp,
      required String aud,
      required String iss,
      required String sub}) = _$_MeetingRoomDto;
  const _MeetingRoomDto._() : super._();

  factory _MeetingRoomDto.fromJson(Map<String, dynamic> json) =
      _$_MeetingRoomDto.fromJson;

  @override
  Context get context;
  @override
  String get room;
  @override
  String get roomName;
  @override
  UserDto get userCall;
  @override
  UserDto get userBeCalled;
  @override
  bool get isTutor;
  @override
  int get startTime;
  @override
  int get endSession;
  @override
  int get timeInRoom;
  @override
  String get bookingId;
  @override
  int get iat;
  @override
  int get exp;
  @override
  String get aud;
  @override
  String get iss;
  @override
  String get sub;
  @override
  @JsonKey(ignore: true)
  _$MeetingRoomDtoCopyWith<_MeetingRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
class _$ContextTearOff {
  const _$ContextTearOff();

  _Context call({required ContextUser user}) {
    return _Context(
      user: user,
    );
  }

  Context fromJson(Map<String, Object?> json) {
    return Context.fromJson(json);
  }
}

/// @nodoc
const $Context = _$ContextTearOff();

/// @nodoc
mixin _$Context {
  ContextUser get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res>;
  $Res call({ContextUser user});

  $ContextUserCopyWith<$Res> get user;
}

/// @nodoc
class _$ContextCopyWithImpl<$Res> implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  final Context _value;
  // ignore: unused_field
  final $Res Function(Context) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ContextUser,
    ));
  }

  @override
  $ContextUserCopyWith<$Res> get user {
    return $ContextUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ContextCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$ContextCopyWith(_Context value, $Res Function(_Context) then) =
      __$ContextCopyWithImpl<$Res>;
  @override
  $Res call({ContextUser user});

  @override
  $ContextUserCopyWith<$Res> get user;
}

/// @nodoc
class __$ContextCopyWithImpl<$Res> extends _$ContextCopyWithImpl<$Res>
    implements _$ContextCopyWith<$Res> {
  __$ContextCopyWithImpl(_Context _value, $Res Function(_Context) _then)
      : super(_value, (v) => _then(v as _Context));

  @override
  _Context get _value => super._value as _Context;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Context(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ContextUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Context implements _Context {
  const _$_Context({required this.user});

  factory _$_Context.fromJson(Map<String, dynamic> json) =>
      _$$_ContextFromJson(json);

  @override
  final ContextUser user;

  @override
  String toString() {
    return 'Context(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Context &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$ContextCopyWith<_Context> get copyWith =>
      __$ContextCopyWithImpl<_Context>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextToJson(this);
  }
}

abstract class _Context implements Context {
  const factory _Context({required ContextUser user}) = _$_Context;

  factory _Context.fromJson(Map<String, dynamic> json) = _$_Context.fromJson;

  @override
  ContextUser get user;
  @override
  @JsonKey(ignore: true)
  _$ContextCopyWith<_Context> get copyWith =>
      throw _privateConstructorUsedError;
}

ContextUser _$ContextUserFromJson(Map<String, dynamic> json) {
  return _ContextUser.fromJson(json);
}

/// @nodoc
class _$ContextUserTearOff {
  const _$ContextUserTearOff();

  _ContextUser call({required String email, required String name}) {
    return _ContextUser(
      email: email,
      name: name,
    );
  }

  ContextUser fromJson(Map<String, Object?> json) {
    return ContextUser.fromJson(json);
  }
}

/// @nodoc
const $ContextUser = _$ContextUserTearOff();

/// @nodoc
mixin _$ContextUser {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextUserCopyWith<ContextUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextUserCopyWith<$Res> {
  factory $ContextUserCopyWith(
          ContextUser value, $Res Function(ContextUser) then) =
      _$ContextUserCopyWithImpl<$Res>;
  $Res call({String email, String name});
}

/// @nodoc
class _$ContextUserCopyWithImpl<$Res> implements $ContextUserCopyWith<$Res> {
  _$ContextUserCopyWithImpl(this._value, this._then);

  final ContextUser _value;
  // ignore: unused_field
  final $Res Function(ContextUser) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContextUserCopyWith<$Res>
    implements $ContextUserCopyWith<$Res> {
  factory _$ContextUserCopyWith(
          _ContextUser value, $Res Function(_ContextUser) then) =
      __$ContextUserCopyWithImpl<$Res>;
  @override
  $Res call({String email, String name});
}

/// @nodoc
class __$ContextUserCopyWithImpl<$Res> extends _$ContextUserCopyWithImpl<$Res>
    implements _$ContextUserCopyWith<$Res> {
  __$ContextUserCopyWithImpl(
      _ContextUser _value, $Res Function(_ContextUser) _then)
      : super(_value, (v) => _then(v as _ContextUser));

  @override
  _ContextUser get _value => super._value as _ContextUser;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_ContextUser(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContextUser implements _ContextUser {
  const _$_ContextUser({required this.email, required this.name});

  factory _$_ContextUser.fromJson(Map<String, dynamic> json) =>
      _$$_ContextUserFromJson(json);

  @override
  final String email;
  @override
  final String name;

  @override
  String toString() {
    return 'ContextUser(email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContextUser &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$ContextUserCopyWith<_ContextUser> get copyWith =>
      __$ContextUserCopyWithImpl<_ContextUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextUserToJson(this);
  }
}

abstract class _ContextUser implements ContextUser {
  const factory _ContextUser({required String email, required String name}) =
      _$_ContextUser;

  factory _ContextUser.fromJson(Map<String, dynamic> json) =
      _$_ContextUser.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ContextUserCopyWith<_ContextUser> get copyWith =>
      throw _privateConstructorUsedError;
}

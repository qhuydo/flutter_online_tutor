// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeetingRoomDto _$$_MeetingRoomDtoFromJson(Map<String, dynamic> json) =>
    _$_MeetingRoomDto(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      room: json['room'] as String,
      roomName: json['roomName'] as String,
      userCall: UserDto.fromJson(json['userCall'] as Map<String, dynamic>),
      userBeCalled:
          UserDto.fromJson(json['userBeCalled'] as Map<String, dynamic>),
      isTutor: json['isTutor'] as bool,
      startTime: json['startTime'] as int,
      endSession: json['endSession'] as int,
      timeInRoom: json['timeInRoom'] as int,
      bookingId: json['bookingId'] as String,
      iat: json['iat'] as int,
      exp: json['exp'] as int,
      aud: json['aud'] as String,
      iss: json['iss'] as String,
      sub: json['sub'] as String,
    );

Map<String, dynamic> _$$_MeetingRoomDtoToJson(_$_MeetingRoomDto instance) =>
    <String, dynamic>{
      'context': instance.context,
      'room': instance.room,
      'roomName': instance.roomName,
      'userCall': instance.userCall,
      'userBeCalled': instance.userBeCalled,
      'isTutor': instance.isTutor,
      'startTime': instance.startTime,
      'endSession': instance.endSession,
      'timeInRoom': instance.timeInRoom,
      'bookingId': instance.bookingId,
      'iat': instance.iat,
      'exp': instance.exp,
      'aud': instance.aud,
      'iss': instance.iss,
      'sub': instance.sub,
    };

_$_Context _$$_ContextFromJson(Map<String, dynamic> json) => _$_Context(
      user: ContextUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContextToJson(_$_Context instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$_ContextUser _$$_ContextUserFromJson(Map<String, dynamic> json) =>
    _$_ContextUser(
      email: json['email'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ContextUserToJson(_$_ContextUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
    };

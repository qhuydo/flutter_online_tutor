import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/schedule/models/meeting_room.dart';
import '../../../../user/dto/user_dto.dart';

part 'meeting_room_dto.freezed.dart';

part 'meeting_room_dto.g.dart';

@freezed
class MeetingRoomDto with _$MeetingRoomDto {
  const MeetingRoomDto._();

  const factory MeetingRoomDto({
    required Context context,
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
    required String sub,
  }) = _MeetingRoomDto;

  factory MeetingRoomDto.fromJson(Map<String, dynamic> json) =>
      _$MeetingRoomDtoFromJson(json);

  MeetingRoom toDomain(String token) => MeetingRoom(
    room: room,
    roomName: roomName,
    token: token,
    user: userCall.toDomain(),
  );
}

@freezed
class Context with _$Context {
  const factory Context({
    required ContextUser user,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}

@freezed
class ContextUser with _$ContextUser {
  const factory ContextUser({
    required String email,
    required String name,
  }) = _ContextUser;

  factory ContextUser.fromJson(Map<String, dynamic> json) =>
      _$ContextUserFromJson(json);
}

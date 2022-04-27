import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/models/user.dart';

part 'meeting_room.freezed.dart';

@freezed
class MeetingRoom with _$MeetingRoom {
  const factory MeetingRoom({
    required String room,
    required String roomName,
    required String token,
    required User user,
  }) = _MeetingRoom;

}

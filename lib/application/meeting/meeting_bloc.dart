import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jitsi_meet/jitsi_meet.dart';

import '../../di/dependency_injection.dart';
import '../../domain/schedule/models/appointment.dart';
import '../../infrastructure/common/network/server_url.dart';
import '../common/platform/platform_delegate.dart';

part 'meeting_bloc.freezed.dart';

part 'meeting_event.dart';

part 'meeting_state.dart';

@injectable
class MeetingBloc extends Bloc<MeetingEvent, MeetingState> {
  MeetingBloc() : super(const MeetingState()) {
    on<MeetingEvent>((event, emit) async {
      await event.when(
        initialise: (value) => _onInitialised(emit, value),
        join: () => _onMeetingJoined(emit),
      );
    });

    JitsiMeet.addListener(
      JitsiMeetingListener(
        onConferenceWillJoin: _onConferenceWillJoin,
        onConferenceJoined: _onConferenceJoined,
        onConferenceTerminated: _onConferenceTerminated,
        onError: _onError,
      ),
    );
  }

  Future _onInitialised(Emitter<MeetingState> emit, Appointment? value) async {
    emit(state.copyWith(appointment: value));
  }

  Future _onMeetingJoined(Emitter<MeetingState> emit) async {
    if (state.appointment == null) return;

    Map<FeatureFlagEnum, bool> featureFlags = {
      FeatureFlagEnum.WELCOME_PAGE_ENABLED: true,
    };

    final target = Target();
    if (!target.isWeb) {
      if (target.isAndroid) {
        featureFlags[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = false;
      }
      if (target.isIOS) {
        featureFlags
          ..[FeatureFlagEnum.PIP_ENABLED] = false
          ..[FeatureFlagEnum.IOS_RECORDING_ENABLED] = false;
      }
    }

    featureFlags
      ..[FeatureFlagEnum.LIVE_STREAMING_ENABLED] = false
      ..[FeatureFlagEnum.ADD_PEOPLE_ENABLED] = false
      ..[FeatureFlagEnum.MEETING_PASSWORD_ENABLED] = false
      ..[FeatureFlagEnum.CALENDAR_ENABLED] = false
      ..[FeatureFlagEnum.INVITE_ENABLED] = false;

    final meetingRoom = state.appointment!.meetingRoom;
    final options = JitsiMeetingOptions(room: meetingRoom.room)
      ..serverURL = getIt<ServerUrl>().jitsiUrl
      ..token = meetingRoom.token
      ..subject = meetingRoom.roomName
      ..userDisplayName = meetingRoom.user.name.valueOrNull()
      ..userEmail = meetingRoom.user.emailAddress.valueOrNull()
      ..userAvatarURL = meetingRoom.user.avatar
      ..audioOnly = false
      ..audioMuted = true
      ..videoMuted = true
      ..featureFlags.addAll(featureFlags)
      ..webOptions = {
        'roomName': meetingRoom.roomName,
        'height': '100%',
        'width': '100%',
        'enableWelcomePage': true,
        'chromeExtensionBanner': null,
        'userInfo': {
          'displayName': meetingRoom.user.name.valueOrNull(),
        }
      };

    await JitsiMeet.joinMeeting(
      options,
      listener: JitsiMeetingListener(
        onConferenceWillJoin: (message) {
          log('${options.room} will join: $message');
        },
        onConferenceJoined: (message) {
          log('${options.room} joined: $message');
        },
        onConferenceTerminated: (message) {
          log('${options.room} terminated: $message');
        },
        onPictureInPictureWillEnter: (message) {
          log('${options.room} entered PIP mode: $message');
        },
        onPictureInPictureTerminated: (message) {
          log('${options.room} exited PIP mode: $message');
        },
      ),
    );
  }

  void _onConferenceWillJoin(message) {
    log('_onConferenceWillJoin: $message');
  }

  void _onConferenceJoined(message) {
    log('_onConferenceJoined: $message');
  }

  void _onConferenceTerminated(message) {
    log('_onConferenceTerminated: $message');
  }

  void _onError(error) {
    log('_onError: $error');
  }

  @override
  Future<void> close() async {
    JitsiMeet.removeAllListeners();
    super.close();
  }
}

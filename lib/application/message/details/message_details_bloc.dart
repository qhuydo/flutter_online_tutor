import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/message/interfaces/i_message_service.dart';
import '../../../domain/message/models/message_bubble.dart';
import '../../../domain/message/models/partner_info.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';

part 'message_details_bloc.freezed.dart';

part 'message_details_event.dart';

part 'message_details_state.dart';

class MessageDetailsBloc
    extends Bloc<MessageDetailsEvent, MessageDetailsState> {
  final MessageService _messageService;
  final UserRepository _userRepository;

  MessageDetailsBloc(
    this._messageService,
    this._userRepository, {
    String? partnerId,
    String? partnerThumbnail,
    String? partnerName,
  }) : super(MessageDetailsState(
          partnerId: partnerId,
          partnerThumbnail: partnerThumbnail,
          partnerName: partnerName,
        )) {
    on<MessageDetailsEvent>((event, emit) async {
      await event.when(
        initialise: () => _onInitialise(emit),
        textChanged: (value) => _onTextChanged(value, emit),
        textSubmitted: () => _onTextSubmitted(emit),
        partnerChanged: (value) => _onPartnerChanged(value, emit),
      );
    });
  }

  Future _onInitialise(Emitter<MessageDetailsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final user = await _userRepository.getSignedInUser();
    final userId = user.fold(() => null, (a) => a.id.valueOrNull());
    // log('state.userId ${userId ?? ''}');
    if (userId != null) {
      emit(state.copyWith(userId: userId));
    }

    if (userId != null && state.partnerId != null) {
      _messageService.getMessage(userId, state.partnerId!);
    } else {
      emit(state.copyWith(isLoading: false));
    }

    await emit.forEach<List<MessageBubble>>(
      _messageService.subscribeMessages(),
      onData: (data) {
        return state.copyWith(
          messageList: data,
          isLoading: false,
        );
      },
    );
  }

  Future _onTextChanged(
    String value,
    Emitter<MessageDetailsState> emit,
  ) async {
    emit(state.copyWith(text: value));
  }

  Future _onTextSubmitted(Emitter<MessageDetailsState> emit) async {
    if (state.text.isEmpty || state.userId == null || state.partnerId == null) {
      return;
    }

    _messageService.sendMessage(
      fromId: state.userId!,
      toId: state.partnerId!,
      content: state.text,
    );

    emit(state.copyWith(text: ''));
  }

  Future _onPartnerChanged(
    PartnerInfo? value,
    Emitter<MessageDetailsState> emit,
  ) async {
    if (value == null) return;

    emit(state.copyWith(
      partnerId: value.id,
      partnerName: value.name,
      partnerThumbnail: value.avatar,
      isLoading: true,
    ));
    // log('state.userId: ${state.userId}');
    if (state.userId != null) {
      _messageService.getMessage(state.userId!, value.id);
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}

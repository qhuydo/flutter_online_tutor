import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/message/interfaces/i_message_service.dart';
import '../../../domain/message/models/message_list_item.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';

part 'message_list_bloc.freezed.dart';

part 'message_list_event.dart';

part 'message_list_state.dart';

@injectable
class MessageListBloc extends Bloc<MessageListEvent, MessageListState> {
  final MessageService _messageService;
  final UserRepository _userRepository;

  MessageListBloc(
    this._messageService,
    this._userRepository,
  ) : super(const MessageListState()) {
    on<MessageListEvent>((event, emit) async {
      await event.when(
        initialise: () => _onInitialised(emit),
        messageRead: (value) => _onMessageRead(value, emit),
        itemSelected: (value) => _onItemSelected(value, emit),
      );
    });
  }

  Future _onInitialised(Emitter<MessageListState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userJson = await _userRepository.getSignedInUserRaw();
    // log(userJson.toString());
    await _messageService.connect(userJson);

    // await Future.delayed(const Duration(seconds: 1));
    _messageService.getRecentList();

    await emit.forEach<List<MessageListItem>>(
      _messageService.subscribeMessageList(),
      onData: (data) {
        if (data.isNotEmpty && state.selectedItem == null) {
          add(MessageListEvent.itemSelected(data.first));
        }
        return state.copyWith(isLoading: false, messageList: data);
      },
    );
  }

  Future _onMessageRead(
    MessageListItem value,
    Emitter<MessageListState> emit,
  ) async {
    if (!value.hasRead) {
      _messageService.readMessage(value);
    }
  }

  Future _onItemSelected(
    MessageListItem value,
    Emitter<MessageListState> emit,
  ) async {
    emit(state.copyWith(selectedItem: value));
  }
}

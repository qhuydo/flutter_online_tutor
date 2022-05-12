part of 'message_list_bloc.dart';

@freezed
class MessageListEvent with _$MessageListEvent {
  const factory MessageListEvent.initialise() = _Initialise;

  const factory MessageListEvent.messageRead(MessageListItem item) =
      _MessageRead;

  const factory MessageListEvent.itemSelected(MessageListItem item) =
      _ItemSelected;

  const factory MessageListEvent.refreshed() = _Refreshed;
}

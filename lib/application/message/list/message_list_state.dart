part of 'message_list_bloc.dart';

@freezed
class MessageListState with _$MessageListState {
  const MessageListState._();

  const factory MessageListState({
    String? userJson,
    MessageListItem? selectedItem,
    @Default(false) bool isLoading,
    @Default([]) List<MessageListItem> messageList,
  }) = _MessageState;
}

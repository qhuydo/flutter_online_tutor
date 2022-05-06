part of 'message_details_bloc.dart';

@freezed
class MessageDetailsState with _$MessageDetailsState {
  const MessageDetailsState._();

  const factory MessageDetailsState({
    String? userId,
    required String partnerId,
    @Default(false) bool isLoading,
    @Default([]) List<MessageBubble> messageList,
    @Default('') String text,
    String? partnerThumbnail,
    String? partnerName,
  }) = _MessageDetailsState;
}

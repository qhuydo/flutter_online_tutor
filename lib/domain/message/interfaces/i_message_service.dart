import '../models/message_bubble.dart';
import '../models/message_list_item.dart';

abstract class MessageService {
  Future dispose();

  Stream<List<MessageListItem>> subscribeMessageList();

  Stream<List<MessageBubble>> subscribeMessages();

  void connect(String? userJson);

  void disconnect();

  void getRecentList();

  void getMessage(String fromId, String toId);

  void sendMessage({
    required String fromId,
    required String toId,
    required String content,
  });

  void readMessage(MessageListItem messageListItem);
}

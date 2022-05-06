import '../models/message_list_item.dart';

abstract class MessageService {

  Future dispose();

  Stream<List<MessageListItem>> subscribeMessageList();

  Future connect(String? userJson);

  void disconnect();

  void getRecentList();
}
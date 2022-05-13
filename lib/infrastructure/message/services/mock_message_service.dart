import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../domain/message/interfaces/i_message_service.dart';
import '../../../domain/message/models/message_bubble.dart';
import '../../../domain/message/models/message_list_item.dart';

@LazySingleton(
  as: MessageService,
  env: ['mock'],
)
class MockMessageService implements MessageService {
  final _recentListStreamController =
      StreamController<List<MessageListItem>>.broadcast();

  final _messageStreamController =
      StreamController<List<MessageBubble>>.broadcast();

  @override
  void connect(String? userJson) {}

  @override
  void disconnect() {}

  @override
  @disposeMethod
  Future dispose() async {
    await _messageStreamController.close();
    await _recentListStreamController.close();
  }

  @override
  void getMessage(String fromId, String toId) {}

  @override
  void getRecentList() {}

  @override
  void readMessage(MessageListItem messageListItem) {}

  @override
  void sendMessage({
    required String fromId,
    required String toId,
    required String content,
  }) {}

  @override
  Stream<List<MessageListItem>> subscribeMessageList() {
    return _recentListStreamController.stream;
  }

  @override
  Stream<List<MessageBubble>> subscribeMessages() {
    return _messageStreamController.stream;
  }
}

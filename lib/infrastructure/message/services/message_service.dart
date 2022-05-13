import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as socket;

import '../../../domain/message/interfaces/i_message_service.dart';
import '../../../domain/message/models/message_bubble.dart';
import '../../../domain/message/models/message_list_item.dart';
import '../../common/network/server_url.dart';
import '../dto/details/messages_dto.dart';
import '../dto/list/message_list_dto.dart';
import '../dto/list/message_list_item_dto.dart';

@Singleton(
  as: MessageService,
  env: [Environment.dev, Environment.prod, Environment.test],
)
class MessageServiceImpl implements MessageService {
  late final socket.Socket _socket;
  final _recentListStreamController =
      StreamController<List<MessageListItem>>.broadcast();

  final _messageStreamController =
      StreamController<List<MessageBubble>>.broadcast();

  MessageServiceImpl(ServerUrl _url) {
    final optionBuilder = socket.OptionBuilder()
      ..setTransports(['websocket'])
      ..enableForceNew()
      ..disableAutoConnect();

    _socket = socket.io(
      _url.socketUrl,
      optionBuilder.build(),
    );
    _socket.connect();

    _socket.onConnect((_) {
      log('connect');
    });

    _socket.onConnectError((data) {
      log(data?.toString() ?? '');
    });
    _socket.onError((data) {
      log(data?.toString() ?? '');
    });

    // When an event received from server, data is added to the stream
    // _socket.onAny((event, data) {
    //   log('event: $event - data: ${data?.toString() ?? ''}');
    // });

    _socket.on('onlineTutors:returnList', (_) => getRecentList());
    _socket.on('chat:joinOrLeave', (_) => getRecentList());

    _socket.on('chat:returnRecentList', (data) => onRecentListReceived(data));

    _socket.on('chat:returnMessages', (data) => onMessagesReceived(data));

    _socket.onDisconnect((_) => log('disconnect'));
  }

  @override
  void connect(String? userJson) {
    disconnect();

    if (userJson == null) {
      return;
    }

    log('connection:login');
    _socket.emit('connection:login', jsonDecode(userJson));
    getRecentList();
  }

  @override
  void getRecentList() {
    log('chat:getRecentList');
    _socket.emit('chat:getRecentList');
  }

  @override
  void disconnect() {
    log('disconnection:logout');
    _socket.emit('disconnection:logout');
  }

  @override
  @disposeMethod
  Future dispose() async {
    await _messageStreamController.close();
    await _recentListStreamController.close();
    _socket.dispose();
  }

  @override
  Stream<List<MessageListItem>> subscribeMessageList() {
    return _recentListStreamController.stream;
  }

  @override
  Stream<List<MessageBubble>> subscribeMessages() {
    return _messageStreamController.stream;
  }

  @override
  void getMessage(String fromId, String toId) {
    _socket.emit('chat:getMessages', {
      'fromId': fromId,
      'toId': toId,
    });
  }

  @override
  void sendMessage({
    required String fromId,
    required String toId,
    required String content,
  }) {
    _socket.emit('chat:sendMessage', {
      'fromId': fromId,
      'toId': toId,
      'content': content,
    });
  }

  void onRecentListReceived(dynamic data) {
    try {
      log('message list received');
      // log(data.toString());
      final dto = MessageListDto.fromJson(data as Map<String, dynamic>);
      final list = dto.recentList.map((e) => e.toDomain()).toList(
            growable: false,
          );

      _recentListStreamController.sink.add(list);
    } on TypeError catch (e) {
      log(e.toString(), error: e);
    }
  }

  void onMessagesReceived(dynamic data) {
    try {
      log('messages received');
      final dto = MessagesDto.fromJson(data as Map<String, dynamic>);
      final list = dto.messages.reversed.map((e) => e.toDomain()).toList(
            growable: false,
          );

      _messageStreamController.sink.add(list);
    } on TypeError catch (e) {
      log(e.toString(), error: e);
    }
  }

  @override
  void readMessage(MessageListItem messageListItem) {
    _socket.emit('chat:readMessage', {
      'conversation': MessageListItemDto.fromDomain(messageListItem).toJson()
    });
  }
}

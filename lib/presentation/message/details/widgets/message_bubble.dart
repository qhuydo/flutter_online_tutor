import 'package:flutter/material.dart';

import '../../../../domain/message/models/message_bubble.dart' as domain;
import '../../../common.dart';
import 'message_bubble_content.dart';
import 'partner_message_bubble_content.dart';

class MessageBubble extends StatelessWidget {
  final Widget child;
  final String userId;
  final domain.MessageBubble message;
  final String? partnerAvatar;
  final domain.MessageBubble? previousMessage;

  const MessageBubble({
    Key? key,
    required this.userId,
    required this.message,
    required this.child,
    this.partnerAvatar,
    this.previousMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMine = message.isMine(userId);
    final isMinePreviousMessage = previousMessage?.isMine(userId) == true;
    final isTheirs = !isMine;
    final showPartnerAvatar =
        previousMessage == null || (isMinePreviousMessage && isTheirs);

    return isMine
        ? MessageBubbleContent(child: child, dateCreated: message.createdAt)
        : PartnerMessageBubbleContent(
            partnerAvatar: partnerAvatar,
            showAvatar: showPartnerAvatar,
            child: child,
            dateCreated: message.createdAt,
          );
  }
}

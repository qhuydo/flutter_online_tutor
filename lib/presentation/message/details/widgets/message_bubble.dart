import 'package:flutter/material.dart';

import '../../../../domain/message/models/message_bubble.dart' as domain;
import '../../../common.dart';
import 'message_bubble_content.dart';
import 'partner_message_bubble_content.dart';

class MessageBubble extends StatelessWidget {
  final String content;
  final String userId;
  final domain.MessageBubble message;
  final String? partnerAvatar;
  final domain.MessageBubble? previousMessage;

  const MessageBubble({
    Key? key,
    required this.userId,
    required this.message,
    required this.content,
    this.partnerAvatar,
    this.previousMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMine = message.isMine(userId);
    final isMinePreviousMessage = previousMessage?.isMine(userId) == true;
    final isTheirsPreviousMessage = !isMinePreviousMessage;
    final isTheirs = !isMine;
    final showPartnerAvatar =
        previousMessage == null || (isMinePreviousMessage && isTheirs);
    final addExtraPaddingBetweenConversations =
        previousMessage == null || (isTheirsPreviousMessage && isMine);

    return isMine
        ? MessageBubbleContent(
            content: content,
            dateCreated: message.createdAt,
            contentPadding: addExtraPaddingBetweenConversations
                ? const EdgeInsets.fromLTRB(20, itemSpacing, 20, 4)
                : const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 20,
                  ),
          )
        : PartnerMessageBubbleContent(
            partnerAvatar: partnerAvatar,
            showAvatar: showPartnerAvatar,
            content: content,
            dateCreated: message.createdAt,
          );
  }
}

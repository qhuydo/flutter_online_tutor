import 'package:flutter/material.dart';

import '../../../common.dart';
import '../helpers/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;
  final Widget child;

  const MessageBubble({
    Key? key,
    required this.message,
    required this.child,
  }) : super(key: key);

  Widget buildChatBubbleWithAvatar(
    BuildContext context, {
    required Alignment alignment,
    required Color bubbleColour,
  }) {
    return Wrap(
      // mainAxisSize: MainAxisSize.min,
      direction: Axis.horizontal,
      // crossAxisAlignment: WrapCrossAlignment.start,
      // spacing: smallItemSpacing,
      children: [
        // const CircleAvatar(),
        buildChatBubble(
          context,
          alignment: alignment,
          bubbleColour: bubbleColour,
        ),
      ],
    );
  }

  Widget buildChatBubbleNoAvatar(
    BuildContext context, {
    required Alignment alignment,
    required Color bubbleColour,
  }) {
    return buildChatBubble(
      context,
      alignment: alignment,
      bubbleColour: bubbleColour,
    );
  }

  Widget buildChatBubble(
    BuildContext context, {
    required Alignment alignment,
    required Color bubbleColour,
  }) {
    final brightness = ThemeData.estimateBrightnessForColor(bubbleColour);
    final textColour =
        brightness == Brightness.light ? Colors.black87 : Colors.white;
    return FractionallySizedBox(
      alignment: alignment,
      widthFactor: 3 / 4,
      child: Align(
        alignment: alignment,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Container(
              color: bubbleColour,
              child: DefaultTextStyle.merge(
                style: TextStyle(
                  color: textColour,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final messageAlignment =
        message.isMine ? Alignment.topRight : Alignment.topLeft;

    final bubbleColour = message.isMine ? Colors.blue : Colors.grey[100]!;

    return message.isMine
        ? buildChatBubbleNoAvatar(
            context,
            alignment: messageAlignment,
            bubbleColour: bubbleColour,
          )
        : buildChatBubbleWithAvatar(
            context,
            alignment: messageAlignment,
            bubbleColour: bubbleColour,
          );
  }
}

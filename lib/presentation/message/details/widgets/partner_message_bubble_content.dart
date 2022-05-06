import 'package:flutter/material.dart';

import 'message_bubble_content.dart';

class PartnerMessageBubbleContent extends StatelessWidget {
  final Alignment alignment;
  final bool showAvatar;
  final String? partnerAvatar;
  final Widget child;
  final DateTime dateCreated;

  const PartnerMessageBubbleContent({
    Key? key,
    required this.child,
    required this.dateCreated,
    this.alignment = Alignment.topLeft,
    this.showAvatar = false,
    this.partnerAvatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    final colour =
        brightness == Brightness.light ? Colors.grey[100] : Colors.black12;
    final selectedColour =
        brightness == Brightness.light ? Colors.grey[300] : Colors.black45;

    return Wrap(
      // mainAxisSize: MainAxisSize.min,
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 0,
      children: [
        if (showAvatar) ...[
          const SizedBox(width: 4),
          CircleAvatar(
            backgroundImage: NetworkImage(partnerAvatar ?? ''),
            onBackgroundImageError: (exception, stackTrace) {},
          ),
        ] else
          const SizedBox(width: 44),
        MessageBubbleContent(
          alignment: alignment,
          bubbleColour: colour,
          selectedColour: selectedColour,
          contentPadding: const EdgeInsetsDirectional.only(
            top: 0,
            bottom: 4,
            start: 8,
            end: 20,
          ),
          child: child,
          dateCreated: dateCreated,
        ),
      ],
    );
  }
}
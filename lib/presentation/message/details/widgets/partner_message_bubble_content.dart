import 'package:flutter/material.dart';

import '../../../common/utils/constants.dart';
import 'message_bubble_content.dart';

class PartnerMessageBubbleContent extends StatelessWidget {
  final Alignment alignment;
  final bool showAvatar;
  final String? partnerAvatar;
  final String content;
  final DateTime dateCreated;

  const PartnerMessageBubbleContent({
    Key? key,
    required this.content,
    required this.dateCreated,
    this.alignment = Alignment.topLeft,
    this.showAvatar = false,
    this.partnerAvatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    final selectedColour =
        brightness == Brightness.light ? Colors.grey[600] : Colors.black45;
    final colours = brightness == Brightness.light
        ? [Colors.grey[100]!, Colors.grey[300]!]
        : [const Color(0xFF6C7689), const Color(0xFF3A364B)];

    return Padding(
      padding: showAvatar
          ? const EdgeInsets.only(top: itemSpacing)
          : EdgeInsets.zero,
      child: Wrap(
        // mainAxisSize: MainAxisSize.min,
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 0,
        children: [
          const SizedBox(width: itemSpacing),
          if (showAvatar)
            CircleAvatar(
              backgroundImage: NetworkImage(partnerAvatar ?? ''),
              onBackgroundImageError: (exception, stackTrace) {},
            )
          else
            const CircleAvatar(backgroundColor: Colors.transparent),
          MessageBubbleContent(
            alignment: alignment,
            bubbleColours: colours,
            selectedColour: selectedColour,
            contentPadding: const EdgeInsetsDirectional.only(
              top: 0,
              bottom: 4,
              start: 8,
              end: 20,
            ),
            content: content,
            dateCreated: dateCreated,
          ),
        ],
      ),
    );
  }
}

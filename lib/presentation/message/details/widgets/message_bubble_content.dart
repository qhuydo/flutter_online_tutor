import 'package:flutter/material.dart';

import '../../../common/l10n/message_time_display_text.dart';

class MessageBubbleContent extends StatefulWidget {
  final Alignment alignment;
  final EdgeInsetsGeometry contentPadding;
  final Widget child;
  final Color? bubbleColour;
  final Color? selectedColour;
  final DateTime dateCreated;

  const MessageBubbleContent({
    Key? key,
    required this.child,
    required this.dateCreated,
    this.alignment = Alignment.topRight,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 4,
      horizontal: 20,
    ),
    this.bubbleColour,
    this.selectedColour,
  }) : super(key: key);

  @override
  State<MessageBubbleContent> createState() => _MessageBubbleContentState();
}

class _MessageBubbleContentState extends State<MessageBubbleContent> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final colour = widget.bubbleColour ?? Theme.of(context).primaryColor;
    final selectedColour =
        widget.selectedColour ?? Theme.of(context).primaryColorDark;

    final brightness = ThemeData.estimateBrightnessForColor(
      isSelected ? colour : selectedColour,
    );
    final textColour =
        brightness == Brightness.light ? Colors.black87 : Colors.white;

    return FractionallySizedBox(
      alignment: widget.alignment,
      widthFactor: 3 / 4,
      child: Padding(
        padding: widget.contentPadding,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: widget.alignment,
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      color: isSelected ? selectedColour : colour,
                    ),
                    duration: const Duration(milliseconds: 300),
                    child: DefaultTextStyle.merge(
                      style: TextStyle(color: textColour),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: widget.child,
                      ),
                    ),
                  ),
                ),
              ),
              if (isSelected)
                Align(
                  alignment: widget.alignment,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      widget.dateCreated.toMessageBubbleTimeDisplayText(context),
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

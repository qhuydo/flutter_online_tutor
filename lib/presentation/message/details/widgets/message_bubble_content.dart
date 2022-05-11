import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/l10n/message_time_display_text.dart';
import '../../../common/utils/flushbar_utils.dart';
import 'bubble_background.dart';

class MessageBubbleContent extends StatefulWidget {
  final Alignment alignment;
  final EdgeInsetsGeometry contentPadding;
  final String content;
  final List<Color>? bubbleColours;
  final Color? selectedColour;
  final DateTime dateCreated;

  const MessageBubbleContent({
    Key? key,
    required this.content,
    required this.dateCreated,
    this.alignment = Alignment.topRight,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 4,
      horizontal: 20,
    ),
    this.bubbleColours,
    this.selectedColour,
  }) : super(key: key);

  @override
  State<MessageBubbleContent> createState() => _MessageBubbleContentState();
}

class _MessageBubbleContentState extends State<MessageBubbleContent> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    final colours =
        widget.bubbleColours == null || widget.bubbleColours?.isEmpty == true
            ? [colourScheme.primary, colourScheme.secondary]
            : widget.bubbleColours!;

    final selectedColour =
        widget.selectedColour ?? Theme.of(context).primaryColorDark;

    final brightness = ThemeData.estimateBrightnessForColor(
      isSelected ? selectedColour : colours.first,
    );
    final textColour =
        brightness == Brightness.light ? Colors.black87 : Colors.white;

    return FractionallySizedBox(
      alignment: widget.alignment,
      widthFactor: 3 / 4,
      child: Padding(
        padding: widget.contentPadding,
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
                onLongPress: () async {
                  await Clipboard.setData(ClipboardData(text: widget.content));

                  FlushBarUtils.createInformation(message: 'Text copied')
                      .show(context);
                },
                child: Tooltip(
                  message: widget.dateCreated
                      .toMessageBubbleTimeDisplayText(context),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: BubbleBackground(
                      colours: colours,
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                          color:
                              isSelected ? selectedColour : Colors.transparent,
                        ),
                        duration: const Duration(milliseconds: 300),
                        child: DefaultTextStyle.merge(
                          style: TextStyle(color: textColour),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SelectableText(
                              widget.content,
                              onTap: () {
                                setState(() {
                                  isSelected = !isSelected;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              height: isSelected ? 28 : 0,
              duration: const Duration(milliseconds: 300),
              child: isSelected
                  ? Align(
                      alignment: widget.alignment,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          widget.dateCreated
                              .toMessageBubbleTimeDisplayText(context),
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/common/platform/platform_delegate.dart';
import '../../../../application/message/details/message_details_bloc.dart';
import '../../../common.dart';

class MessageInputRow extends StatefulWidget {
  const MessageInputRow({Key? key}) : super(key: key);

  @override
  State<MessageInputRow> createState() => _MessageInputRowState();
}

class _MessageInputRowState extends State<MessageInputRow> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final target = Target();
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        padding: const EdgeInsets.all(smallItemSpacing),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: target.isDesktop
                      ? context.l10n.writeMessageInputTextDesktop
                      : context.l10n.writeMessageInputText,
                  border: InputBorder.none,
                ),
                minLines: 1,
                maxLines: 10,
                textInputAction:
                    target.isDesktop ? null : TextInputAction.newline,
                controller: _controller,
                onChanged: (value) {
                  context.read<MessageDetailsBloc>().add(
                        MessageDetailsEvent.textChanged(value),
                      );
                },
                focusNode: FocusNode(
                  onKey: (FocusNode node, RawKeyEvent evt) {
                    if (!evt.isShiftPressed &&
                        evt.logicalKey.keyLabel == 'Enter') {
                      if (evt is RawKeyDownEvent) {
                        final text = _controller.text.trimRight();
                        if (text.isEmpty) return KeyEventResult.handled;
                        _controller.clear();
                        context.read<MessageDetailsBloc>()
                          ..add(MessageDetailsEvent.textChanged(text))
                          ..add(const MessageDetailsEvent.textSubmitted());
                      }
                      return KeyEventResult.handled;
                    } else {
                      return KeyEventResult.ignored;
                    }
                  },
                ),
              ),
            ),
            const SizedBox(width: smallItemSpacing),
            FloatingActionButton(
              onPressed: () {
                _controller.clear();
                context.read<MessageDetailsBloc>().add(
                      const MessageDetailsEvent.textSubmitted(),
                    );
              },
              child: Icon(
                Icons.send,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0,
            ),
          ],
        ),
      ),
    );
  }
}

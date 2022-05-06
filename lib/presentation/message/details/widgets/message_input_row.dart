import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/message/details/message_details_bloc.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';

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
                  hintText: context.l10n.writeMessageInputText,
                  border: InputBorder.none,
                ),
                minLines: 1,
                maxLines: 10,
                textInputAction: TextInputAction.send,
                controller: _controller,
                onChanged: (value) {
                  context.read<MessageDetailsBloc>().add(
                        MessageDetailsEvent.textChanged(value),
                      );
                },
                onSubmitted: (value) {
                  _controller.clear();
                  context.read<MessageDetailsBloc>()
                    ..add(
                      MessageDetailsEvent.textChanged(value.trimRight()),
                    )
                    ..add(
                      const MessageDetailsEvent.textSubmitted(),
                    );
                },
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

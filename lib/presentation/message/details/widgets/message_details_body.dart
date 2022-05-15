import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/message/details/message_details_bloc.dart';
import '../../../common/widgets/loading_widget.dart';
import 'message_bubble.dart';
import 'message_input_row.dart';

class MessageDetailsBody extends StatefulWidget {
  final String? partnerThumbnail;

  const MessageDetailsBody({
    Key? key,
    this.partnerThumbnail,
  }) : super(key: key);

  @override
  State<MessageDetailsBody> createState() => _MessageDetailsBodyState();
}

class _MessageDetailsBodyState extends State<MessageDetailsBody> {
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageDetailsBloc, MessageDetailsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWidget();
        }
        if (state.partnerId == null || state.userId == null) {
          return const SizedBox();
        }
        final data = state.messageList;

        return Stack(
          children: [
            Scrollbar(
              controller: scrollController,
              interactive: true,
              child: ListView.builder(
                controller: scrollController,
                reverse: true,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 16.0, bottom: 128),
                itemBuilder: (context, index) {
                  final message = data[index];
                  return MessageBubble(
                    userId: state.userId!,
                    message: message,
                    content: message.content,
                    partnerAvatar: widget.partnerThumbnail,
                    // the list is reversed
                    previousMessage:
                        index < data.length - 1 ? data[index + 1] : null,
                  );
                },
                itemCount: data.length,
              ),
            ),
            const MessageInputRow(),
          ],
        );
      },
    );
  }
}

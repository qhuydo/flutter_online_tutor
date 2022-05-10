import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/message/details/message_details_bloc.dart';
import '../../../../application/message/list/message_list_bloc.dart';
import '../../../../common.dart';
import '../../../../domain/message/interfaces/i_message_service.dart';
import '../../../../domain/user/interfaces/i_user_repository.dart';
import '../../details/widgets/message_details_body.dart';
import 'message_row.dart';

class MessageBodyDesktop extends StatelessWidget {
  const MessageBodyDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MessageDetailsBloc>(
      create: (_) => MessageDetailsBloc(
        getIt<MessageService>(),
        getIt<UserRepository>(),
      )
        ..add(const MessageDetailsEvent.initialise())
        ..add(MessageDetailsEvent.partnerChanged(
          context.read<MessageListBloc>().state.selectedItem?.partner,
        )),
      child: const _MessageBodyDesktop(),
    );
  }
}

class _MessageBodyDesktop extends StatelessWidget {
  const _MessageBodyDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMediumSize =
        Breakpoint.fromMediaQuery(context).window <= WindowSize.medium;

    return BlocConsumer<MessageListBloc, MessageListState>(
      listenWhen: (previous, current) =>
          previous.selectedItem?.id != current.selectedItem?.id,
      listener: (_, state) {
        if (state.selectedItem?.partner != null) {
          context
              .read<MessageDetailsBloc>()
              .add(MessageDetailsEvent.partnerChanged(
                state.selectedItem!.partner,
              ));
        }
      },
      builder: (_, state) {
        if (state.isLoading || state.messageList.isEmpty) {
          return const SizedBox();
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: isMediumSize ? 4 : 1,
              child: SingleChildScrollView(
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = state.messageList[index];
                    return MessageRow(
                      item: item,
                      isSelected: state.selectedItem?.id == item.id,
                      onTapped: () {
                        context.read<MessageListBloc>()
                          ..add(MessageListEvent.messageRead(item))
                          ..add(MessageListEvent.itemSelected(item));
                      },
                    );
                  },
                  itemCount: state.messageList.length,
                ),
              ),
            ),
            const VerticalDivider(),
            Expanded(
              flex: isMediumSize ? 5 : 2,
              child: SafeArea(
                child: MessageDetailsBody(
                  partnerThumbnail: state.selectedItem?.partner.avatar,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

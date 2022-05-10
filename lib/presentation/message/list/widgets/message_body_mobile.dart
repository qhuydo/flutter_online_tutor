import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/message/list/message_list_bloc.dart';
import '../../../common/routes/app_routes.gr.dart';
import 'message_row.dart';

class MessageBodyMobile extends StatelessWidget {
  const MessageBodyMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageListBloc, MessageListState>(
      builder: (context, state) {
        if (state.isLoading || state.messageList.isEmpty) {
          return const SizedBox();
        }

        return SingleChildScrollView(
          child: SafeArea(
            left: false,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = state.messageList[index];
                return MessageRow(
                  item: item,
                  onTapped: () {
                    context.read<MessageListBloc>()
                      ..add(MessageListEvent.messageRead(item))
                      ..add(MessageListEvent.itemSelected(item));

                    context.router.push(MessageDetailsRoute(
                      tutorId: item.partner.id,
                      partnerThumbnail: item.partner.avatar,
                      partnerName: item.partner.name,
                    ));
                  },
                );
              },
              itemCount: state.messageList.length,
            ),
          ),
        );
      },
    );
  }
}

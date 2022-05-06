import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/message/list/message_list_bloc.dart';
import '../../common/widgets/empty_page.dart';
import '../../common/widgets/loading_widget.dart';
import 'widgets/widgets.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageListBloc, MessageListState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWidget();
        }

        if (state.messageList.isEmpty) {
          return const EmptyPage();
        }

        return SingleChildScrollView(
          child: SafeArea(
            left: false,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MessageRow(item: state.messageList[index]);
              },
              itemCount: state.messageList.length,
            ),
          ),
        );
      },
    );
  }
}

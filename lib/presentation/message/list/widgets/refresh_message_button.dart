import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/message/list/message_list_bloc.dart';
import '../../../common/utils/constants.dart';

class RefreshMessageButton extends StatelessWidget {
  const RefreshMessageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(itemSpacing),
        child: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            context
                .read<MessageListBloc>()
                .add(const MessageListEvent.refreshed());
          },
        ),
      ),
    );
  }
}

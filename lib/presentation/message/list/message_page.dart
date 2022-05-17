import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/common/platform/platform_delegate.dart';
import '../../../application/message/list/message_list_bloc.dart';
import '../../common.dart';
import '../../common/widgets/empty_page.dart';
import '../../common/widgets/loading_widget.dart';
import 'widgets/message_body_desktop.dart';
import 'widgets/message_body_mobile.dart';
import 'widgets/refresh_message_button.dart';

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
          return Stack(
            children: [
              LayoutBuilder(
                builder: (_, constraints) => RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<MessageListBloc>()
                        .add(const MessageListEvent.refreshed());
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: EmptyPage(text: context.l10n.noMessageFound),
                    ),
                  ),
                ),
              ),
              if (Target().isDesktop) const RefreshMessageButton(),
            ],
          );
        }

        final windowSize = Breakpoint.fromMediaQuery(context).window;
        return windowSize >= WindowSize.medium
            ? const MessageBodyDesktop()
            : const MessageBodyMobile();
      },
    );
  }
}

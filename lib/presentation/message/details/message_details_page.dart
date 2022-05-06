import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/message/details/message_details_bloc.dart';
import '../../../domain/message/interfaces/i_message_service.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import '../../common/widgets/loading_widget.dart';
import 'widgets/message_bubble.dart';
import 'widgets/message_input_row.dart';

class MessageDetailsPage extends StatelessWidget {
  final String tutorId;
  final String? partnerThumbnail;
  final String? partnerName;

  const MessageDetailsPage({
    Key? key,
    @PathParam('tutorId') required this.tutorId,
    this.partnerThumbnail,
    this.partnerName,
  }) : super(key: key);

  Widget buildPageAppBar(BuildContext context) {
    if (partnerName == null && partnerThumbnail == null) {
      return buildAppBar(
        context,
        title: context.l10n.chatButtonText,
      );
    }
    return AppBar(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          partnerThumbnail ?? '',
        ),
        onBackgroundImageError: (exception, stackTrace) {},
      ),
      title: Text(partnerName ?? context.l10n.chatButtonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 4),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              partnerThumbnail ?? '',
            ),
            onBackgroundImageError: (exception, stackTrace) {},
          ),
          title: Text(
            partnerName ?? context.l10n.chatButtonText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (_) => MessageDetailsBloc(
            getIt<MessageService>(),
            getIt<UserRepository>(),
            partnerId: tutorId,
          )..add(const MessageDetailsEvent.initialise()),
          child: MessageDetailsBody(partnerThumbnail: partnerThumbnail),
        ),
      ),
    );
  }
}

class MessageDetailsBody extends StatelessWidget {
  final String? partnerThumbnail;

  const MessageDetailsBody({
    Key? key,
    this.partnerThumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageDetailsBloc, MessageDetailsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWidget();
        }
        final data = state.messageList;

        return Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              reverse: true,
              padding: const EdgeInsets.only(top: 16.0, bottom: 80),
              itemBuilder: (context, index) {
                final message = data[index];
                return MessageBubble(
                  userId: state.userId!,
                  message: message,
                  child: Text(message.content),
                  partnerAvatar: partnerThumbnail,
                  // the list is reversed
                  previousMessage:
                      index < data.length - 1 ? data[index + 1] : null,
                );
              },
              itemCount: data.length,
            ),
            const MessageInputRow(),
          ],
        );
      },
    );
  }
}

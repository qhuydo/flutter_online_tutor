import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/message/details/message_details_bloc.dart';
import '../../../domain/message/interfaces/i_message_service.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/message_details_body.dart';

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

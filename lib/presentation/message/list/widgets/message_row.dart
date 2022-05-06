import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/message/list/message_list_bloc.dart';
import '../../../../domain/message/models/message_list_item.dart';
import '../../../common.dart';
import '../../../common/l10n/message_time_display_text.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/constants.dart';

class MessageRow extends StatelessWidget {
  final MessageListItem item;

  const MessageRow({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: smallItemSpacing,
        horizontal: smallItemSpacing + 4,
      ),
      leading: CircleAvatar(
        radius: 32,
        backgroundImage: NetworkImage(
          item.partner.avatar != null ? item.partner.avatar! : '',
        ),
        onBackgroundImageError: (exception, stackTrace) {},
      ),
      title: Text(
        item.partner.name,
        style: textTheme.titleMedium?.copyWith(
          fontWeight: item.isNewMessage ? FontWeight.bold : null,
        ),
      ),
      subtitle: Text(
        item.content,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: textTheme.subtitle1?.copyWith(
          fontWeight: item.isNewMessage ? FontWeight.bold : null,
          fontStyle: item.isMine ? FontStyle.italic : null,
        ),
      ),
      trailing: Text(item.createdAt.toMessageTimeDisplayText(context)),
      onTap: () {
        context
          ..read<MessageListBloc>().add(
            MessageListEvent.messageRead(item),
          )
          ..router.push(MessageDetailsRoute(
            tutorId: item.partner.id,
            partnerThumbnail: item.partner.avatar,
            partnerName: item.partner.name,
          ));
      },
    );
  }
}

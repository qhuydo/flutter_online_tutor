import '../../../../domain/message/models/message_list_item.dart';
import '../../../common.dart';
import '../../../common/l10n/message_time_display_text.dart';
import '../../../common/utils/constants.dart';

class MessageRow extends StatelessWidget {
  final MessageListItem item;
  final bool isSelected;
  final VoidCallback? onTapped;

  const MessageRow({
    Key? key,
    required this.item,
    this.isSelected = false,
    this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: smallItemSpacing,
        horizontal: smallItemSpacing + 4,
      ),
      selected: isSelected,
      selectedTileColor: Theme.of(context).hoverColor,
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
      onTap: onTapped,
    );
  }
}

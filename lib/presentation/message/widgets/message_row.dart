import '../../common.dart';

class MessageRow extends StatelessWidget {
  const MessageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 32,
      ),
      title: Text(
        'Nguyen Van A',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: Expanded(
        child: Text(
          AppLocalizations.of(context)!.loremIpsum,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      trailing: Text(
        '12:00'
      ),
    );
  }
}

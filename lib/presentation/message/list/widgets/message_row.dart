import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../routes/app_routes.gr.dart';

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
      subtitle: Text(
        AppLocalizations.of(context)!.loremIpsum,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Text('12:00'),
      onTap: () {
        context.router.push(MessageDetailsRoute(tutorId: ''));
      },
    );
  }
}

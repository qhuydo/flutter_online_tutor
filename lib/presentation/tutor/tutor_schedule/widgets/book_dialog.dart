import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';

import '../../../common.dart';
import '../event.dart';

class BookDialog extends StatelessWidget {
  final ScheduleEvent event;
  final DateTime date;

  const BookDialog({
    Key? key,
    required this.event,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final formatter = DateFormat.yMMMMd(
      Localizations.localeOf(context).languageCode,
    );
    final String formattedDate = formatter.format(date);

    return AlertDialog(
      title: const Text('Booking details'),
      content: SizedBox(
        width: deviceWidth <= 600 ? deviceWidth : 600,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text('Date'),
                trailing: Text('$formattedDate ${event.title}'),
              ),
              const ListTile(
                title: Text('Balance'),
                trailing: Text('You have 1 course left'),
              ),
              const ListTile(
                title: Text('Price'),
                trailing: Text('1 course'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                ),
                child: Text(
                  'Note',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    minLines: 5,
                    maxLines: 20,
                  )),
            ],
          ),
        ),
      ),
      actions: [
        OutlinedButton(
            onPressed: () {
              context.router.pop();
            },
            child: const Text('Cancel')),
        ElevatedButton(
            onPressed: () {
              context.router.pop();
            },
            child: const Text('Book')),
      ],
    );
  }
}

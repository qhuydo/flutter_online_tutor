import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';

import '../../../../domain/schedule/models/schedule.dart';
import '../../../common.dart';
import '../utils/schedule_extension.dart';

class BookDialog extends StatelessWidget {
  final Schedule schedule;

  const BookDialog({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final formatter = DateFormat.yMMMMd(
      Localizations.localeOf(context).languageCode,
    );
    final String formattedDate = formatter.format(schedule.meetingTime.start);

    return AlertDialog(
      title: Text(context.l10n.bookDialogTitle),
      content: SizedBox(
        width: deviceWidth <= 600 ? deviceWidth : 600,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  '$formattedDate ${schedule.meetingTime.getMeetingTime(context)}',
                  maxLines: 4,
                ),
              ),
              ListTile(
                title: Text(context.l10n.balanceLabel),
                // TODO get balance from data
                trailing: Text(context.l10n.balanceStatusText(1)),
              ),
              ListTile(
                title: Text(context.l10n.priceTextLabel),
                // TODO get price from data
                trailing: Text(context.l10n.priceValue(1)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                ),
                child: Text(
                  context.l10n.noteLabel,
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
          child: Text(context.l10n.cancelButtonLabel),
        ),
        ElevatedButton(
          onPressed: () {
            context.router.pop();
          },
          child: Text(context.l10n.bookButtonText),
        ),
      ],
    );
  }
}

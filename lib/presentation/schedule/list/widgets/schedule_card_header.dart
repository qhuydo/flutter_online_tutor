import 'package:intl/intl.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/utils/string_utils.dart';

class ScheduleCardHeader extends StatelessWidget {
  final Appointment appointment;

  const ScheduleCardHeader({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.l10n.localeName;
    // final weekdayFormatter = DateFormat('EEEE', locale);
    final dateFormatter = DateFormat.yMMMMEEEEd(locale);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: FittedBox(
            child: Text(
              dateFormatter.format(appointment.meetingTime.start),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: appointment.tutorAvatar == null
                ? Colors.grey.withOpacity(0.2)
                : null,
            radius: 32,
            backgroundImage: appointment.tutorAvatar != null
                ? NetworkImage(appointment.tutorAvatar!)
                : null,
            onBackgroundImageError: (exception, stackTrace) {},
          ),
          title: Text(
            appointment.tutorName,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: Text(
            appointment.tutorCountry.name,
            style: Theme.of(context).textTheme.caption,
          ),
          trailing: Twemoji(
            emoji:
                appointment.tutorCountry.isoCode.toCountryFlagFromCountryCode(),
            width: 44,
            height: 44,
          ),
        ),
      ],
    );
  }
}

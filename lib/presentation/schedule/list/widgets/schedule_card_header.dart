import 'package:intl/intl.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/string_utils.dart';

class ScheduleCardHeader extends StatelessWidget {
  final Appointment appointment;
  final bool showMeetingDate;

  const ScheduleCardHeader({
    Key? key,
    required this.appointment,
    this.showMeetingDate = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.l10n.localeName;
    // final weekdayFormatter = DateFormat('EEEE', locale);
    final dateFormatter = DateFormat.yMMMMEEEEd(locale);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showMeetingDate
            ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: itemSpacing,
                  vertical: smallItemSpacing,
                ),
                child: FittedBox(
                  child: Text(
                    dateFormatter.format(appointment.meetingTime.start),
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            : const SizedBox(height: smallItemSpacing),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: appointment.tutorAvatar == null
                ? Colors.grey.withOpacity(0.2)
                : null,
            radius: 32,
            backgroundImage: NetworkImage(appointment.tutorAvatar ?? ''),
            onBackgroundImageError: (exception, stackTrace) {},
          ),
          title: Text(
            appointment.tutorName,
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            appointment.tutorCountry.name,
            style: textTheme.caption,
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

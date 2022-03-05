import 'package:twemoji/twemoji.dart';

import '../../../common.dart';
import '../../../tutor/list/widgets/tutor_avatar.dart';
import '../../../utils/string_utils.dart';

class ScheduleCardHeader extends StatelessWidget {
  const ScheduleCardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                'Sunday, 27/02/2022',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
        ListTile(
          leading: const TutorAvatar(),
          title: Text(
            'Nguyen Van A',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: Text(
            'Vietnam',
            style: Theme.of(context).textTheme.caption,
          ),
          trailing: Twemoji(
            emoji: 'VN'.toCountryFlagFromCountryCode(),
            width: 44,
            height: 44,
          ),
        ),
      ],
    );
  }
}

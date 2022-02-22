import 'package:twemoji/twemoji.dart';

import '../../common.dart';
import '../../utils/string_utils.dart';
import 'widgets.dart';

class TutorCardHeader extends StatelessWidget {
  const TutorCardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TutorAvatar(),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nguyen Van A',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Vietnam',
                style: Theme.of(context).textTheme.bodySmall,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        Twemoji(
          emoji: 'VN'.toCountryFlagFromCountryCode(),
          width: 44,
          height: 44,
        ),
      ],
    );
  }
}

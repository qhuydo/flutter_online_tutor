import 'package:twemoji/twemoji.dart';

import '../../common.dart';
import '../../utils/string_utils.dart';

class TutorCard extends StatelessWidget {
  const TutorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  radius: 32,
                  // child: SvgPicture.asset(
                  //   'assets/icons/phone.svg',
                  //   width: 40,
                  //   height: 40,
                  // ),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nguyen Van A',
                        style: Theme.of(context).textTheme.subtitle2,
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
                  width: 40,
                  height: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

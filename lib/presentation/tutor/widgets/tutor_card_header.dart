import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  RatingBarIndicator(
                    rating: 5,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 12,
                    direction: Axis.horizontal,
                  ),
                  Text(
                    'Vietnam',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
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

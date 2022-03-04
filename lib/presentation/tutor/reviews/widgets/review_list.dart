import 'dart:math';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../utils/constants.dart';
import '../../../common.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: itemSpacing),
      itemBuilder: (context, index) {
        // return ListTile(
        //   leading: const CircleAvatar(
        //     radius: 24,
        //   ),
        //   isThreeLine: true,
        //   title: Text(
        //     'Nguyen Van A',
        //     style: Theme.of(context).textTheme.titleMedium,
        //   ),
        //   subtitle: RatingBarIndicator(
        //     rating: Random().nextInt(5).toDouble(),
        //     itemBuilder: (context, index) => const Icon(
        //       Icons.star,
        //       color: Colors.amber,
        //     ),
        //     itemCount: 5,
        //     itemSize: 12,
        //     direction: Axis.horizontal,
        //   ),
        // );
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: itemSpacing,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: WrapCrossAlignment.start,
            // direction: Axis.horizontal,
            // spacing: itemSpacing,
            children: [
              const CircleAvatar(
                radius: 24,
              ),
              const SizedBox(width: itemSpacing),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nguyen Van A',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    RatingBarIndicator(
                      rating: Random().nextInt(6).toDouble(),
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20,
                      direction: Axis.horizontal,
                    ),
                    Text([
                      AppLocalizations.of(context)!.loremIpsum,
                      AppLocalizations.of(context)!.mediumLoremIpsum,
                      AppLocalizations.of(context)!.shortLoremIpsum,
                    ][Random().nextInt(3)]),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: itemSpacing),
      itemCount: 10,
    );
  }
}

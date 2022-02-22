import 'package:flutter/widgets.dart';

import '../../common.dart';

class TopicCardActionButtons extends StatelessWidget {
  const TopicCardActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const ShapeDecoration(
              shape: StadiumBorder(
            side: BorderSide(width: 1.25),
          )),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
              tooltip: AppLocalizations.of(context)!.addToFavouriteTooltip),
        ),
        const Expanded(child: SizedBox()),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            MaterialButton(
              onPressed: () {},
              shape: const StadiumBorder(
                side: BorderSide(width: 1.25),
              ),
              child: Wrap(
                spacing: 4,
                children: [
                  const Icon(Icons.event),
                  Text(
                    AppLocalizations.of(context)!.bookButtonText,
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              shape: const StadiumBorder(
                side: BorderSide(width: 1.25),
              ),
              child: Wrap(
                spacing: 4,
                children: [
                  const Icon(Icons.chat_bubble_outline),
                  Text(
                    AppLocalizations.of(context)!.chatButtonText,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

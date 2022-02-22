import '../../common.dart';

class TutorCardActionButtons extends StatelessWidget {
  const TutorCardActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              size: 28,
            ),
            tooltip: AppLocalizations.of(context)!.addToFavouriteTooltip),
        const Expanded(child: SizedBox()),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            MaterialButton(
              onPressed: () {},
              shape: StadiumBorder(
                side: BorderSide(
                  width: 1.25,
                  color: Theme.of(context).iconTheme.color ?? Colors.black,
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.event),
                  const SizedBox(width: 4),
                  Text(
                    AppLocalizations.of(context)!.bookButtonText,
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              shape: StadiumBorder(
                side: BorderSide(
                  width: 1.25,
                  color: Theme.of(context).iconTheme.color ?? Colors.black,
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.chat_bubble_outline),
                  const SizedBox(width: 4),
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

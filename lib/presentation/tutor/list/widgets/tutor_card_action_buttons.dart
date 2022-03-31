import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';

class TutorCardActionButtons extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onFavouriteButtonPressed;

  const TutorCardActionButtons({
    Key? key,
    this.onFavouriteButtonPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutor = context.watch<Tutor>();
    return Row(
      children: [
        isLoading
            ? const CircularProgressIndicator()
            : IconButton(
                onPressed: onFavouriteButtonPressed,
                icon: Icon(
                  tutor.isFavourite
                      ? Icons.favorite
                      : Icons.favorite_border,
                  size: 28,
                  color: tutor.isFavourite
                      ? Theme.of(context).colorScheme.secondary
                      : null,
                ),
                tooltip: AppLocalizations.of(context)!.addToFavouriteTooltip,
              ),
        const Expanded(child: SizedBox()),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            MaterialButton(
              onPressed: () {
                context.router.push(
                  TutorScheduleRoute(tutorId: tutor.id),
                );
              },
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
              onPressed: () {
                context.router.push(MessageDetailsRoute(tutorId: tutor.id));
              },
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

import '../../common.dart';
import '../../tutor/widgets/tutor_card.dart';

class RecommendedTutors extends StatelessWidget {
  const RecommendedTutors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.ideographic,
          children: [
            // Twemoji(emoji: '🌟'),
            Text(
              '🌟 ' + AppLocalizations.of(context)!.recommendedTutors,
              maxLines: 2,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  // decoration: TextDecoration.underline,
                  ),
              textAlign: TextAlign.start,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.seeMoreButtonText,
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 16),
        const TutorCard()
      ],
    );
  }
}

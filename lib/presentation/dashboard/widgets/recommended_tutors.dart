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
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.start,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
        // const SizedBox(height: 16),
        ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 8);
          },
          itemBuilder: (BuildContext context, int index) {
            return const TutorCard();
          },
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          itemCount: 5,
          shrinkWrap: true,
        ),
        // const TutorCard(),
      ],
    );
  }
}

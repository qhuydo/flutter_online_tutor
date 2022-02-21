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
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          children: [
            Text(
              // AppLocalizations.of(context)!.recommendedTutors,
              'Recommended tutors',
              maxLines: 2,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    decoration: TextDecoration.underline,
                  ),
              textAlign: TextAlign.start,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Text(
                    // AppLocalizations.of(context)!.seeMoreButtonText,
                    "See more",
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            )
          ],
        ),
        const TutorCard()
      ],
    );
  }
}

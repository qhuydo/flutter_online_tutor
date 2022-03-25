import '../../../common/utils/constants.dart';
import '../../../common.dart';
import '../helpers/helpers.dart';

class ReviewVideo extends StatelessWidget {
  const ReviewVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.syllabusLessonVideoTitle,
          style: getTitleTextStyle(context),
        ),
        const SizedBox(height: smallItemSpacing),
        Text(
          AppLocalizations.of(context)!.syllabusReviewVideoSubtitle,
          style: getSubTitleTextStyle(context),
        ),
        const SizedBox(height: smallItemSpacing),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 180,
            height: 120,
            // color: Colors.blue,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[600]?.withOpacity(0.8) ?? Colors.grey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}

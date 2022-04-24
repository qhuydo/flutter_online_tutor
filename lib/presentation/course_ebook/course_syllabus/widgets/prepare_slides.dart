import '../../../common/utils/constants.dart';
import '../../../common.dart';
import '../helpers/helpers.dart';
import 'slide_preview_list.dart';

class PrepareSlides extends StatelessWidget {
  const PrepareSlides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.syllabusBeforeLessonTitle,
          style: getTitleTextStyle(context),
        ),
        const SizedBox(height: smallItemSpacing),
        Text(
          context.l10n.syllabusBeforeLessonSubtitle,
          style: getSubTitleTextStyle(context),
        ),
        const SizedBox(height: smallItemSpacing),
        const SlidePreviewList(pdf: null),
      ],
    );
  }
}

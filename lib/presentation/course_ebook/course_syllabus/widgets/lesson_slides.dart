import '../../../../utils/constants.dart';
import '../../../common.dart';
import '../helpers/helpers.dart';
import 'slide_preview_list.dart';

class LessonSlides extends StatelessWidget {
  const LessonSlides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.syllabusLessonSlideTitle,
          style: getTitleTextStyle(context),
        ),
        const SizedBox(height: smallItemSpacing),
        Text(
          AppLocalizations.of(context)!.syllabusLessonSlideSubtitle,
          style: getSubTitleTextStyle(context),
        ),
        const SizedBox(height: smallItemSpacing),
        const SlidePreviewList(),
      ],
    );
  }
}

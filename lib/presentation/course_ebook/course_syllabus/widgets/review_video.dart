import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../tutor/details/widgets/video_preview.dart';
import '../helpers/helpers.dart';

class ReviewVideo extends StatelessWidget {
  final String? videoUrl;

  const ReviewVideo({Key? key, this.videoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.syllabusLessonVideoTitle,
          style: getTitleTextStyle(context),
        ),
        const SizedBox(height: smallItemSpacing),
        Text(
          context.l10n.syllabusReviewVideoSubtitle,
          style: getSubTitleTextStyle(context),
        ),
        const SizedBox(height: smallItemSpacing),
        VideoPreview(videoUrl: videoUrl ?? '', id: 210),
      ],
    );
  }
}

import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/l10n/level_display_text.dart';

class CourseDetailsContent extends StatelessWidget {
  final Course course;

  const CourseDetailsContent({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subtitleTextStyle = Theme.of(context).textTheme.subtitle1?.copyWith(
          color: Theme.of(context).textTheme.caption?.color,
        );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: smallItemSpacing),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          iconColor: Theme.of(context).textTheme.titleLarge?.color,
          tilePadding: const EdgeInsets.symmetric(horizontal: smallItemSpacing),
          initiallyExpanded: true,
          title: Text(
            context.l10n.overviewTitleText,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: smallItemSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  Text(
                    context.l10n.reasonToTakeCourseSubtitle,
                    style: subtitleTextStyle,
                  ),
                  Text(course.reason),
                  //
                  const SizedBox(height: smallItemSpacing),
                  Text(
                    context.l10n.canDoSubtitle,
                    style: subtitleTextStyle,
                  ),
                  Text(course.purpose),
                  //
                  const SizedBox(height: smallItemSpacing),
                  Text(
                    context.l10n.experienceLevelTitle,
                    style: subtitleTextStyle,
                  ),
                  Text(course.level.toDisplayString(context)),
                  //
                  const SizedBox(height: smallItemSpacing),
                  Text(
                    context.l10n.courseLengthTitle,
                    style: subtitleTextStyle,
                  ),
                  Text(course.courseLength.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

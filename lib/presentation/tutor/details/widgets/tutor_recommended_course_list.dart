import '../../../../utils/constants.dart';
import '../../../common.dart';
import '../../../course_ebook/course_list/widgets/course_list_card.dart';

class TutorRecommendedCourseList extends StatelessWidget {
  static const itemSpacing = 16.0;

  const TutorRecommendedCourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: itemSpacing),
          child: Text(
            AppLocalizations.of(context)!.recommendedCourses,
            style: titleStyle,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: itemSpacing),
          child: Divider(),
        ),
        // const SizedBox(height: itemSpacing),
        GridView.builder(
          padding: const EdgeInsets.all(0),
          primary: false,
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return CourseListCard(
              thumbnail: courseAssets[index % courseAssets.length],
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 1 / 1.25,
          ),
        ),
      ],
    );
  }
}

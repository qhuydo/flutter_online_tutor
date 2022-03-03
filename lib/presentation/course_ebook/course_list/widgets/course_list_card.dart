import '../../../common.dart';
import 'course_carousel_card_content.dart';

class CourseListCard extends StatelessWidget {
  const CourseListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 13 / 9,
              // child: Image.asset(
              //   'assets/images/course.png',
              //   fit: BoxFit.fitWidth,
              //   height: double.infinity,
              //   width: double.infinity,
              // ),
              child: Container(
                color: Colors.blue,
              ),
            ),
            const CourseCarouselCardContent(),
            // Flexible(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         // generateWordPairs().first.join(' '),
            //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
            //         maxLines: 1,
            //         style: Theme.of(context).textTheme.titleMedium?.copyWith(
            //               fontWeight: FontWeight.bold,
            //             ),
            //         textAlign: TextAlign.start,
            //         overflow: TextOverflow.ellipsis,
            //       ),
            //       Text(
            //         AppLocalizations.of(context)!.loremIpsum,
            //         overflow: TextOverflow.ellipsis,
            //         maxLines: 3,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

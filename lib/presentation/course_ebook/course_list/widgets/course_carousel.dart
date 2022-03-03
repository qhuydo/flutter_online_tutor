import '../../../../utils/constants.dart';
import '../../../common.dart';
import '../../../common/widgets/dots_indicator.dart';
import 'course_carousel_card.dart';

class CourseCarousel extends StatefulWidget {
  const CourseCarousel({Key? key}) : super(key: key);

  @override
  State<CourseCarousel> createState() => _CourseCarouselState();
}

const int _itemCount = 5;
class _CourseCarouselState extends State<CourseCarousel> {
  final _controller = PageController(
    initialPage: _itemCount,
    viewportFraction: goldenRatioInverse,
  );

  static const _kDuration = Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  late double cardWidth;
  late double cardHeight;

  Widget _buildCourseList(BuildContext context, int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double value = 1.0;
        if (_controller.position.haveDimensions) {
          value = _controller.page! - index;
          value = (1 - (value.abs() * .25)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * cardHeight,
            width: Curves.easeOut.transform(value) * cardWidth,
            child: child,
          ),
        );
      },
      child: const CourseCarouselCard(),
      // child: Container(
      //   margin: const EdgeInsets.all(8.0),
      //   color: index % 2 == 0 ? Colors.blue : Colors.red,
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    cardWidth = deviceWidth * goldenRatioInverse;
    cardHeight = deviceWidth;

    // cardWidth = 288;
    // cardHeight = cardWidth * goldenRatio;

    return Column(
      children: [
        SizedBox(
          height: cardHeight,
          child: PageView.builder(
            controller: _controller,
            itemBuilder: _buildCourseList,
            // itemCount: _itemCount,
          ),
          // child: PageView.builder(
          //   itemBuilder: (context, index) {
          //     return const CourseCard();
          //   },
          //   itemCount: _itemCount,
          //   controller: _controller,
          // ),
        ),
        if (_itemCount > 1)
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Center(
              child: DotsIndicator(
                color: Colors.grey[600]!.withOpacity(0.8),
                controller: _controller,
                itemCount: _itemCount,
                onPageSelected: (int page) {
                  _controller.animateToPage(
                    page % _itemCount,
                    duration: _kDuration,
                    curve: _kCurve,
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}

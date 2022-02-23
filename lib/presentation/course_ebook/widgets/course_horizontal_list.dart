import '../../common.dart';
import '../../common/widgets/dots_indicator.dart';
import 'course_card.dart';

class CourseHorizontalList extends StatefulWidget {
  const CourseHorizontalList({Key? key}) : super(key: key);

  @override
  State<CourseHorizontalList> createState() => _CourseHorizontalListState();
}

class _CourseHorizontalListState extends State<CourseHorizontalList> {
  final int _itemCount = 5;
  final _controller = PageController(
    keepPage: false,
    viewportFraction: 0.9,
  );

  static const _kDuration = Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  static const _cardHeight = 200.0;

  late double deviceWidth;

  Widget _buildCourseList(BuildContext context, int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double value = 1.0;
        if (_controller.position.haveDimensions) {
          value = _controller.page! - index;
          value = (1 - (value.abs() * .35)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * _cardHeight,
            width: Curves.easeOut.transform(value) * deviceWidth,
            child: child,
          ),
        );
      },
      child: const CourseCard(),
      // child: Container(
      //   margin: const EdgeInsets.all(8.0),
      //   color: index % 2 == 0 ? Colors.blue : Colors.red,
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: _cardHeight,
          child: PageView.builder(
            controller: _controller,
            itemBuilder: _buildCourseList,
            itemCount: _itemCount,
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
                    page,
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

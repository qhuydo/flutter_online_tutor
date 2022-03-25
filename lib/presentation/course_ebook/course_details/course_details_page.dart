import '../../common/utils/constants.dart';
import '../../common.dart';
import 'widgets/widgets.dart';

class CourseDetailsPage extends StatelessWidget {
  final String courseId;
  final String? thumbnail;

  const CourseDetailsPage({
    Key? key,
    required this.courseId,
    this.thumbnail,
  }) : super(key: key);

  Widget _buildFlexibleSpaceBar(BuildContext context) {
    return FlexibleSpaceBar(
      stretchModes: const [
        StretchMode.zoomBackground,
        StretchMode.fadeTitle,
      ],
      background: Image.asset(
        thumbnail ?? 'assets/images/course.png',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              AppLocalizations.of(context)!.courseTitle,
            ),
            elevation: 0.75,
            shadowColor: Colors.grey[500]?.withOpacity(0.5),
            centerTitle: true,
            floating: true,
            stretch: true,
            expandedHeight: MediaQuery.of(context).size.width * 9 / 13,
            flexibleSpace: _buildFlexibleSpaceBar(context),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: itemSpacing),
                CourseDetailsHeader(),
                // SizedBox(height: 16),
                CourseDetailsContent(),
                SizedBox(height: smallItemSpacing),
                Syllabus(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

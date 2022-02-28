import '../common.dart';
import 'widgets/widgets.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: TabBar(
              unselectedLabelColor:
                  Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              labelColor: Theme.of(context).primaryColor,
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.videocam),
                      const SizedBox(width: 8),
                      Text(AppLocalizations.of(context)!.courseTabLabel),
                    ],
                  ),
                ),
                Tab(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.book),
                        const SizedBox(width: 8),
                        Text(AppLocalizations.of(context)!.ebookTabLabel),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        body: const TabBarView(
          children: [
            CourseTabPage(),
            EbookTabPage(),
          ],
        ),
      ),
    );
  }
}

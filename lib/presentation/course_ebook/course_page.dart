import '../common.dart';
import 'widgets.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Container(
                color: Theme.of(context).appBarTheme.backgroundColor,
                child: TabBar(
                  // unselectedLabelColor: Theme.of(context).appBarTheme.foregroundColor,
                  // labelColor: Theme.of(context).appBarTheme.foregroundColor,
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.videocam),
                          const SizedBox(width: 8),
                          Text(context.l10n.courseTabLabel),
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
                            Text(context.l10n.ebookTabLabel),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
      ),
    );
  }
}

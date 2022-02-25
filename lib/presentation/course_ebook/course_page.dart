import 'package:flutter/material.dart';

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
              tabs: const [
                Tab(
                  icon: Icon(Icons.videocam),
                  text: 'Course',
                ),
                Tab(
                  icon: Icon(Icons.book),
                  text: 'Ebook',
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

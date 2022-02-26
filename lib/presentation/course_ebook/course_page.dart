import 'package:flutter/material.dart';

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
                    children: const [
                      Icon(Icons.videocam),
                      SizedBox(width: 8),
                      Text('Course'),
                    ],
                  ),
                ),
                Tab(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.book),
                        SizedBox(width: 8),
                        Text('Ebook'),
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

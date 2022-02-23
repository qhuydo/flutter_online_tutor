import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'common.dart';
import 'routes/app_routes.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        DashboardRoute(),
        MessageRoute(),
        CourseRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (BuildContext context, tabsRouter) {
        return SalomonBottomBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          itemPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8,
          ),
          // margin: const EdgeInsets.fromLTRB(16, 0, 0, 16),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
              selectedColor: Colors.blue,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.message),
              title: const Text('Messages'),
              selectedColor: Colors.pink,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text('Search'),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Profile'),
              selectedColor: Colors.teal,
            ),
          ],
        );
      },
      // body: const SafeArea(child: DashboardPage()),
    );
  }
}

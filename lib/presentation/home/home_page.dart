import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../common.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/utils/default_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  SalomonBottomBarItem buildNavBarItem({
    required IconData icon,
    IconData? activeIcon,
    required String text,
    required Color selectedColour,
  }) {
    final isDesktop =
        Platform.isLinux || Platform.isMacOS || Platform.isWindows;

    return SalomonBottomBarItem(
      activeIcon: activeIcon != null
          ? Icon(
              activeIcon,
              size: isDesktop ? 32 : null,
            )
          : null,
      icon: Icon(
        icon,
        size: isDesktop ? 32 : null,
      ),
      title: Text(
        text,
        // style: const TextStyle(
        //   fontSize: 16,
        // ),
      ),
      selectedColor: selectedColour,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        DashboardRoute(),
        TutorRoute(),
        CourseRoute(),
        ScheduleRoute(),
        MessageRoute(),
      ],
      appBarBuilder: (BuildContext context, TabsRouter tabsRouter) {
        return buildAppBar(
          context,
          shouldShowDefaultActions: true,
          elevation: tabsRouter.current.name == CourseRoute.name ? 0 : null,
        );
      },
      bottomNavigationBuilder: (BuildContext context, tabsRouter) {
        return SalomonBottomBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          itemPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          items: [
            buildNavBarItem(
              icon: Icons.home_outlined,
              activeIcon: Icons.home,
              text: context.l10n.homeBottomNavItem,
              selectedColour: Colors.blue,
            ),
            buildNavBarItem(
                icon: Icons.people_outlined,
                activeIcon: Icons.people,
                text: context.l10n.tutorBottomNavBarItem,
                selectedColour: Colors.teal),
            buildNavBarItem(
                icon: Icons.book_outlined,
                activeIcon: Icons.book,
                text: context.l10n.courseBottomNavItem,
                selectedColour: Colors.green),
            buildNavBarItem(
                icon: Icons.event_outlined,
                activeIcon: Icons.event,
                text: context.l10n.scheduleBottomNavItem,
                selectedColour: Colors.pinkAccent),
            buildNavBarItem(
                icon: Icons.message_outlined,
                activeIcon: Icons.message,
                text: context.l10n.messagesBottomNavItem,
                selectedColour: Colors.deepOrange),
          ],
        );
      },
      // body: const SafeArea(child: DashboardPage()),
    );
  }
}

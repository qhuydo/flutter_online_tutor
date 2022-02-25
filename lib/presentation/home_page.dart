import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'common.dart';
import 'routes/app_routes.gr.dart';

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
        return AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text(
            AppLocalizations.of(context)!.appTitle,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                context.router.push(const SettingsRoute());
              },
              child: const CircleAvatar(),
            ),
          ],
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
              text: AppLocalizations.of(context)!.homeBottomNavItem,
              selectedColour: Colors.blue,
            ),
            buildNavBarItem(
                icon: Icons.people_outlined,
                activeIcon: Icons.people,
                text: AppLocalizations.of(context)!.tutorBottomNavBarItem,
                selectedColour: Colors.teal),
            buildNavBarItem(
                icon: Icons.book_outlined,
                activeIcon: Icons.book,
                text: AppLocalizations.of(context)!.courseBottomNavItem,
                selectedColour: Colors.green),
            buildNavBarItem(
                icon: Icons.event_outlined,
                activeIcon: Icons.event,
                text: AppLocalizations.of(context)!.scheduleBottomNavItem,
                selectedColour: Colors.pinkAccent),
            buildNavBarItem(
                icon: Icons.message_outlined,
                activeIcon: Icons.message,
                text: AppLocalizations.of(context)!.tutorBottomNavBarItem,
                selectedColour: Colors.deepOrange),
          ],
        );
      },
      // body: const SafeArea(child: DashboardPage()),
    );
  }
}

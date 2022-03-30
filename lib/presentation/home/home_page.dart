import 'package:auto_route/auto_route.dart';

import '../common.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/utils/default_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        return NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              icon: Icon(tabsRouter.activeIndex == 0
                  ? Icons.home
                  : Icons.home_outlined),
              label: context.l10n.homeBottomNavItem,
            ),
            NavigationDestination(
              icon: Icon(
                tabsRouter.activeIndex == 1
                    ? Icons.people
                    : Icons.people_outlined,
              ),
              label: context.l10n.tutorBottomNavBarItem,
            ),
            NavigationDestination(
              icon: Icon(
                tabsRouter.activeIndex == 2 ? Icons.book : Icons.book_outlined,
              ),
              label: context.l10n.courseBottomNavItem,
            ),
            NavigationDestination(
              icon: Icon(
                tabsRouter.activeIndex == 3
                    ? Icons.event
                    : Icons.event_outlined,
              ),
              label: context.l10n.scheduleBottomNavItem,
            ),
            NavigationDestination(
              icon: Icon(
                tabsRouter.activeIndex == 4
                    ? Icons.message
                    : Icons.message_outlined,
              ),
              label: context.l10n.messagesBottomNavItem,
            ),
          ],
        );
      },
      // body: const SafeArea(child: DashboardPage()),
    );
  }
}

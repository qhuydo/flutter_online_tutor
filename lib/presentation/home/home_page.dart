import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/authentication/authentication_bloc.dart';
import '../../application/common/app/app_cubit.dart';
import '../common.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/utils/default_app_bar.dart';
import '../common/utils/flushbar_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Flushbar? _flushbar;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppCubit, AppState>(
          listenWhen: (previous, current) =>
              current.hasInternetConnection == false ||
              previous.hasInternetConnection == false,
          listener: (_, state) {
            if (state.hasInternetConnection) {
              _flushbar?.dismiss();
              return;
            } else {
              _flushbar = FlushBarUtils.createError(
                message: context.l10n.authenticationFailureNoInternet,
                duration: const Duration(seconds: 15),
              )..show(context);
            }
          },
        ),
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listenWhen: (previous, current) => current.map(
            initial: (_) => false,
            authenticated: (_) => false,
            unauthenticated: (_) => true,
          ),
          listener: (_, state) {
            context.router
              ..popUntilRoot()
              ..replace(const LoginRoute());
          },
        ),
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
          useDivider: true,
        ),
        child: AutoTabsScaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
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
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
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
                    tabsRouter.activeIndex == 2
                        ? Icons.book
                        : Icons.book_outlined,
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
        ),
      ),
    );
  }
}

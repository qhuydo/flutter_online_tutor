import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/authentication/authentication_bloc.dart';
import '../../application/common/app/app_cubit.dart';
import '../../application/course_ebook/course_list/course_list_bloc.dart';
import '../../application/course_ebook/ebook_list/ebook_list_bloc.dart';
import '../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../application/tutor/recommended_tutors/recommended_tutors_bloc.dart';
import '../../application/tutor/search_tutors/search_tutors_bloc.dart';
import '../authentication/widgets/verify_account_url_listener.dart';
import '../common.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/utils/default_app_bar.dart';
import '../common/utils/flushbar_utils.dart';
import '../common/widgets/adaptive_auto_tabs_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Flushbar? _flushbar;

  @override
  Widget build(BuildContext context) {
    return VerifyAccountUrlListener(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) {
              return getIt<CourseListBloc>()
                ..add(const CourseListEvent.initialise());
            },
          ),
          BlocProvider<RecommendedTutorsBloc>(
            create: (context) => getIt<RecommendedTutorsBloc>()
              ..add(const RecommendedTutorsEvent.initialise()),
          ),
          BlocProvider(
            create: (_) {
              return getIt<CourseListBloc>()
                ..add(const CourseListEvent.initialise());
            },
          ),
          BlocProvider(
            create: (context) {
              return getIt<EbookListBloc>()
                ..add(const EbookListEvent.initialise());
            },
          ),
          BlocProvider(
            create: (context) => getIt<SearchTutorsBloc>()
              ..add(
                const SearchTutorsEvent.initialise(),
              ),
          ),
          BlocProvider(
            create: (_) => getIt<UpcomingClassBloc>()
              ..add(const UpcomingClassEvent.initialise()),
          ),
        ],
        child: MultiBlocListener(
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
            child: AdaptiveAutoTabsScaffold(
              extendBodyBehindAppBar: true,
              extendBody: true,
              routes: const [
                DashboardRoute(),
                TutorRoute(),
                CourseRoute(),
                ScheduleRoute(),
                MessageRoute(),
              ],
              appBar: buildAppBar(
                context,
                shouldShowDefaultActions: true,
                elevation: 0,
              ),
              navigationItems: [
                NavigationItem(
                  selectedIcon: Icons.home,
                  icon: Icons.home_outlined,
                  title: context.l10n.homeBottomNavItem,
                ),
                NavigationItem(
                  selectedIcon: Icons.people,
                  icon: Icons.people_outlined,
                  title: context.l10n.tutorBottomNavBarItem,
                ),
                NavigationItem(
                  selectedIcon: Icons.book,
                  icon: Icons.book_outlined,
                  title: context.l10n.courseBottomNavItem,
                ),
                NavigationItem(
                  selectedIcon: Icons.event,
                  icon: Icons.event_outlined,
                  title: context.l10n.scheduleBottomNavItem,
                ),
                NavigationItem(
                  selectedIcon: Icons.message,
                  icon: Icons.message_outlined,
                  title: context.l10n.messagesBottomNavItem,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';

import '../pages.dart';

@MaterialAutoRouter(
    preferRelativeImports: true,
    replaceInRouteName: 'Page,Route',
    routes: [
      AutoRoute(page: LoginPage, initial: true),
      AutoRoute(page: LoginByPhonePage),
      AutoRoute(page: SignUpPage),
      AutoRoute(page: SignUpByPhonePage),
      AutoRoute(page: ResetPasswordPage),
      AutoRoute(
        page: HomePage,
        children: [
          AutoRoute(page: DashboardPage),
          AutoRoute(page: TutorPage),
          AutoRoute(page: CoursePage),
          AutoRoute(page: SchedulePage),
          AutoRoute(page: MessagePage),
        ],
      ),
      AutoRoute(page: SettingsPage),
    ])
class $AppRouter {}

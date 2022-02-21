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
      AutoRoute(page: HomePage),
    ])
class $AppRouter {}

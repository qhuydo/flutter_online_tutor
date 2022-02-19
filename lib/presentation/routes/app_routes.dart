import 'package:auto_route/auto_route.dart';

import '../authentication/login/login_by_phone_page.dart';
import '../authentication/login/login_page.dart';
import '../authentication/sign_up/sign_up_by_phone_page.dart';
import '../authentication/sign_up/sign_up_page.dart';

@MaterialAutoRouter(
    preferRelativeImports: true,
    replaceInRouteName: 'Page,Route',
    routes: [
      AutoRoute(page: LoginPage, initial: true),
      AutoRoute(page: LoginByPhonePage),
      AutoRoute(page: SignUpPage),
      AutoRoute(page: SignUpByPhonePage),
    ])
class $AppRouter {}

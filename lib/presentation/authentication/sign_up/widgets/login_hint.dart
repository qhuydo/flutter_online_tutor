import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';

class LoginHint extends StatelessWidget {
  const LoginHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.l10n.loginHint),
        TextButton(
            onPressed: () {
              context.router.replace(const LoginRoute());
            },
            child: Text(context.l10n.loginButtonText))
      ],
    );
  }
}

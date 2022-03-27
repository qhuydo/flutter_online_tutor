import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';

class LoginHint extends StatelessWidget {
  final bool isDisabled;

  const LoginHint({
    Key? key,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.l10n.loginHint),
        TextButton(
            onPressed: isDisabled
                ? null
                : () {
                    context.router.replace(const LoginRoute());
                  },
            child: Text(context.l10n.loginButtonText))
      ],
    );
  }
}

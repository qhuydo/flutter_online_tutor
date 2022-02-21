import 'package:auto_route/auto_route.dart';

import '../../common.dart';
import '../../routes/app_routes.gr.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.router.push(const ResetPasswordRoute());
      },
      child: Text(AppLocalizations.of(context)!.forgotPasswordButtonLabel),
    );
  }
}

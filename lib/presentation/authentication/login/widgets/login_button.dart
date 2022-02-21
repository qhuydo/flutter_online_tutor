import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../routes/app_routes.gr.dart';
import '../../widgets/submit_button.dart';

class LoginButton extends SubmitButton {
  const LoginButton({Key? key}) : super(key: key);

  @override
  void onPressed(BuildContext context) {
    // TODO: implement onPressed
    context.router.replace(const HomeRoute());
  }

  @override
  String getText(BuildContext context) {
    return AppLocalizations.of(context)!.loginButtonText;
  }
}

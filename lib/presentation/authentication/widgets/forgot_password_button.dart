import 'package:auto_route/auto_route.dart';

import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';

class ForgotPasswordButton extends StatelessWidget {
  final bool isDisabled;

  const ForgotPasswordButton({
    Key? key,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isDisabled
          ? null
          : () {
              context.router.push(const ResetPasswordRoute());
            },
      child: Text(context.l10n.forgotPasswordButtonLabel),
    );
  }
}

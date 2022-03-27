import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';

class SignupHint extends StatelessWidget {
  final bool isDisabled;

  const SignupHint({Key? key, this.isDisabled = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.l10n.signUpHint),
        TextButton(
          onPressed: isDisabled
              ? null
              : () {
                  context.router.replace(const SignUpRoute());
                },
          child: Text(context.l10n.signUpButtonText),
        )
      ],
    );
  }
}

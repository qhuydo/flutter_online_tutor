import 'package:auto_route/auto_route.dart';

import '../../../common/routes/app_routes.gr.dart';
import '../../../common.dart';

class SignupHint extends StatelessWidget {
  const SignupHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.l10n.signUpHint
        ),
        TextButton(onPressed: () {
          context.router.replace(const SignUpRoute());
        }, child: Text(
          context.l10n.signUpButtonText
        ))
      ],
    );
  }
}

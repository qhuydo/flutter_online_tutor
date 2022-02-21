
import '../../common.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_phone_form.dart';
import 'widgets/login_button.dart';
import 'widgets/login_option_button_group.dart';
import 'widgets/signup_hint.dart';

class LoginByPhonePage extends StatelessWidget {
  const LoginByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenScaffold(
      title: AppLocalizations.of(context)!.loginButtonText,
      form: const AuthenticateByPhoneNumberForm(),
      submitButton: const LoginButton(),
      otherAuthenticateOptions: const LoginOptionButtonGroup(
        hasMailOption: true,
        hasPhoneOption: false,
      ),
      otherOptions: const SignupHint(),
    );
  }
}

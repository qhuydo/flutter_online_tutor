import 'package:flutter/material.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_mail_form.dart';
import 'widgets/login_button.dart';
import 'widgets/login_option_button_group.dart';
import 'widgets/signup_hint.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthenScaffold(
      form: AuthenticateByMailForm(),
      submitButton: LoginButton(),
      otherAuthenticateOptions: LoginOptionButtonGroup(),
      otherOptions: SignupHint(),
    );
  }
}

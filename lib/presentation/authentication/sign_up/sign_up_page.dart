import 'package:flutter/material.dart';

import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_mail_form.dart';
import 'widgets/login_hint.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/signup_option_button_group.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthenScaffold(
      title: 'Sign up',
      form: AuthenticateByMailForm(),
      submitButton: SignUpButton(),
      otherAuthenticateOptions: SignupOptionButtonGroup(),
      otherOptions: LoginHint(),
    );
  }
}

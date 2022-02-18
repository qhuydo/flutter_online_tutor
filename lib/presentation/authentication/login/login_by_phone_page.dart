import 'package:flutter/material.dart';

import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_phone_form.dart';
import 'widgets/login_button.dart';
import 'widgets/login_option_button_group.dart';
import 'widgets/signup_hint.dart';

class LoginByPhonePage extends StatelessWidget {
  const LoginByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthenScaffold(
      title: 'Login',
      form: AuthenticateByPhoneNumberForm(),
      submitButton: LoginButton(),
      otherAuthenticateOptions: LoginOptionButtonGroup(
        hasMailOption: true,
        hasPhoneOption: false,
      ),
      otherOptions: SignupHint(),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_phone_form.dart';
import 'widgets/login_hint.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/signup_option_button_group.dart';

class SignUpByPhonePage extends StatelessWidget {
  const SignUpByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthenScaffold(
      title: 'Sign up',
      form: AuthenticateByPhoneNumberForm(),
      submitButton: SignUpButton(),
      otherAuthenticateOptions: SignupOptionButtonGroup(
        hasMailOption: true,
        hasPhoneOption: false,
      ),
      otherOptions: LoginHint(),
    );
  }
}

import 'package:flutter/material.dart';

import 'widgets/authen_scaffold.dart';
import 'widgets/authenticate_by_phone_form.dart';
import 'widgets/login_button.dart';
import 'widgets/sign_in_option_button_group.dart';

class LoginByPhonePage extends StatelessWidget {
  const LoginByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenScaffold(
      form: const AuthenticateByPhoneNumberForm(),
      submitButton: const LoginButton(),
      otherAuthenticateOptions: const SignInOptionButtonGroup(
        hasMailOption: true,
        hasPhoneOption: false,
      ),
      otherOptions: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Not a member yet?'),
          TextButton(onPressed: () {}, child: const Text('Sign up'))
        ],
      ),
    );
  }
}

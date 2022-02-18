import 'package:flutter/material.dart';

import '../../../common/widgets/text_divider.dart';
import 'email_input.dart';
import 'forgot_password_button.dart';
import 'login_button.dart';
import 'password_input.dart';
import 'sign_in_option_button_group.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO review this logic
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth <= 500 ? screenWidth : 500;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/authentication/login_banner.png',
                width: imageWidth.toDouble(),
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const EmailInput(),
            const SizedBox(
              height: 16,
            ),
            const PasswordInput(),
            const SizedBox(
              height: 8,
            ),
            const ForgotPasswordButton(),
            const SizedBox(
              height: 8,
            ),
            const LoginButton(),
            const SizedBox(
              height: 24,
            ),
            const TextDivider(text: 'OR',),
            const SizedBox(
              height: 16,
            ),
            const SignInOptionButtonGroup(),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member yet?'),
                TextButton(onPressed: () {}, child: const Text("Sign up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

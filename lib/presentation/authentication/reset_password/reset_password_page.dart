import 'package:flutter/material.dart';

import '../widgets/authen_scaffold.dart';
import 'widgets/reset_password_button.dart';
import 'widgets/reset_password_form.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthenScaffold(
      title: 'Reset your password',
      form: ResetPasswordForm(),
      submitButton: ResetPasswordButton(),
      shouldShowForgotPasswordButton: false,
    );
  }
}

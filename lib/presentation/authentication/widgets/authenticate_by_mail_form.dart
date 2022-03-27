import 'package:flutter/material.dart';

class AuthenticateByMailForm extends StatelessWidget {
  final bool showError;

  // final VoidCallback? onEmailInputChanged;
  // final ValueChanged<String>? onPasswordInputChanged;
  // final FormFieldValidator<String>? emailValidator;
  // final FormFieldValidator<String>? passwordValidator;

  final Widget emailInput;
  final Widget passwordInput;

  const AuthenticateByMailForm({
    Key? key,
    required this.showError,
    required this.emailInput,
    required this.passwordInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode:
          showError ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        children: [
          emailInput,
          const SizedBox(height: 16),
          passwordInput,
        ],
      ),
    );
  }
}

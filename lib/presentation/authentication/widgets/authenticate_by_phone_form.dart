import 'package:flutter/material.dart';

class AuthenticateByPhoneNumberForm extends StatelessWidget {
  final bool showError;
  final Widget phoneNumberInput;
  final Widget passwordInput;

  const AuthenticateByPhoneNumberForm({
    Key? key,
    this.showError = false,
    required this.phoneNumberInput,
    required this.passwordInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode:
          showError ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        children: [
          phoneNumberInput,
          const SizedBox(height: 16),
          passwordInput,
        ],
      ),
    );
  }
}

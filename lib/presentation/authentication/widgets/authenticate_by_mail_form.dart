import 'package:flutter/material.dart';

import 'email_input.dart';
import 'password_input.dart';

class AuthenticateByMailForm extends StatelessWidget {
  const AuthenticateByMailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        EmailInput(),
        SizedBox(
          height: 16,
        ),
        PasswordInput()
      ],
    );
  }
}

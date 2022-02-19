import 'package:flutter/material.dart';

import '../../widgets/email_input.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Please provide your email address to search for your account'),
        SizedBox(height: 16,),
        EmailInput(),
      ],
    );
  }
}

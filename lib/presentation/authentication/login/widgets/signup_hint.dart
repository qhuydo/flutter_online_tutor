import 'package:flutter/material.dart';

class SignupHint extends StatelessWidget {
  const SignupHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Not a member yet?'),
        TextButton(onPressed: () {}, child: const Text('Sign up'))
      ],
    );
  }
}

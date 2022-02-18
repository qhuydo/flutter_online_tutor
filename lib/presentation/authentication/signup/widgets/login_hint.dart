import 'package:flutter/material.dart';

class LoginHint extends StatelessWidget {
  const LoginHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already had an account?'),
        TextButton(onPressed: () {}, child: const Text('Login'))
      ],
    );
  }
}

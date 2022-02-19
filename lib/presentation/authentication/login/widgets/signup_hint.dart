import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_routes.gr.dart';

class SignupHint extends StatelessWidget {
  const SignupHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Not a member yet?'),
        TextButton(onPressed: () {
          context.router.replace(const SignUpRoute());
        }, child: const Text('Sign up'))
      ],
    );
  }
}

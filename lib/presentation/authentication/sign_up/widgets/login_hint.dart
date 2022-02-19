import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_routes.gr.dart';

class LoginHint extends StatelessWidget {
  const LoginHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already had an account?'),
        TextButton(onPressed: () {
          context.router.replace(const LoginRoute());
        }, child: const Text('Login'))
      ],
    );
  }
}

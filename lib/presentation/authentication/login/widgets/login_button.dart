import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Login'),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
      ),
    );
  }
}

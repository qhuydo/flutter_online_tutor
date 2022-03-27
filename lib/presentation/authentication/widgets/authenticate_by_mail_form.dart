import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import 'email_input.dart';
import 'password_input.dart';

class AuthenticateByMailForm extends StatelessWidget {
  const AuthenticateByMailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.showError != current.showError,
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: const [
              EmailInput(),
              SizedBox(
                height: 16,
              ),
              PasswordInput()
            ],
          ),
        );
      },
    );
  }
}

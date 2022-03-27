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
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              EmailInput(
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.emailChanged(value)),
                validator: (_) =>
                    // TODO add translation
                    state.emailAddress.value.fold(
                  (f) => f.map(
                    invalidEmail: (_) => 'Invalid email',
                    empty: (_) => 'Please enter your email',
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(height: 16),
              PasswordInput(
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.passwordChanged(value)),
                // TODO add translation
                validator: (_) => state.password.value.fold(
                  (f) => f.map(
                    shortPassword: (_) => 'Short password',
                    emptyPassword: (_) => 'Please enter your password',
                  ),
                  (_) => null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

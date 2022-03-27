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
      buildWhen: (previous, current) =>
          previous.showError != current.showError ||
          previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              EmailInput(
                isEnabled: !state.isLoading,
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.emailChanged(value)),
                validator: (_) =>
                    // TODO add translation
                    context.watch<LoginBloc>().state.emailAddress.value.fold(
                          (f) => f.map(
                            invalidEmail: (_) => 'Invalid email',
                            empty: (_) => 'Please enter your email',
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 16),
              PasswordInput(
                isEnabled: !state.isLoading,
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.passwordChanged(value)),
                // TODO add translation
                validator: (_) =>
                    context.watch<LoginBloc>().state.password.value.fold(
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

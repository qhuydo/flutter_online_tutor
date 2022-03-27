import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../common/widgets/phone_number_input.dart';
import 'password_input.dart';

class AuthenticateByPhoneNumberForm extends StatelessWidget {
  const AuthenticateByPhoneNumberForm({Key? key}) : super(key: key);

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
              PhoneNumberInput(
                isEnabled: !state.isLoading,
                onChanged: (country, number) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.phoneNumberChanged(country, number)),
                // TODO add translation
                validator: (_) =>
                    context.watch<LoginBloc>().state.phoneNumber.value.fold(
                          (f) => f.map(
                            emptyValue: (_) => 'Empty value',
                            invalidPhoneNumber: (_) => 'Invalid phone number',
                            invalidCountryCode: (_) => 'Invalid phone number',
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

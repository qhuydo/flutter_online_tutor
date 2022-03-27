import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../common.dart';
import '../widgets/authen_bloc_wrapper.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_mail_form.dart';
import '../widgets/email_input.dart';
import '../widgets/password_input.dart';
import 'widgets/login_button.dart';
import 'widgets/login_option_button_group.dart';
import 'widgets/signup_hint.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthenFormBlocWrapper<LoginBloc>(
      child: _LoginPage(),
    );
  }
}

class _LoginPage extends StatelessWidget {
  const _LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.showError != current.showError,
      builder: (context, state) {
        return AuthenScaffold(
          title: context.l10n.loginButtonText,
          form: AuthenticateByMailForm(
            showError: state.showError,
            emailInput: EmailInput.withLoginBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
            passwordInput: PasswordInput.withLoginBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
          ),
          isLoading: state.isLoading,
          submitButton: LoginButton(
            isDisabled: state.isLoading,
            onPressed: () => context
                .read<LoginBloc>()
                .add(const LoginEvent.logInWithEmailAndPasswordPressed()),
          ),
          otherAuthenticateOptions: LoginOptionButtonGroup(
            isDisabled: state.isLoading,
          ),
          otherOptions: SignupHint(isDisabled: state.isLoading),
        );
      },
    );
  }
}

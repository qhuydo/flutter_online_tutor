import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../common.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_mail_form.dart';
import '../widgets/login_bloc_wrapper.dart';
import 'widgets/login_button.dart';
import 'widgets/login_option_button_group.dart';
import 'widgets/signup_hint.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginBlocWrapper(
      child: _LoginPage(),
    );
  }
}

class _LoginPage extends StatelessWidget {
  const _LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return AuthenScaffold(
          isLoading: state.isLoading,
          title: context.l10n.loginButtonText,
          form: const AuthenticateByMailForm(),
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

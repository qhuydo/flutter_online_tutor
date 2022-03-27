import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../common.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_phone_form.dart';
import '../widgets/login_bloc_wrapper.dart';
import 'widgets/login_button.dart';
import 'widgets/login_option_button_group.dart';
import 'widgets/signup_hint.dart';

class LoginByPhonePage extends StatelessWidget {
  const LoginByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginBlocWrapper(child: _LoginByPhonePage());
  }
}

class _LoginByPhonePage extends StatelessWidget {
  const _LoginByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return AuthenScaffold(
          isLoading: state.isLoading,
          title: context.l10n.loginButtonText,
          form: const AuthenticateByPhoneNumberForm(),
          submitButton: LoginButton(
            isDisabled: state.isLoading,
            onPressed: () => context
                .read<LoginBloc>()
                .add(const LoginEvent.logInWithPhoneAndPasswordPressed()),
          ),
          otherAuthenticateOptions: LoginOptionButtonGroup(
            hasMailOption: true,
            hasPhoneOption: false,
            isDisabled: state.isLoading,
          ),
          otherOptions: SignupHint(isDisabled: state.isLoading),
        );
      },
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../common.dart';
import '../../common/widgets/phone_number_input.dart';
import '../widgets/login_form_bloc_wrapper.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_phone_form.dart';
import '../widgets/password_input.dart';
import 'widgets/login_button.dart';
import 'widgets/login_option_button_group.dart';
import 'widgets/signup_hint.dart';

class LoginByPhonePage extends StatelessWidget {
  const LoginByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginFormBlocWrapper(child: _LoginByPhonePage());
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
          form: AuthenticateByPhoneNumberForm(
            showError: state.showError,
            phoneNumberInput: PhoneNumberInput.withLoginBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
            passwordInput: PasswordInput.withLoginBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
          ),
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

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/sign_up/sign_up_bloc.dart';
import '../../common.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_mail_form.dart';
import '../widgets/email_input.dart';
import '../widgets/password_input.dart';
import '../widgets/signup_form_bloc_wrapper.dart';
import 'widgets/login_hint.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/signup_option_button_group.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SignUpFormBlocWrapper(child: _SignUpPage());
  }
}

class _SignUpPage extends StatelessWidget {
  const _SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.showError != current.showError,
      builder: (context, state) {
        return AuthenScaffold(
          title: context.l10n.signUpButtonText,
          form: AuthenticateByMailForm(
            showError: state.showError,
            emailInput: EmailInput.withSignUpBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
            passwordInput: PasswordInput.withSignUpBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
          ),
          isLoading: state.isLoading,
          submitButton: SignUpButton(
            isDisabled: state.isLoading,
            onPressed: () => context
                .read<SignUpBloc>()
                .add(const SignUpEvent.signUpWithEmailAndPasswordPressed()),
          ),
          otherAuthenticateOptions: SignupOptionButtonGroup(
            isDisabled: state.isLoading,
          ),
          otherOptions: LoginHint(isDisabled: state.isLoading),
        );
      },
    );
  }
}

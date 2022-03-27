import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/sign_up/sign_up_bloc.dart';
import '../../common.dart';
import '../../common/widgets/phone_number_input.dart';
import '../widgets/authen_bloc_wrapper.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_phone_form.dart';
import '../widgets/password_input.dart';
import 'widgets/login_hint.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/signup_option_button_group.dart';

class SignUpByPhonePage extends StatelessWidget {
  const SignUpByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthenFormBlocWrapper<SignUpBloc>(
      child: _SignUpByPhonePage(),
    );
  }
}

class _SignUpByPhonePage extends StatelessWidget {
  const _SignUpByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return AuthenScaffold(
          title: context.l10n.signUpButtonText,
          isLoading: state.isLoading,
          form: AuthenticateByPhoneNumberForm(
            showError: state.showError,
            phoneNumberInput: PhoneNumberInput.withSignUpBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
            passwordInput: PasswordInput.withSignUpBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
          ),
          submitButton: SignUpButton(
            isDisabled: state.isLoading,
            onPressed: () => context
                .read<SignUpBloc>()
                .add(const SignUpEvent.signUpWithPhoneAndPasswordPressed()),
          ),
          otherAuthenticateOptions: SignupOptionButtonGroup(
            hasMailOption: true,
            hasPhoneOption: false,
            isDisabled: state.isLoading,
          ),
          otherOptions: LoginHint(isDisabled: state.isLoading),
        );
      },
    );
  }
}

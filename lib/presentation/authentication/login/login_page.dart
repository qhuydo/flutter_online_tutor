import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../../application/authentication/login/login_bloc.dart';
import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/authenticate_by_mail_form.dart';
import 'widgets/login_button.dart';
import 'widgets/login_option_button_group.dart';
import 'widgets/signup_hint.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      child: const _LoginPage(),
    );
  }
}

class _LoginPage extends StatelessWidget {
  const _LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            // TODO add translation
            (failure) => FlushbarHelper.createError(
              message: failure.maybeMap(
                wrongEmailOrPassword: (_) => 'Wrong email or password',
                wrongPhoneNumberOrPassword: (_) =>
                    'Wrong phone number or password',
                noConnection: (_) => 'No internet connection',
                serverError: (_) => 'Server error',
                orElse: () => '',
              ),
            ).show(context),

            (succeed) {
              context.replaceRoute(const HomeRoute());
              context.read<AuthenticationBloc>().add(
                const AuthenticationEvent.authCheckRequested(),
              );
            },
          ),
        );
      },
      child: AuthenScaffold(
        title: context.l10n.loginButtonText,
        form: const AuthenticateByMailForm(),
        submitButton: LoginButton(
          onPressed: () => context
              .read<LoginBloc>()
              .add(const LoginEvent.logInWithEmailAndPasswordPressed()),
        ),
        otherAuthenticateOptions: const LoginOptionButtonGroup(),
        otherOptions: const SignupHint(),
      ),
    );
  }
}

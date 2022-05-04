import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../../application/authentication/login/login_bloc.dart';
import '../../../di/dependency_injection.dart';
import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../common/l10n/failure_display_texts.dart';
import 'verify_account_url_listener.dart';

class LoginFormBlocWrapper extends StatelessWidget {
  final Widget child;

  const LoginFormBlocWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerifyAccountUrlListener(
      child: BlocProvider(
        create: (context) => getIt<LoginBloc>(),
        child: _LoginFormBlocPage(child: child),
      ),
    );
  }
}

class _LoginFormBlocPage extends StatelessWidget {
  final Widget child;

  const _LoginFormBlocPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (AuthenticationFailure failure) => failure.showError(context),
            (succeed) {
              context.read<AuthenticationBloc>().add(
                    const AuthenticationEvent.authCheckRequested(),
                  );
            },
          ),
        );
      },
      child: child,
    );
  }
}

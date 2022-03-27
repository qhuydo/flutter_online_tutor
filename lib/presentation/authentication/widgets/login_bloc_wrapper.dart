import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../../application/authentication/login/login_bloc.dart';
import '../../../di/dependency_injection.dart';
import '../../common/routes/app_routes.gr.dart';

class LoginBlocWrapper extends StatelessWidget {
  final Widget child;

  const LoginBlocWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      child: _LoginBlocPage(child: child),
    );
  }
}

class _LoginBlocPage extends StatelessWidget {
  final Widget child;

  const _LoginBlocPage({
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
      child: child,
    );
  }
}

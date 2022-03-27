import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../../di/dependency_injection.dart';
import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../common/utils/flushbar_utils.dart';

class AuthenFormBlocWrapper<B extends Bloc> extends StatelessWidget {
  final Widget child;

  const AuthenFormBlocWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<B>(),
      child: _AuthenFormBlocPage<B>(child: child),
    );
  }
}

class _AuthenFormBlocPage<B extends Bloc> extends StatelessWidget {
  final Widget child;

  const _AuthenFormBlocPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, dynamic>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            // TODO add translation
            (AuthenticationFailure failure) => FlushBarUtils.createError(
              message: failure.map(
                wrongEmailOrPassword: (_) => 'Wrong email or password',
                wrongPhoneNumberOrPassword: (_) =>
                    'Wrong phone number or password',
                noConnection: (_) => 'No internet connection',
                serverError: (_) => 'Server error',
                alreadySignedOut: (_) => 'Already signed out',
                emailAlreadyTaken: (_) => 'Email is already taken',
                phoneNumberAlreadyTaken: (_) => 'Phone number is already taken',
                emailNotExist: (_) => 'Email does not exist, please register '
                    'new account',
              ),
              duration: const Duration(
                seconds: 30,
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

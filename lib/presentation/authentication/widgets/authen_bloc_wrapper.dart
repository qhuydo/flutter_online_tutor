import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../../di/dependency_injection.dart';
import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../common/routes/app_routes.gr.dart';
import '../helpers/authentication_failure_extension.dart';

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
            (AuthenticationFailure failure) => failure.showError(context),
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

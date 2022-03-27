import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../routes/app_routes.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (state) {
            context.replaceRoute(const HomeRoute());
          },
          unauthenticated: (_) {
            context.replaceRoute(const LoginRoute());
          },
        );
      },
      child: const _SplashPage(),
    );
  }
}

class _SplashPage extends StatelessWidget {
  const _SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}

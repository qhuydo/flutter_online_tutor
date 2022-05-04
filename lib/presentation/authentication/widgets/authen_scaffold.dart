import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';
import 'authen_scaffold_body.dart';
import 'authen_scaffold_body_desktop.dart';

class AuthenScaffold extends StatelessWidget {
  final Widget form;
  final Widget submitButton;
  final Widget? otherAuthenticateOptions;
  final Widget? otherOptions;
  final String title;
  final bool shouldShowForgotPasswordButton;
  final bool isLoading;

  const AuthenScaffold({
    Key? key,
    required this.title,
    required this.form,
    required this.submitButton,
    this.otherAuthenticateOptions,
    this.otherOptions,
    this.shouldShowForgotPasswordButton = true,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (state) {
            context.replaceRoute(const HomeRoute());
          },
          unauthenticated: (_) {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: [
            IconButton(
              onPressed: () => context.pushRoute(
                const SettingsUnauthorizedRoute(),
              ),
              icon: const Icon(Icons.settings_outlined),
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (_, constraints) {
            if (constraints.maxWidth > 900) {
              return AuthenScaffoldBodyDesktop(
                title: title,
                form: form,
                submitButton: submitButton,
                otherAuthenticateOptions: otherAuthenticateOptions,
                otherOptions: otherOptions,
                shouldShowForgotPasswordButton: shouldShowForgotPasswordButton,
                isLoading: isLoading,
              );
            }

            return AuthenScaffoldBody(
              title: title,
              form: form,
              submitButton: submitButton,
              otherAuthenticateOptions: otherAuthenticateOptions,
              otherOptions: otherOptions,
              shouldShowForgotPasswordButton: shouldShowForgotPasswordButton,
              isLoading: isLoading,
            );
          },
        ),
      ),
    );
  }
}

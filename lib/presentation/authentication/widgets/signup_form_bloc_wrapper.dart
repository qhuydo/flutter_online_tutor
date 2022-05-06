import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twemoji/twemoji.dart';

import '../../../application/authentication/sign_up/sign_up_bloc.dart';
import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../common.dart';
import '../../common/l10n/failure_display_texts.dart';
import '../../common/routes/app_routes.gr.dart';
import 'verify_account_url_listener.dart';

class SignUpFormBlocWrapper extends StatelessWidget {
  final Widget child;

  const SignUpFormBlocWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerifyAccountUrlListener(
      child: BlocProvider(
        create: (context) => getIt<SignUpBloc>(),
        child: _SignUpFormBlocPage(child: child),
      ),
    );
  }
}

class _SignUpFormBlocPage extends StatelessWidget {
  final Widget child;

  const _SignUpFormBlocPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (AuthenticationFailure failure) => failure.showError(context),
            (succeed) async {
              await showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(context.l10n.signUpButtonText),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Twemoji(emoji: '✅', height: 60, width: 60),
                      Text(context.l10n.verifyAccountNotice),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(context.l10n.okButton),
                    ),
                  ],
                ),
              );

              context.replaceRoute(const LoginRoute());
            },
          ),
        );
      },
      child: child,
    );
  }
}

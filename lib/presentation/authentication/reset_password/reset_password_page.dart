import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/reset_password/reset_password_bloc.dart';
import '../../common.dart';
import '../helpers/authentication_failure_extension.dart';
import '../widgets/authen_scaffold.dart';
import '../widgets/email_input.dart';
import 'widgets/reset_password_button.dart';
import 'widgets/reset_password_form.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
      create: (context) => getIt<ResetPasswordBloc>(),
      child: const _ResetPasswordPage(),
    );
  }
}

class _ResetPasswordPage extends StatelessWidget {
  const _ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                  (failure) => failure.showError(context),
                  (succeed) => showSucceedDialog(context),
                ));
      },
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.showError != current.showError,
      builder: (context, state) {
        return AuthenScaffold(
          title: context.l10n.resetPassword,
          isLoading: state.isLoading,
          form: ResetPasswordForm(
            showError: state.showError,
            emailInput: EmailInput.withResetPasswordBloc(
              context: context,
              isEnabled: !state.isLoading,
            ),
          ),
          submitButton: ResetPasswordButton(
            isDisabled: state.isLoading,
            onPressed: () => context
                .read<ResetPasswordBloc>()
                .add(const ResetPasswordEvent.buttonPressed()),
          ),
          shouldShowForgotPasswordButton: false,
        );
      },
    );
  }

  void showSucceedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(context.l10n.resetPasswordDialogTitle),
        content: Text(context.l10n.resetPasswordContent('12345678')),
        actions: [
          TextButton(
            onPressed: () {
              context.router.popUntilRoot();
            },
            child: Text(context.l10n.okButton, textAlign: TextAlign.end),
          ),
        ],
      ),
    ).then((_) => context.router.popUntilRoot());
  }
}

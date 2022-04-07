import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../../application/authentication/reset_password/reset_password_bloc.dart';
import '../../../application/authentication/sign_up/sign_up_bloc.dart';
import '../../../domain/authentication/failures/email_failure.dart';
import '../../common.dart';

class EmailInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool isEnabled;

  const EmailInput({
    Key? key,
    this.onChanged,
    this.validator,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: context.l10n.emailLabel,
        hintText: context.l10n.emailTextBoxHint,
        border: const OutlineInputBorder(),
      ),
      enabled: isEnabled,
      onChanged: onChanged,
      validator: validator,
    );
  }

  factory EmailInput.withLoginBloc({
    required BuildContext context,
    isEnabled = true,
  }) =>
      EmailInput(
        isEnabled: isEnabled,
        onChanged: (value) => context.read<LoginBloc>().add(
              LoginEvent.emailChanged(value),
            ),
        validator: (_) =>
            context.watch<LoginBloc>().state.emailAddress.value.fold(
                  (f) => f.toErrorMsg(context),
                  (_) => null,
                ),
      );

  factory EmailInput.withSignUpBloc({
    required BuildContext context,
    isEnabled = true,
  }) =>
      EmailInput(
        isEnabled: isEnabled,
        onChanged: (value) => context.read<SignUpBloc>().add(
              SignUpEvent.emailChanged(value),
            ),
        validator: (_) =>
            context.watch<SignUpBloc>().state.emailAddress.value.fold(
                  (f) => f.toErrorMsg(context),
                  (_) => null,
                ),
      );

  factory EmailInput.withResetPasswordBloc({
    required BuildContext context,
    isEnabled = true,
  }) =>
      EmailInput(
        isEnabled: isEnabled,
        onChanged: (value) => context.read<ResetPasswordBloc>().add(
              ResetPasswordEvent.emailChanged(value),
            ),
        validator: (_) =>
            context.watch<ResetPasswordBloc>().state.emailAddress.value.fold(
                  (f) => f.toErrorMsg(context),
                  (_) => null,
                ),
      );
}

extension EmailFailureX on EmailFailure {
  String toErrorMsg(BuildContext context) => map(
        invalidEmail: (_) => context.l10n.emailFailureInvalidEmail,
        empty: (_) => context.l10n.emailFailureEmptyValue,
      );
}

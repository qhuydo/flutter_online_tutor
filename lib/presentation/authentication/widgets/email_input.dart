import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
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
            // TODO add translation
            context.watch<LoginBloc>().state.emailAddress.value.fold(
                  (f) => f.toErrorMsg(),
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
            // TODO add translation
            context.watch<SignUpBloc>().state.emailAddress.value.fold(
                  (f) => f.toErrorMsg(),
                  (_) => null,
                ),
      );
}

extension EmailFailureX on EmailFailure {
  String toErrorMsg() => map(
        invalidEmail: (_) => 'Invalid email',
        empty: (_) => 'Please enter your email',
      );
}

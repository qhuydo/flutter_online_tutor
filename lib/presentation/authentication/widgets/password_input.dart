import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../../application/authentication/sign_up/sign_up_bloc.dart';
import '../../../domain/authentication/failures/password_failure.dart';
import '../../common.dart';

class PasswordInput extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool isEnabled;

  const PasswordInput({
    Key? key,
    this.labelText,
    this.hintText,
    this.onChanged,
    this.validator,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();

  factory PasswordInput.withLoginBloc({
    required BuildContext context,
    isEnabled = true,
  }) =>
      PasswordInput(
        isEnabled: isEnabled,
        onChanged: (value) =>
            context.read<LoginBloc>().add(LoginEvent.passwordChanged(value)),
        // TODO add translation
        validator: (_) => context.watch<LoginBloc>().state.password.value.fold(
              (f) => f.toMsg(),
              (_) => null,
            ),
      );

  factory PasswordInput.withSignUpBloc({
    required BuildContext context,
    isEnabled = true,
  }) =>
      PasswordInput(
        isEnabled: isEnabled,
        onChanged: (value) => context.read<SignUpBloc>().add(
              SignUpEvent.passwordChanged(value),
            ),
        // TODO add translation
        validator: (_) => context.watch<SignUpBloc>().state.password.value.fold(
              (f) => f.toMsg(),
              (_) => null,
            ),
      );
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isEnabled ? _obscureText : true,
      decoration: InputDecoration(
        labelText: widget.labelText ?? context.l10n.passwordLabel,
        hintText: widget.hintText ?? context.l10n.passwordTextBoxHint,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: const OutlineInputBorder(),
        // filled: true,
        suffixIcon: GestureDetector(
          dragStartBehavior: DragStartBehavior.down,
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            semanticLabel: _obscureText
                ? context.l10n.showPassword
                : context.l10n.hidePassword,
          ),
        ),
      ),
      onChanged: widget.onChanged,
      validator: widget.validator,
      enabled: widget.isEnabled,
    );
  }
}

extension PasswordFailureX on PasswordFailure {
  String toMsg() => map(
        shortPassword: (_) => 'Short password',
        emptyPassword: (_) => 'Please enter your password',
        wrongCurrentPassword: (_) => 'Wrong current password',
        wrongNewPassword: (_) => 'Wrong new password',
      );
}

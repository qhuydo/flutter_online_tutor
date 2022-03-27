import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../common.dart';

class PasswordInput extends StatefulWidget {
  final String? labelText;
  final String? hintText;

  const PasswordInput({
    Key? key,
    this.labelText,
    this.hintText,
  }) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
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
      onChanged: (value) =>
          context.read<LoginBloc>().add(LoginEvent.passwordChanged(value)),
      // TODO add translation
      validator: (_) => context.watch<LoginBloc>().state.password.value.fold(
            (f) => f.map(
              shortPassword: (_) => 'Short password',
              emptyPassword: (_) => 'Please enter your password',
            ),
            (_) => null,
          ),
    );
  }
}

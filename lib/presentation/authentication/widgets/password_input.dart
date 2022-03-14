import 'package:flutter/gestures.dart';
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
        labelText:
            widget.labelText ?? context.l10n.passwordLabel,
        hintText: widget.hintText ??
            context.l10n.passwordTextBoxHint,
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
    );
  }
}

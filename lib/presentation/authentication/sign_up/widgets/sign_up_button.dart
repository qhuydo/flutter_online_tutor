import '../../../common.dart';
import '../../widgets/submit_button.dart';

class SignUpButton extends SubmitButton {
  const SignUpButton({
    Key? key,
    VoidCallback? onPressed,
    isDisabled = false,
  }) : super(key: key, onPressed: onPressed, isDisabled: isDisabled);

  @override
  String getText(BuildContext context) {
    return context.l10n.signUpButtonText;
  }
}

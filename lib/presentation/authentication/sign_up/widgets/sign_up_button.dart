import '../../../common.dart';
import '../../widgets/submit_button.dart';

class SignUpButton extends SubmitButton {
  const SignUpButton({
    Key? key,
    VoidCallback? onPressed,
  }) : super(key: key, onPressed: onPressed);

  @override
  String getText(BuildContext context) {
    return context.l10n.signUpButtonText;
  }
}

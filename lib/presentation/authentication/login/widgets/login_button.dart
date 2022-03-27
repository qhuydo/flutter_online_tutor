import '../../../common.dart';
import '../../widgets/submit_button.dart';

class LoginButton extends SubmitButton {
  const LoginButton({
    Key? key,
    VoidCallback? onPressed,
  }) : super(key: key, onPressed: onPressed);

  @override
  String getText(BuildContext context) {
    return context.l10n.loginButtonText;
  }
}

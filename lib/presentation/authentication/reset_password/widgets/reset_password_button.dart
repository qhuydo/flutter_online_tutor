import '../../../common.dart';
import '../../widgets/submit_button.dart';

class ResetPasswordButton extends SubmitButton {
  const ResetPasswordButton({
    Key? key,
    VoidCallback? onPressed,
  }) : super(key: key, onPressed: onPressed);

  @override
  String getText(BuildContext context) {
    return context.l10n.resetPasswordButtonText;
  }
}

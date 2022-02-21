import '../../widgets/submit_button.dart';
import '../../../common.dart';

class ResetPasswordButton extends SubmitButton {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  void onPressed(BuildContext context) {
    // TODO: implement onPressed
  }

  @override
  String getText(BuildContext context) {
    return AppLocalizations.of(context)!.resetPasswordButtonText;
  }
}

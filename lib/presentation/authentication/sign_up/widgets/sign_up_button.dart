import '../../../common.dart';
import '../../widgets/submit_button.dart';

class SignUpButton extends SubmitButton {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  void onPressed(BuildContext context) {
    // TODO: implement onPressed
  }

  @override
  String getText(BuildContext context) {
    return AppLocalizations.of(context)!.signUpButtonText;
  }
}

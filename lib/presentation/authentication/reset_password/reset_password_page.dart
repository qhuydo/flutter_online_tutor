import '../../common.dart';
import '../widgets/authen_scaffold.dart';
import 'widgets/reset_password_button.dart';
import 'widgets/reset_password_form.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenScaffold(
      title: context.l10n.resetPassword,
      form: const ResetPasswordForm(),
      submitButton: const ResetPasswordButton(),
      shouldShowForgotPasswordButton: false,
    );
  }
}

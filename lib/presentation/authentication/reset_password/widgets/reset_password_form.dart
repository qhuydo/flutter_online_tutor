import '../../../common.dart';
import '../../widgets/email_input.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(context.l10n.resetPasswordDescription),
        const SizedBox(
          height: 16,
        ),
        const EmailInput(),
      ],
    );
  }
}

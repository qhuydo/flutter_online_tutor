import '../../../common.dart';

class ResetPasswordForm extends StatelessWidget {
  final bool showError;
  final Widget emailInput;

  const ResetPasswordForm({
    Key? key,
    required this.showError,
    required this.emailInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode:
          showError ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        children: [
          Text(context.l10n.resetPasswordDescription),
          const SizedBox(height: 16),
          emailInput,
        ],
      ),
    );
  }
}

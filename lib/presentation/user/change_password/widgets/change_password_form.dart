import '../../../common.dart';
import '../../../authentication/widgets/password_input.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({Key? key}) : super(key: key);

  static const rowSpacing = 16.0;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            PasswordInput(
              labelText:
                  context.l10n.currentPasswordTextBoxLabel,
            ),
            const SizedBox(height: rowSpacing),
            PasswordInput(
              labelText: context.l10n.newPasswordTextBoxLabel,
            ),
            const SizedBox(height: rowSpacing),
            PasswordInput(
              labelText:
                  context.l10n.confirmPasswordTextBoxLabel,
              hintText:
                  context.l10n.confirmPasswordTextBoxHint,
            ),
            const SizedBox(height: rowSpacing),
            ElevatedButton.icon(
              icon: const Icon(Icons.save_outlined),
              onPressed: () {},
              label: Text(
                context.l10n.saveButtonLabel,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(56),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

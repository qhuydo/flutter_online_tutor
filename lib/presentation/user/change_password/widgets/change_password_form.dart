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
                  AppLocalizations.of(context)!.currentPasswordTextBoxLabel,
            ),
            const SizedBox(height: rowSpacing),
            PasswordInput(
              labelText: AppLocalizations.of(context)!.newPasswordTextBoxLabel,
            ),
            const SizedBox(height: rowSpacing),
            PasswordInput(
              labelText:
                  AppLocalizations.of(context)!.confirmPasswordTextBoxLabel,
              hintText:
                  AppLocalizations.of(context)!.confirmPasswordTextBoxHint,
            ),
            const SizedBox(height: rowSpacing),
            ElevatedButton.icon(
              icon: const Icon(Icons.save_outlined),
              onPressed: () {},
              label: Text(
                AppLocalizations.of(context)!.saveButtonLabel,
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

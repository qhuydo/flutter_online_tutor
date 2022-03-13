import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/change_password_form.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        shouldShowDefaultActions: false,
        title: AppLocalizations.of(context)!.changePasswordLabel,
      ),
      body: const SafeArea(child: ChangePasswordForm()),
    );
  }
}

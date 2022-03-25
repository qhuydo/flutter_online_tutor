import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.editProfileLabel,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ProfileAvatar(),
            SizedBox(height: 16),
            EditProfileForm(),
          ],
        ),
      ),
    );
  }
}

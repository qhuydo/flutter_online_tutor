import '../../common.dart';

import '../../utils/default_app_bar.dart';
import 'widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.settingsBottomNavItem,
        shouldShowDefaultActions: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                UserSettingsCard(),
                SizedBox(height: 8),
                AppSettingsCard(),
                SizedBox(height: 8),
                InfoCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

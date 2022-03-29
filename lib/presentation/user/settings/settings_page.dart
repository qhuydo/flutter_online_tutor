import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const _items = [
    UserSettingsCard(),
    AppSettingsCard(),
    InfoCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.settingsBottomNavItem,
        shouldShowDefaultActions: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AlignedGridView.extent(
              shrinkWrap: true,
              maxCrossAxisExtent: 600,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              itemCount: _items.length,
              itemBuilder: (BuildContext context, int index) {
                return _items[index];
              },
            ),
          ),
        ),
      ),
    );
  }
}

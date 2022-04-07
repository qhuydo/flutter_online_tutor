import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/app_settings_card.dart';

class SettingsUnauthorizedPage extends StatelessWidget {
  const SettingsUnauthorizedPage({Key? key}) : super(key: key);

  static const _items = [
    AppSettingsCard(),
    // InfoCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.settingsBottomNavItem,
        shouldShowDefaultActions: false,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: smallItemSpacing),
        child: AlignedGridView.extent(
          maxCrossAxisExtent: 600,
          crossAxisSpacing: smallItemSpacing,
          mainAxisSpacing: smallItemSpacing,
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            return _items[index];
          },
        ),
      ),
    );
  }
}

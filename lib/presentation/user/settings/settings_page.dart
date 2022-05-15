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
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(smallItemSpacing),
        child: SafeArea(
          child: AlignedGridView.extent(
            shrinkWrap: true,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            maxCrossAxisExtent: 750,
            crossAxisSpacing: smallItemSpacing,
            mainAxisSpacing: smallItemSpacing,
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) {
              return _items[index];
            },
          ),
        ),
      ),
    );
  }
}

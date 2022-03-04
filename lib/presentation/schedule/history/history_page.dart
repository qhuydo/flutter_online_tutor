import '../../common.dart';

import '../../utils/default_app_bar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
        title: AppLocalizations.of(context)!.historyTitle,
      ),
    );
  }
}

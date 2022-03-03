import 'package:auto_route/auto_route.dart';
import 'package:twemoji/twemoji.dart';

import '../../common.dart';

class BecomeTutorStep3 extends StatelessWidget {
  const BecomeTutorStep3({Key? key}) : super(key: key);
  static const itemSpacing = 16.0;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.approvalStepLabel,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          const Center(
            child: Twemoji(
              emoji: '📋',
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: itemSpacing),
          Center(
            child: Text(AppLocalizations.of(context)!.approvalStepDescriptionTitle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: itemSpacing),
          Center(
            child: OutlinedButton.icon(
              icon: const Icon(Icons.navigate_before),
              label: Text(AppLocalizations.of(context)!.backButtonText),
              onPressed: () {
                context.router.pop();
              },
            ),
          )
        ],
      ),
    );
  }
}

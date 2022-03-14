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
            context.l10n.approvalStepLabel,
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
            child: Text(context.l10n.approvalStepDescriptionTitle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: itemSpacing),
          Center(
            child: OutlinedButton.icon(
              icon: const Icon(Icons.navigate_before),
              label: Text(context.l10n.backButtonText),
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

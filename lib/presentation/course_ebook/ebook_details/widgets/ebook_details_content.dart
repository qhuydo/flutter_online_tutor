import 'package:url_launcher/url_launcher.dart';

import '../../../../domain/course_ebook/models/ebook.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/flushbar_utils.dart';
import '../../../user/profile/widgets/level_form_dropdown.dart';

class EbookDetailsContent extends StatelessWidget {
  final Ebook ebook;

  const EbookDetailsContent({
    Key? key,
    required this.ebook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ebook.name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: smallItemSpacing),
        Center(
          child: ElevatedButton.icon(
            onPressed: () async {
              if (await canLaunch(ebook.fileUrl)) {
                await launch(ebook.fileUrl);
              } else {
                FlushBarUtils.createError(
                  message: context.l10n.unableToOpenBrowser,
                ).show(context);
              }
            },
            icon: const Icon(
              Icons.open_in_new,
            ),
            label: Text(AppLocalizations.of(context)!.openEbookButtonText),
          ),
        ),
        const SizedBox(height: smallItemSpacing),
        Text(
          context.l10n.overviewTitleText,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: smallItemSpacing),
        Text(ebook.description),
        const SizedBox(height: smallItemSpacing),
        Text(
          context.l10n.experienceLevelTitle,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Theme.of(context).textTheme.caption?.color,
              ),
        ),
        Text(ebook.level.toDisplayString(context)),
      ],
    );
  }
}

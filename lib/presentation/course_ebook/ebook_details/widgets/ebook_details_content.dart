import '../../../../domain/course_ebook/models/ebook.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/level_extension.dart';
import 'open_ebook_button.dart';

class EbookDetailsContent extends StatelessWidget {
  final Ebook ebook;
  final bool showButton;

  const EbookDetailsContent({
    Key? key,
    required this.ebook,
    this.showButton = true,
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
        if (showButton) ...[
          const SizedBox(height: smallItemSpacing),
          OpenEbookButton(url: ebook.fileUrl),
        ],
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

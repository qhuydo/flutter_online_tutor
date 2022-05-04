import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/info_container.dart';

class CvSection extends StatelessWidget {
  const CvSection({Key? key}) : super(key: key);
  static const _defaultSpacingSizedBox = SizedBox(height: itemSpacing);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(context.l10n.cvLabel, style: titleStyle),
        const Divider(),
        _defaultSpacingSizedBox,
        Text(context.l10n.cvInfoNotice),
        _defaultSpacingSizedBox,
        InfoContainer(child: Text(context.l10n.protectPrivacyNotice)),
        _defaultSpacingSizedBox,
        TextFormField(
          minLines: 3,
          maxLines: 15,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            icon: const Icon(Icons.interests_outlined),
            labelText: context.l10n.interestTextBoxLabel,
            hintText: context.l10n.interestTextBoxHint,
          ),
        ),
        _defaultSpacingSizedBox,
        TextFormField(
          minLines: 3,
          maxLines: 15,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            icon: const Icon(Icons.history_edu_outlined),
            labelText: context.l10n.academicLevelTextBoxLabel,
            hintText: context.l10n.academicLevelTextBoxHint,
          ),
        ),
        _defaultSpacingSizedBox,
        TextFormField(
          minLines: 3,
          maxLines: 15,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            icon: const Icon(IconData(0)),
            labelText: context.l10n.experienceTextBoxLabel,
          ),
        ),
        _defaultSpacingSizedBox,
        TextFormField(
          minLines: 1,
          maxLines: 5,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            icon: const Icon(Icons.work_outline),
            labelText: context.l10n.professionTextBoxLabel,
          ),
        ),
      ],
    );
  }
}

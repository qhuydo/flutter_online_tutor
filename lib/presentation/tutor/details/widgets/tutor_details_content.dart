import '../../../common.dart';
import 'language_list.dart';
import 'speciality_list.dart';
import 'video_preview.dart';

class TutorDetailsContent extends StatelessWidget {
  static const itemSpacing = 16.0;

  const TutorDetailsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.loremIpsum,
          ),
          const SizedBox(height: itemSpacing),
          const VideoPreview(),
          const SizedBox(height: itemSpacing),
          // language
          Text(
            AppLocalizations.of(context)!.languageLabel,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          const LanguageList(),
          const SizedBox(height: itemSpacing),
          // specialities
          Text(
            AppLocalizations.of(context)!.specialitiesDropdown,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          const SpecialityList(),
          const SizedBox(height: itemSpacing),
          // interests
          Text(
            AppLocalizations.of(context)!.interestTextBoxLabel,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          Text(
            AppLocalizations.of(context)!.loremIpsum,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: itemSpacing),
          // experience
          Text(
            AppLocalizations.of(context)!.experienceTextBoxLabel,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          Text(
            AppLocalizations.of(context)!.loremIpsum,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: itemSpacing),
        ],
      ),
    );
  }
}

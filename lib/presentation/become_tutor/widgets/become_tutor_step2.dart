import '../../common.dart';

import '../../common/widgets/info_container.dart';

class BecomeTutorStep2 extends StatelessWidget {
  const BecomeTutorStep2({Key? key}) : super(key: key);
  static const itemSpacing = 16.0;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.introductionVideoStepTitle,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 600,
                maxWidth: 600,
              ),
              child: InfoContainer(
                child: Text(
                  AppLocalizations.of(context)!.introductionVideoStepTipsLabel,
                ),
              ),
            ),
          ),
          const SizedBox(height: itemSpacing),
          Center(
            child: ElevatedButton.icon(
              icon: const Icon(Icons.video_library_outlined),
              label: Text(AppLocalizations.of(context)!.chooseVideoButtonText),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

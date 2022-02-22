import '../../common.dart';
import 'tutor_card_action_buttons.dart';
import 'tutor_card_header.dart';
import 'widgets.dart';

class TutorCard extends StatelessWidget {
  const TutorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TutorCardHeader(),
              const SizedBox(height: 8),
              const TopicList(),
              const SizedBox(height: 8),
              Text(
                AppLocalizations.of(context)!.loremIpsum,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(height: 16),
              const TutorCardActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

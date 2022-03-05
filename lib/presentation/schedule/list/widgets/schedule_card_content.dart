import '../../../../utils/constants.dart';
import '../../../common.dart';

class ScheduleCardContent extends StatelessWidget {
  const ScheduleCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      color: lightTheme
          ? Colors.grey[100]?.withOpacity(0.95)
          : Colors.grey[100]?.withOpacity(0.05),
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      // padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.lessonTimeDescription,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  '10:00 - 12:00',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 8),
          ListView(
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ExpansionTile(
                childrenPadding: const EdgeInsets.symmetric(
                  horizontal: itemSpacing,
                  vertical: smallItemSpacing,
                ),
                leading: const Icon(Icons.event),
                title: Text(
                  AppLocalizations.of(context)!.requestForLessonLabel,
                ),
                children: [
                  Text(
                    AppLocalizations.of(context)!.loremIpsum,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

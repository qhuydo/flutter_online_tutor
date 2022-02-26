import 'package:twemoji/twemoji.dart';

import '../../common.dart';
import '../../tutor/widgets/tutor_avatar.dart';
import '../../utils/string_utils.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lightTheme = Theme.of(context).brightness == Brightness.light;
    return Card(
      color: lightTheme
          ? Colors.grey[100]?.withOpacity(0.9)
          : Colors.grey[100]?.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  'Sunday, 27/02/2022',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: const TutorAvatar(),
            title: Text(
              'Nguyen Van A',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            subtitle: Text(
              'Vietnam',
              style: Theme.of(context).textTheme.caption,
            ),
            trailing: Twemoji(
              emoji: 'VN'.toCountryFlagFromCountryCode(),
              width: 44,
              height: 44,
            ),
          ),
          Container(
            color: lightTheme
                ? Colors.grey[100]?.withOpacity(0.95)
                : Colors.grey[100]?.withOpacity(0.05),
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Lesson time: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '10:00 - 12:00',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
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
                      leading: const Icon(Icons.event),
                      title: const Text('Request for lesson'),
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.end,
              alignment: WrapAlignment.end,
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel),
                  label: const Text('Cancel'),
                ),

                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline),
                  label: Text(
                    AppLocalizations.of(context)!.chatButtonText,
                  ),
                ),

                // MaterialButton(
                //   onPressed: () {},
                //   shape: StadiumBorder(
                //     side: BorderSide(
                //       width: 1.25,
                //       color: Theme.of(context).iconTheme.color ?? Colors.black,
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: const [
                //       Icon(Icons.cancel),
                //       SizedBox(width: 4),
                //       Text(
                //         'Cancel'
                //       ),
                //     ],
                //   ),
                // ),

                // MaterialButton(
                //   onPressed: () {},
                //   shape: StadiumBorder(
                //     side: BorderSide(
                //       width: 1.25,
                //       color: Theme.of(context).iconTheme.color ?? Colors.black,
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       const Icon(Icons.chat_bubble_outline),
                //       const SizedBox(width: 4),
                //       Text(
                //         AppLocalizations.of(context)!.chatButtonText,
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

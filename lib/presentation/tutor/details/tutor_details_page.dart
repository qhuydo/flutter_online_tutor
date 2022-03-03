import 'package:auto_route/auto_route.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:twemoji/twemoji.dart';

import '../../common.dart';
import '../../course_ebook/widgets/course_list_card.dart';
import '../../utils/default_app_bar.dart';
import '../../utils/string_utils.dart';
import '../list/widgets/topic_chip.dart';

class TutorDetailsPage extends StatelessWidget {
  final String tutorId;

  const TutorDetailsPage({
    Key? key,
    @PathParam('tutorId') required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.tutorDetailsPageTitle,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        minRadius: 40,
                        maxRadius: 60,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Nguyen Van A',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                // spacing: 16,
                children: [
                  RatingBarIndicator(
                    rating: 5,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 12,
                    direction: Axis.horizontal,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '(16)',
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  // const SizedBox(width: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1.25,
                        width: 1.25,
                      ),
                    ),
                  ),
                  Text(
                    'Україна',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(width: 8),
                  Twemoji(
                    emoji: 'UA'.toCountryFlagFromCountryCode(),
                    width: 44,
                    height: 44,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width,
                ),
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runAlignment: WrapAlignment.center,
                  runSpacing: 8,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Wrap(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.favorite_border_outlined),
                          Text(
                            AppLocalizations.of(context)!
                                .favouriteButtonIconText,
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 0, color: Colors.transparent),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Wrap(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.message_outlined),
                          Text(
                            AppLocalizations.of(context)!.chatButtonText,
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 0, color: Colors.transparent),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Wrap(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.star_outline),
                          Text(
                            AppLocalizations.of(context)!.viewReviewButtonText,
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 0, color: Colors.transparent),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Wrap(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.report_gmailerrorred),
                          Text(
                            AppLocalizations.of(context)!.reportIconButtonText,
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 0, color: Colors.transparent),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.calendar_today),
                  label: Text(
                    AppLocalizations.of(context)!.bookButtonText,
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(600, 44),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.loremIpsum,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[400]?.withOpacity(0.2),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: const Icon(
                      Icons.play_circle_filled,
                      size: 69,
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppLocalizations.of(context)!.languageLabel,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    spacing: 8,
                    children: [
                      Chip(
                        label: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 4,
                          children: [
                            Twemoji(emoji: 'VN'.toCountryFlagFromCountryCode()),
                            const Text('Vietnam'),
                          ],
                        ),
                      ),
                      Chip(
                        label: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 4,
                          children: [
                            Twemoji(emoji: 'UA'.toCountryFlagFromCountryCode()),
                            const Text('Ukrainian'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppLocalizations.of(context)!.specialitiesDropdown,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    spacing: 8,
                    children: const [TopicChip(), TopicChip()],
                  ),
                ),
              ),
              // const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppLocalizations.of(context)!.interestTextBoxLabel,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.loremIpsum,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppLocalizations.of(context)!.experienceTextBoxLabel,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.loremIpsum,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppLocalizations.of(context)!.recommendedCourses,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const Divider(),
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const CourseListCard();
                },
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  childAspectRatio: 1 / 1.25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

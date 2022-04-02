import '../../../../domain/course_ebook/models/course_topic.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import 'syllabus_list_item.dart';

class Syllabus extends StatelessWidget {
  final List<CourseTopic> syllabus;

  const Syllabus({
    Key? key,
    required this.syllabus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        itemSpacing,
        0,
        itemSpacing,
        itemSpacing,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.syllabusTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.start,
          ),
          ListView.separated(
            padding: const EdgeInsets.all(0),
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) => SyllabusListItem(
              item: syllabus[index]
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: syllabus.length,
          ),
        ],
      ),
    );
  }
}

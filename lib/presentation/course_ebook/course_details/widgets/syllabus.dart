import '../../../common/utils/constants.dart';
import '../../../common.dart';
import 'syllabus_list_item.dart';

class Syllabus extends StatelessWidget {
  static final syllabus = [
    SyllabusItem(
      name: 'Foods you love',
      canPreview: true,
      orderCourse: 0,
    ),
    SyllabusItem(
      name: 'Your job',
      canPreview: false,
      orderCourse: 1,
    ),
    SyllabusItem(
      name: 'Playing and Watching Sports',
      canPreview: false,
      orderCourse: 2,
    ),
    SyllabusItem(
      name: 'The Best pet',
      canPreview: false,
      orderCourse: 3,
    ),
    SyllabusItem(
      name: 'Having fun in your free time',
      canPreview: false,
      orderCourse: 4,
    ),
  ];

  const Syllabus({Key? key}) : super(key: key);

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
              item: syllabus[index],
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: syllabus.length,
          ),
        ],
      ),
    );
  }
}

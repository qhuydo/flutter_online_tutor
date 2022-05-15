import '../../common.dart';
import 'widgets/basic_info_section.dart';
import 'widgets/cv_section.dart';
import 'widgets/language_and_target_student_section.dart';

class BecomeTutorStep1 extends StatelessWidget {
  const BecomeTutorStep1({Key? key}) : super(key: key);
  static const _defaultSpacingSizedBox = SizedBox(height: itemSpacing);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BasicInfoSection(),
          _defaultSpacingSizedBox,
          CvSection(),
          _defaultSpacingSizedBox,
          LanguageAndTargetStudentSection(),
        ],
      ),
    );
  }
}

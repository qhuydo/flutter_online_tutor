import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/tutor/tutor_details/tutor_details_bloc.dart';
import '../../../common.dart';
import 'language_list.dart';
import 'speciality_list.dart';
import 'video_preview.dart';

class TutorDetailsContent extends StatelessWidget {
  final bool showVideo;

  const TutorDetailsContent({
    Key? key,
    this.showVideo = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<TutorDetailsBloc, TutorDetailsState>(
        buildWhen: (previous, current) =>
            previous.tutorOrFailure != current.tutorOrFailure,
        builder: (context, state) {
          final tutor = state.tutorOrFailure.fold((l) => null, (r) => r);
          if (tutor == null) {
            return const SizedBox();
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tutor.bio),
              const SizedBox(height: itemSpacing),
              if (showVideo) ...[
                if (tutor.video.isNotEmpty)
                  VideoPreview(
                    videoUrl: tutor.video,
                    id: 6969,
                  ),
                const SizedBox(height: itemSpacing),
              ],
              // language
              Text(
                context.l10n.languageLabel,
                style: titleStyle,
              ),
              const Divider(),
              const SizedBox(height: itemSpacing),
              LanguageList(languages: tutor.languages),
              const SizedBox(height: itemSpacing),
              // specialities
              Text(
                context.l10n.specialitiesDropdown,
                style: titleStyle,
              ),
              const Divider(),
              const SizedBox(height: itemSpacing),
              SpecialityList(specialities: tutor.specialities),
              const SizedBox(height: itemSpacing),
              // interests
              Text(
                context.l10n.interestTextBoxLabel,
                style: titleStyle,
              ),
              const Divider(),
              const SizedBox(height: itemSpacing),
              Text(
                tutor.interests,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: itemSpacing),
              // experience
              Text(
                context.l10n.experienceTextBoxLabel,
                style: titleStyle,
              ),
              const Divider(),
              const SizedBox(height: itemSpacing),
              Text(
                tutor.education,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: itemSpacing),
            ],
          );
        },
      ),
    );
  }
}

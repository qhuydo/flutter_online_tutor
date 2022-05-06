import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/become_tutor/become_tutor_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/widgets/info_container.dart';

class BecomeTutorStep2 extends StatelessWidget {
  const BecomeTutorStep2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.l10n.introductionVideoStepTitle,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 600, maxWidth: 600),
              child: InfoContainer(
                child: Text(
                  context.l10n.introductionVideoStepTipsLabel,
                ),
              ),
            ),
          ),
          const SizedBox(height: itemSpacing),
          Center(
            child: SizedBox(
              width: 600,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.video_library_outlined),
                label: Text(context.l10n.chooseVideoButtonText),
                onPressed: () async {
                  final result = await FilePicker.platform.pickFiles(
                    type: FileType.custom,
                    allowedExtensions: ['mp4'],
                    withReadStream: true,
                  );

                  context
                      .read<BecomeTutorBloc>()
                      .add(BecomeTutorEvent.videoChanged(result));
                },
              ),
            ),
          ),
          BlocBuilder<BecomeTutorBloc, BecomeTutorState>(
            buildWhen: (previous, current) {
              return previous.video != current.video ||
                  previous.showErrorAtStep2 != current.showErrorAtStep2;
            },
            builder: (context, state) {
              if (state.showErrorAtStep2 && state.video == null) {
                return Center(
                  child: Text(
                    context.l10n.chooseVideoButtonLabel,
                    style: theme.textTheme.caption?.copyWith(
                      color: theme.errorColor,
                    ),
                  ),
                );
              }
              return Visibility(
                visible: state.video != null,
                child: Center(child: Text(state.video?.name ?? '')),
              );
            },
          ),
        ],
      ),
    );
  }
}

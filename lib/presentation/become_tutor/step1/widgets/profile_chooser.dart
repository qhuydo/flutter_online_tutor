import 'dart:developer';
import 'dart:typed_data';

import 'package:breakpoint/breakpoint.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/become_tutor/become_tutor_bloc.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/info_container.dart';

class ProfileChooser extends StatelessWidget {
  const ProfileChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 36),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: breakpoint.window >= WindowSize.small ? 250 : 150,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[100]!.withOpacity(0.2),
                ),
                child: BlocBuilder<BecomeTutorBloc, BecomeTutorState>(
                  buildWhen: (previous, current) {
                    return previous.avatar != current.avatar;
                  },
                  builder: (_, state) {
                    if (state.avatar == null) {
                      return const SizedBox();
                    }
                    log('rebuilt');
                    return FutureBuilder(
                      future: state.avatar!.readAsBytes(),
                      builder: (_, snapshot) {
                        if (snapshot.data == null || snapshot.hasError) {
                          return const SizedBox();
                        }

                        return ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.memory(
                            snapshot.data as Uint8List,
                            fit: BoxFit.fitHeight,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: itemSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  InfoContainer(
                    child: Text(context.l10n.uploadProfessionalPhotoLabel),
                  ),
                  const SizedBox(height: smallItemSpacing),
                  OutlinedButton.icon(
                    onPressed: () async {
                      final result = await FilePicker.platform.pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ['jpg', 'jpeg', 'png'],
                        withReadStream: true,
                      );

                      context
                          .read<BecomeTutorBloc>()
                          .add(BecomeTutorEvent.avatarChanged(result));
                    },
                    icon: const Icon(Icons.upload),
                    label: Text(context.l10n.changeAvatarButtonTooltip),
                  ),
                  BlocBuilder<BecomeTutorBloc, BecomeTutorState>(
                    buildWhen: (previous, current) {
                      return previous.avatar != current.avatar ||
                          previous.showErrorAtStep1 != current.showErrorAtStep1;
                    },
                    builder: (_, state) {
                      // final watchState = context.watch<BecomeTutorBloc>().state;
                      return Visibility(
                        visible: state.showErrorAtStep1 && state.avatar == null,
                        child: Text(
                          'Please choose image',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                color: Theme.of(context).errorColor,
                              ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../application/common/app/app_cubit.dart';
import '../../../../domain/common/app/language.dart';
import '../../../common.dart';
import '../helpers/language_extension.dart';

class ChangeLanguageModal extends StatelessWidget {
  const ChangeLanguageModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) => previous.language != current.language,
      builder: (context, state) {
        return ListView(
          shrinkWrap: true,
          children: Language.values
              .map(
                (language) => RadioListTile(
                  value: language,
                  groupValue: state.language,
                  onChanged: (value) {
                    if (value != null) {
                      context.read<AppCubit>().changeAppLanguage(language);
                    }
                  },
                  title: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Twemoji(emoji: language.toEmoji()),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(language.toTitle(context)),
                    ],
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

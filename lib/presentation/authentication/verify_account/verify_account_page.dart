import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twemoji/twemoji.dart';

import '../../../application/authentication/verify_account/verify_account_cubit.dart';
import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import '../../common/widgets/failure_widget.dart';
import '../../common/widgets/loading_widget.dart';

class VerifyAccountPage extends StatelessWidget {
  final Uri uri;

  const VerifyAccountPage({
    Key? key,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: context.l10n.verifyAccountTitle),
      body: BlocProvider(
        create: (_) {
          return VerifyAccountCubit(
            getIt<AuthenticationService>(),
            uri,
          )..verify();
        },
        child: const VerifyAccountBody(),
      ),
    );
  }
}

class VerifyAccountBody extends StatelessWidget {
  const VerifyAccountBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyAccountCubit, VerifyAccountState>(
      builder: (_, state) {
        if (state.isLoading) {
          return const LoadingWidget();
        }
        return state.requestSucceedOrFailed.fold(
          (failure) => FailureWidget(failure: failure),
          (_) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Twemoji(emoji: '✅', height: 60, width: 60),
                Text(context.l10n.verifyAccountSuccessfully),
              ],
            ),
          ),
        );
      },
    );
  }
}

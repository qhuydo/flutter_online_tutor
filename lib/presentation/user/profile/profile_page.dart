import 'package:another_flushbar/flushbar_helper.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/user/profile/profile_bloc.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import '../../common/l10n/failure_display_texts.dart';
import '../../common/widgets/loading_widget.dart';
import 'widgets/profile_body.dart';
import 'widgets/profile_body_desktop.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.editProfileLabel,
      ),
      extendBodyBehindAppBar: true,
      body: BlocProvider(
        create: (context) =>
            getIt<ProfileBloc>()..add(const ProfileEvent.initialise()),
        child: const ProfilePageBody(),
      ),
    );
  }
}

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (previous, current) =>
          previous.updateFailureOrSuccessOption !=
          current.updateFailureOrSuccessOption,
      listener: (context, state) {
        state.updateFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => FlushbarHelper.createError(
              message: failure.toText(context),
              duration: const Duration(seconds: 15),
            ).show(context),
            (_) => FlushbarHelper.createSuccess(
              // TODO update translation
              message: 'Update profile successfully',
            ).show(context),
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isInitialising != current.isInitialising ||
          previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (state.isInitialising) return const LoadingWidget();
        final breakpoint = Breakpoint.fromMediaQuery(context);
        return SingleChildScrollView(
          child: SafeArea(
            child: IgnorePointer(
              ignoring: state.isLoading,
              child: breakpoint.window >= WindowSize.medium
                  ? const ProfileBodyDesktop()
                  : const ProfileBody(),
            ),
          ),
        );
      },
    );
  }
}

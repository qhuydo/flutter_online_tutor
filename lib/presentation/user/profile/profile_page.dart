import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/user/profile/profile_bloc.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import '../../common/widgets/loading_widget.dart';
import 'widgets/widgets.dart';

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
            getIt<ProfileBloc>()..add(const ProfileEvent.initialize()),
        child: const _ProfilePage(),
      ),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  const _ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      buildWhen: (previous, current) =>
          previous.isInitializing != current.isInitializing,
      builder: (context, state) {
        if (state.isInitializing) return const LoadingWidget();
        return SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.loose(
                  // TODO re-organise size constraints
                  const Size(800, double.infinity),
                ),
                child: Column(
                  children: const [
                    ProfileAvatar(),
                    SizedBox(height: 16),
                    EditProfileForm(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

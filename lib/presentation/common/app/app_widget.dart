import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../../application/common/app/app_cubit.dart';
import '../../../infrastructure/common/app/language.dart';
import '../../common.dart';
import '../routes/app_routes.gr.dart';
import '../utils/app_theme_mode_extension.dart';

class OnlySenpaiApp extends StatelessWidget {
  const OnlySenpaiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AppCubit>()..initialize()),
        BlocProvider(
            create: (_) => getIt<AuthenticationBloc>()
              ..add(
                const AuthenticationEvent.authCheckRequested(),
              )),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (_, state) {
        return MaterialApp.router(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: state.language.toLocale(),
          theme: state.light,
          darkTheme: state.dark,
          themeMode: state.themeMode.toThemeMode(),
          debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}

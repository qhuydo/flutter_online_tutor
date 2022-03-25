import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/common/app/app_cubit.dart';
import '../../../infrastructure/common/app/language.dart';
import '../../common.dart';
import '../routes/app_routes.gr.dart';

class OnlySenpaiApp extends StatelessWidget {
  const OnlySenpaiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AppCubit>()..initialize(),
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
      buildWhen: (previous, current) => previous.language != current.language,
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: state.language.toLocale(),
          theme: FlexThemeData.light(scheme: FlexScheme.bahamaBlue).copyWith(
            visualDensity: VisualDensity.standard,
            textTheme: GoogleFonts.sawarabiGothicTextTheme(),
          ),
          darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed).copyWith(
            visualDensity: VisualDensity.standard,
            textTheme: GoogleFonts.sawarabiGothicTextTheme(
              FlexThemeData.dark(scheme: FlexScheme.mandyRed).textTheme,
            ),
          ),
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}

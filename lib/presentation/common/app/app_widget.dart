import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common.dart';
import '../routes/app_routes.gr.dart';

class OnlySenpaiApp extends StatelessWidget {
  final _appRouter = AppRouter();

  OnlySenpaiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
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
  }
}

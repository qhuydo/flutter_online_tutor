import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:window_size/window_size.dart';

import 'presentation/routes/app_routes.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    setWindowMinSize(const Size(600, 750));
  }
  runApp(OnlySenpaiApp());
}

class OnlySenpaiApp extends StatelessWidget {
  final _appRouter = AppRouter();

  OnlySenpaiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData.light().copyWith(
        // TODO update global theme
        // primarySwatch: Colors.blue,
        visualDensity: VisualDensity.standard,
        textTheme: GoogleFonts.manropeTextTheme(
          ThemeData.light().textTheme,
        ),
      ),
      // home: const SignUpByPhonePage(),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

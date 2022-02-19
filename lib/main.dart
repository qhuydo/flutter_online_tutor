import 'package:flutter/material.dart';

import 'presentation/routes/app_routes.gr.dart';

void main() {
  runApp(OnlySenpaiApp());
}

class OnlySenpaiApp extends StatelessWidget {
  final _appRouter = AppRouter();
  OnlySenpaiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        // TODO update global theme
        primarySwatch: Colors.blue,
      ),
      // home: const SignUpByPhonePage(),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

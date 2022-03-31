import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'presentation/common/app/app_widget.dart';

void bootstrap() {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => BlocOverrides.runZoned(
      () async => runApp(
        const OnlySenpaiApp(),
      ),
      blocObserver: AppBlocObserver(),
    ),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('onEvent  - $event');
  }

  // @override
  // void onChange(BlocBase bloc, Change change) {
  //   super.onChange(bloc, change);
  //   log(
  //     'onChange - $bloc\n'
  //     '${change.currentState.toString()}\n'
  //     '${change.nextState.toString()}',
  //   );
  // }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('onCreate - $bloc');
  }
}

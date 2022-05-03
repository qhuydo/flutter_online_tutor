import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'package:uni_links/uni_links.dart';

import '../../../domain/common/app/colour_scheme.dart';
import '../../../domain/common/app/i_app_repository.dart';
import '../../../domain/common/app/language.dart';
import '../../../domain/common/app/theme_mode.dart';
import '../../../domain/common/interfaces/i_internet_connection_service.dart';
import '../platform/platform_delegate.dart';
import 'flex_scheme_mapper.dart';

part 'app_cubit.freezed.dart';

part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  final AppRepository _appRepository;
  final InternetConnectionService _connectionService;

  StreamSubscription? _urlSubscription;
  StreamSubscription? _internetConnectionSubscription;

  AppCubit(
    this._appRepository,
    this._connectionService,
  ) : super(AppState.initial());

  @override
  Future close() async {
    await super.close();
    _urlSubscription?.cancel();
    _internetConnectionSubscription?.cancel();
  }

  Future<void> initialize() async {
    emit(state.copyWith(
      language: await _appRepository.getLanguage(),
      colourScheme: await _appRepository.getColourScheme(),
      themeMode: await _appRepository.getAppThemeMode(),
    ));

    if (_internetConnectionSubscription != null) {
      _internetConnectionSubscription?.cancel();
      _internetConnectionSubscription = null;
    }

    _internetConnectionSubscription = _connectionService.subscribe().listen(
      (isConnected) {
        emit(state.copyWith(hasInternetConnection: isConnected));
      },
    );

    _handleIncomingLinks();
    await Future.delayed(const Duration(seconds: 1));
    await _handleInitialUri();
  }

  Future<void> changeAppLanguage(Language language) async {
    final result = await _appRepository.setLanguage(language);
    if (result) {
      emit(state.copyWith(
        language: language,
      ));
    }
  }

  Future<void> changeColourScheme(ColourScheme colourScheme) async {
    final result = await _appRepository.setColourScheme(colourScheme);

    if (result) {
      emit(state.copyWith(
        colourScheme: colourScheme,
      ));
    }
  }

  Future<void> changeThemeMode(AppThemeMode themeMode) async {
    final result = await _appRepository.setAppThemeMode(themeMode);

    if (result) {
      emit(state.copyWith(themeMode: themeMode));
    }
  }

  /// Handle incoming links - the ones that the app will receive from the OS
  /// while already started.
  void _handleIncomingLinks() {
    if (!Target().isWeb && Target().isMobile) {
      // It will handle app links while the app is already started - be it in
      // the foreground or in the background.
      _urlSubscription = uriLinkStream.listen((Uri? uri) {
        log('got uri: $uri');
        emit(state.copyWith(latestUri: uri));
      }, onError: (Object err) {
        log('got err: $err');
        emit(state.copyWith(latestUri: null));
      });
    }
  }

  /// Handle the initial Uri - the one the app was started with
  ///
  /// **ATTENTION**: `getInitialLink`/`getInitialUri` should be handled
  /// ONLY ONCE in your app's lifetime, since it is not meant to change
  /// throughout your app's life.
  ///
  /// We handle all exceptions, since it is called from initState.
  Future<void> _handleInitialUri() async {
    if (!Target().isWeb && !Target().isMobile) return;

    if (!state.initialUriIsHandled) {
      // _initialUriIsHandled = true;
      try {
        final uri = await getInitialUri();
        emit(state.copyWith(initialUri: uri));
        if (uri == null) {
          log('no initial uri');
        } else {
          log('got initial uri: $uri');
        }
      } on PlatformException {
        // Platform messages may fail but we ignore the exception
        log('failed to get initial uri');
      } on FormatException catch (err) {
        log('malformed initial uri, $err');
      }
    }
  }

  void initialUriHandled() {
    emit(state.copyWith(initialUriIsHandled: true));
  }

  void latestUriHandled() {
    emit(state.copyWith(latestUri: null));
  }
}

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/authentication/events/authentication_service_event.dart';
import '../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../domain/user/models/user.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationService _authService;

  AuthenticationBloc(
    this._authService,
  ) : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.when(
        initialise: () => _onInitialise(emit),
        authCheckRequested: () => _onAuthCheckRequested(emit),
        signedOut: () => _onSignedOut(emit),
        loginWithGoogle: () => _onLoggedInWithGoogle(emit),
      );
    });
  }

  Future _onAuthCheckRequested(Emitter<AuthenticationState> emit) async {
    final userOption = await _authService.getSignedInUser();
    // await Future.delayed(const Duration(seconds: 1));
    userOption.fold(
      () => emit(const AuthenticationState.unauthenticated()),
      (user) => emit(AuthenticationState.authenticated(user)),
    );
  }

  Future _onSignedOut(Emitter<AuthenticationState> emit) async {
    await _authService.signOut();
    // emit(const AuthenticationState.unauthenticated());
  }

  _onInitialise(Emitter<AuthenticationState> emit) async {
    await emit.forEach<AuthenticationServiceEvent>(
      _authService.subscribe(),
      onData: (data) {
        return data.when(signedOut: () {
          return const AuthenticationState.unauthenticated();
        }, profileUpdated: () {
          add(const AuthenticationEvent.authCheckRequested());
          return state;
        });
      },
    );
  }

  Future _onLoggedInWithGoogle(Emitter<AuthenticationState> emit) async {
    final _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );

    try {
      await _googleSignIn.signOut();
      final googleSignInAccount = await _googleSignIn.signIn();

      final authentication = await googleSignInAccount?.authentication;
      final accessToken = authentication?.accessToken;

      if (accessToken != null && accessToken.isNotEmpty == true) {
        await _authService.signInWithGoogle(accessToken);
        add(const AuthenticationEvent.authCheckRequested());
      }
    } on PlatformException catch(e) {
      log(e.toString());
      log('Google sign in is not supported on the current device');
    } catch (e) {
      log(e.toString());
    }

  }
}

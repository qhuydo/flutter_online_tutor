import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  final AuthenticationService authService;

  AuthenticationBloc(
    this.authService,
  ) : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.when(
        initialise: () => _onInitialise(emit),
        authCheckRequested: () => _onAuthCheckRequested(emit),
        signedOut: () => _onSignedOut(emit),
      );
    });
  }

  Future _onAuthCheckRequested(Emitter<AuthenticationState> emit) async {
    final userOption = await authService.getSignedInUser();
    // await Future.delayed(const Duration(seconds: 1));
    userOption.fold(
      () => emit(const AuthenticationState.unauthenticated()),
      (user) => emit(AuthenticationState.authenticated(user)),
    );
  }

  Future _onSignedOut(Emitter<AuthenticationState> emit) async {
    await authService.signOut();
    // emit(const AuthenticationState.unauthenticated());
  }

  _onInitialise(Emitter<AuthenticationState> emit) async {
    await emit.forEach<AuthenticationServiceEvent>(
      authService.subscribe(),
      onData: (data) {
        return data.when(signedOut: () {
          return const AuthenticationState.unauthenticated();
        });
      },
    );
  }
}

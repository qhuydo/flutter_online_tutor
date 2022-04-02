part of 'upcoming_class_bloc.dart';

@freezed
class UpcomingClassState with _$UpcomingClassState {

  const UpcomingClassState._();
  
  const factory UpcomingClassState({
    @Default(false) isLoading,
    @Default(Right([])) Either<Failure, List<Appointment>> classOrFailure,
  }) = _UpcomingClassState;

  List<Appointment>? getClass() => classOrFailure.fold((l) => null, (r) => r);
}

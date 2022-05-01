part of 'schedule_details_bloc.dart';

@freezed
class EditStudentRequestStatus with _$EditStudentRequestStatus {
  const factory EditStudentRequestStatus.initial() = _Initial;

  const factory EditStudentRequestStatus.loading() = _Loading;

  const factory EditStudentRequestStatus.succeed() = _Succeed;

  const factory EditStudentRequestStatus.failed(Failure failure) = _Failed;
}

@freezed
class ScheduleDetailsState with _$ScheduleDetailsState {
  const ScheduleDetailsState._();

  const factory ScheduleDetailsState({
    required Appointment appointment,
    @Default(ClassCancellationStatus.initial())
        ClassCancellationStatus classCancellationStatus,
    @Default(EditStudentRequestStatus.initial())
        EditStudentRequestStatus editStudentRequestStatus,
  }) = _ScheduleDetailsState;
}

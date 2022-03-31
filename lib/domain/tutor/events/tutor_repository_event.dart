import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/tutor.dart';

part 'tutor_repository_event.freezed.dart';

@freezed
class TutorRepositoryEvent with _$TutorRepositoryEvent {
  const factory TutorRepositoryEvent.tutorDataChanged(Tutor tutor) =
      _TutorDataChanged;
}

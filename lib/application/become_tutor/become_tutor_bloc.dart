import 'package:bloc/bloc.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/common/failures/failure.dart';
import '../../domain/common/models/country.dart';
import '../../domain/common/value_objects/non_empty_value.dart';
import '../../domain/tutor/models/language.dart';
import '../../domain/user/constants/target_student.dart';
import '../../domain/user/models/speciality.dart';
import '../../domain/user/value_objects/birthday.dart';
import '../../domain/user/value_objects/name.dart';

part 'become_tutor_bloc.freezed.dart';

part 'become_tutor_event.dart';

part 'become_tutor_state.dart';

class BecomeTutorBloc extends Bloc<BecomeTutorEvent, BecomeTutorState> {
  BecomeTutorBloc() : super(BecomeTutorState.initial()) {
    on<BecomeTutorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

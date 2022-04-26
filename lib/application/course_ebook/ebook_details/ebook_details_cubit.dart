import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/course_ebook/models/ebook.dart';

part 'ebook_details_cubit.freezed.dart';

part 'ebook_details_state.dart';

class EbookDetailsCubit extends Cubit<EbookDetailsState> {
  EbookDetailsCubit(Ebook ebook) : super(EbookDetailsState(ebook: ebook)) {
    _initialise();
  }

  void _initialise() async {
    emit(state.copyWith(
      isLoading: true,
    ));

    await Future.delayed(const Duration(seconds: 1));

    emit(state.copyWith(
      isLoading: false,
    ));
  }
}

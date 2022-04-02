part of 'ebook_details_bloc.dart';

@freezed
class EbookDetailsEvent with _$EbookDetailsEvent {
  const factory EbookDetailsEvent.initialise(String id) = _Initialise;
}

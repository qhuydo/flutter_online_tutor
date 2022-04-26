part of 'ebook_details_cubit.dart';

@freezed
class EbookDetailsState with _$EbookDetailsState {
  const EbookDetailsState._();

  const factory EbookDetailsState({
    @Default(false) isLoading,
    required Ebook ebook,
  }) = _EbookDetailsState;
}

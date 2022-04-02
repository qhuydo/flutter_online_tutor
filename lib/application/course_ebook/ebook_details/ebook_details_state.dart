part of 'ebook_details_bloc.dart';

@freezed
class EbookDetailsState with _$EbookDetailsState {
  const EbookDetailsState._();

  const factory EbookDetailsState({
    @Default(false) isLoading,
    required Either<Failure, Ebook> ebookOrFailure,
  }) = _EbookDetailsState;

  factory EbookDetailsState.initial() => EbookDetailsState(
    ebookOrFailure: Right(Ebook.empty()),
  );

  Ebook? get ebook => ebookOrFailure.fold((l) => null, (r) => r);
}

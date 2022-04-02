part of 'ebook_list_bloc.dart';

@freezed
class EbookListState with _$EbookListState {
  const EbookListState._();

  const factory EbookListState({
    @Default(false) isLoading,
    @Default(Right([])) Either<Failure, List<Ebook>> listOrFailure,
  }) = _EbookListState;

  List<Ebook>? get courseList => listOrFailure.fold((l) => null, (r) => r);
}

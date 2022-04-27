class PaginationListDto<T> {
  final List<T> list;
  final int totalItems;
  final int limit;

  const PaginationListDto({
    required this.list,
    required this.totalItems,
    required this.limit,
  });

  int get totalPages => (totalItems / limit).ceil();
}

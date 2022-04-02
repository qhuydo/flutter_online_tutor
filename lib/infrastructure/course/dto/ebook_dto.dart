import 'package:freezed_annotation/freezed_annotation.dart';

part 'ebook_dto.freezed.dart';

part 'ebook_dto.g.dart';

@freezed
class EbookDto with _$EbookDto {
  const factory EbookDto({
    required String id,
    required String name,
    String? imageUrl,
    String? description,
    required String level,
    required String fileUrl
  }) = _EbookDto;

  factory EbookDto.fromJson(Map<String, dynamic> json) =>
      _$EbookDtoFromJson(json);
}

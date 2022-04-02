import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/course_ebook/models/ebook.dart';
import '../../user/utils/level_extension.dart';

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
    required String fileUrl,
  }) = _EbookDto;

  factory EbookDto.fromJson(Map<String, dynamic> json) =>
      _$EbookDtoFromJson(json);
}

extension EbookDtoX on EbookDto {
  Ebook toDomain() => Ebook(
        id: id,
        name: name,
        description: description ?? '',
        level: level.toLevelFromLevelOrder(),
        fileUrl: fileUrl,
      );
}

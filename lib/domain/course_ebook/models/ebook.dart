import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/constants/levels.dart';

part 'ebook.freezed.dart';

@freezed
class Ebook with _$Ebook {
  const factory Ebook({
    required String id,
    required String name,
    required String description,
    required Level level,
    required String fileUrl,
    String? imageUrl,
  }) = _Ebook;
}

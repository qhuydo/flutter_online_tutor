import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';

part 'language.g.dart';

@freezed
class Language with _$Language {
  const factory Language({
    required String key,
    required String name,
    required String native,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

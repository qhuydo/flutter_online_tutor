import 'package:freezed_annotation/freezed_annotation.dart';

part 'speciality.freezed.dart';

part 'speciality.g.dart';

@freezed
class Speciality with _$Speciality {
  const factory Speciality({
    required int id,
    required String key,
    required String name,
  }) = _Speciality;

  factory Speciality.fromJson(Map<String, dynamic> json) =>
      _$SpecialityFromJson(json);
}

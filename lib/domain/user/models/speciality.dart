import 'package:freezed_annotation/freezed_annotation.dart';

part 'speciality.freezed.dart';

@freezed
class Speciality with _$Speciality {
  const factory Speciality({
    required int id,
    required String key,
    required String name,
  }) = _Speciality;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_preparation.freezed.dart';

@freezed
class TestPreparation with _$TestPreparation {
  const factory TestPreparation({
    required int id,
    required String key,
    required String name,
  }) = _TestPreparation;
}

import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/tutor/models/tutor.dart';
import '../../tutor/dto/tutor_details/tutor_details_dto.dart';
import '../../tutor/dto/tutor_list/tutor_list_item_dto.dart';
import 'i_tutor_data_source.dart';

@LazySingleton(as: TutorDataSource)
class LocalTutorDataSource implements TutorDataSource {
  static const _boxTutor = 'tutors';

  late Box<String> _box;
  final _tutorStreamController = BehaviorSubject<List<Tutor>>.seeded(const []);

  LocalTutorDataSource() {
    _init();
  }

  Future _init() async {
    _box = await Hive.openBox<String>(_boxTutor);
    _addListToStream();
  }

  @disposeMethod
  void dispose() {
    _tutorStreamController.close();
    _box.close();
  }

  @override
  Future clear() {
    return _box.clear();
  }

  Tutor? decode(String? tutor) {
    if (tutor == null) return null;

    return Tutor.fromJson(jsonDecode(tutor));
  }

  void _addListToStream() {
    final values = _box.values.map((e) => Tutor.fromJson(jsonDecode(e)));
    _tutorStreamController.add(values.toList(growable: false));
  }

  @override
  Stream<List<Tutor>> getAllTutors() =>
      _tutorStreamController.asBroadcastStream();

  @override
  Future<Tutor?> getTutor(String id) async => decode(_box.get(id));

  @override
  Future<bool> saveTutorFromTutorDetailsDto(
    TutorDetailsDto tutorDetailsDto,
  ) async {
    // TODO add specialityMap
    final tutor = tutorDetailsDto.toDomain(specialityMap: []);

    await _box.put(tutor.id, jsonEncode(tutor.toJson()));
    _addListToStream();
    return true;
  }

  @override
  Future<bool> saveTutorsFromTutorListItemDto(
    List<TutorListItemDto> tutorDtoList,
    List<String> favouriteTutors,
  ) async {

    // TODO add specialityMap
    final tutorsMap = {
      for (final tutor in tutorDtoList)
        tutor.userId: jsonEncode(tutor.toDomain(
            specialityMap: [],
            isFavourite: favouriteTutors.contains(tutor.userId)).toJson())
    };

    await _box.putAll(tutorsMap);
    _addListToStream();
    return true;
  }
}

import '../../../domain/tutor/models/tutor.dart';
import '../../tutor/dto/tutor_details/tutor_details_dto.dart';
import '../../tutor/dto/tutor_list/tutor_list_item_dto.dart';

abstract class TutorDataSource {
  Stream<List<Tutor>> getAllTutors();

  Future<Tutor?> getTutor(String id);

  Future<bool> saveTutorFromTutorDetailsDto(TutorDetailsDto tutorDetailsDto);

  Future<bool> saveTutorsFromTutorListItemDto(
    List<TutorListItemDto> tutorDtoList,
    List<String> favouriteTutors,
  );

  Future clear();
}

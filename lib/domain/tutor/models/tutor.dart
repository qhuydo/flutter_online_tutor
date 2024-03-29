import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/models/country.dart';
import '../../user/constants/levels.dart';
import '../../user/models/speciality.dart';
import 'feedback.dart';
import 'language.dart';

part 'tutor.freezed.dart';

part 'tutor.g.dart';

@freezed
class Tutor with _$Tutor {
  const Tutor._();

  const factory Tutor({
    required String id,
    String? avatar,
    required String bio,
    required Country country,
    required String education,
    required double averageRating,
    // @Default([]) List<Course> courses,
    @Default([]) List<Feedback> feedbacks,
    required String interests,
    required bool isFavourite,
    required bool? isOnline,
    @Default([]) List<Language> languages,
    required String name,
    required double price,
    required String profession,
    @Default([]) List<Speciality> specialities,
    required Level targetStudent,
    required String video,
  }) = _Tutor;

  factory Tutor.fromJson(Map<String, dynamic> json) => _$TutorFromJson(json);

  factory Tutor.empty() => Tutor(
        id: '',
        bio: '',
        country: Country.antarctica(),
        education: '',
        averageRating: 0,
        interests: '',
        isFavourite: false,
        isOnline: false,
        name: '',
        price: 0,
        profession: '',
        targetStudent: Level.none,
        video: '',
      );

  bool match({
    required List<Speciality> specialities,
    required String keyword,
    Country? country,
  }) {
    return (specialities.isEmpty ||
        this
            .specialities
            .any((element) => specialities.contains(element))) &&
        name.toLowerCase().contains(keyword.toLowerCase()) &&
        (country == null || this.country == country);
  }
}

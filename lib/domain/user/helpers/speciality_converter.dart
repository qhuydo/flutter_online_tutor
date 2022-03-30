import '../models/speciality.dart';

class SpecialityConverter {
  /// Convert a string into a List of [Speciality] objects.
  ///
  /// @param keyString a string representing [Speciality] keys, each of them are
  ///   separated by comma.
  /// @param specialityMap
  ///
  /// ```dart
  /// final values = parseFromSpecialityKeyString(
  ///   'business-english,conversational-english',
  ///   <Speciality>[
  ///     const Speciality(
  ///       id: 4,
  ///       key: 'business-english',
  ///       name: 'Business English',
  ///     ),
  ///     const Speciality(
  ///       id: 5,
  ///       key: 'conversational-english',
  ///       name: 'Conversational English',
  ///     ),
  ///     const Speciality(
  ///       id: 3,
  ///       key: 'english-for-kids',
  ///       name: 'English for Kids',
  ///     ),
  ///   ],
  /// );
  /// values == [
  ///   const Speciality(
  ///     id: 4,
  ///     key: 'business-english',
  ///     name: 'Business English',
  ///   ),
  ///   const Speciality(
  ///     id: 5,
  ///     key: 'conversational-english',
  ///     name: 'Conversational English',
  ///   ),
  /// ];
  /// ```
  static List<Speciality> parseFromSpecialityKeyString(
    String keyString,
    List<Speciality> specialityMap,
  ) {
    final keys = keyString.split(',');
    final specialities = <Speciality>[];
    for (final key in keys) {
      final specialityIdx = specialityMap.indexWhere(
        (element) => element.key == key,
      );
      if (specialityIdx != -1) {
        specialities.add(specialityMap[specialityIdx]);
      }
    }
    return specialities;
  }
}

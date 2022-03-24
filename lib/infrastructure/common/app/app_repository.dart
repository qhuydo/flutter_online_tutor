import 'dart:ui';

import 'package:injectable/injectable.dart';

import '../../../common.dart';
import '../../../domain/common/app/language.dart';
import '../db/shared_preference_storage.dart';
import 'language.dart';

abstract class AppRepository {
  Future<Language> getLanguage();

  Future<Locale?> getLocale();

  Future<bool> setLanguage(Language language);
}

@LazySingleton(as: AppRepository)
class AppRepositoryImpl extends AppRepository {
  static const String keyLanguage = 'keyLanguage';

  final storage = getIt<SharedPreferenceStorage>();

  @override
  Future<Language> getLanguage() async => getLanguageFromString(storage.get(
        keyLanguage,
        defaultValue: Language.followSystem,
      ) as String?);

  @override
  Future<Locale?> getLocale() async => (await getLanguage()).toLocale();

  @override
  Future<bool> setLanguage(Language language) => storage.set(
        keyLanguage,
        language.toString(),
      );
}
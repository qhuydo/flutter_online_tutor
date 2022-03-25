import 'dart:ui';

import 'package:injectable/injectable.dart';

import '../../../common.dart';
import '../../../domain/common/app/i_app_repository.dart';
import '../../../domain/common/app/language.dart';
import '../db/shared_preference_storage.dart';
import 'language.dart';

@LazySingleton(as: AppRepository)
class AppRepositoryImpl extends AppRepository {
  static const String keyLanguage = 'keyLanguage';

  final storage = getIt<SharedPreferenceStorage>();

  @override
  Future<Language> getLanguage() async => getLanguageFromString(storage.get(
        keyLanguage,
        defaultValue: Language.followSystem,
      ) as String?);

  Future<Locale?> getLocale() async => (await getLanguage()).toLocale();

  @override
  Future<bool> setLanguage(Language language) => storage.set(
        keyLanguage,
        language.toString(),
      );
}

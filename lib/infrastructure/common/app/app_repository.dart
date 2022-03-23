import 'dart:ui';

import 'package:injectable/injectable.dart';

import '../../../common.dart';
import '../../../domain/common/app/language.dart';
import '../db/shared_preference_storage.dart';

abstract class AppRepository {
  Future<bool> isAuthenticated();

  Future<Language> getLanguage();

  Future<Locale?> getLocale();
}

@LazySingleton(as: AppRepository)
class AppRepositoryImpl extends AppRepository {
  static const String keyIsAuthenticated = 'keyIsAuthenticated';
  static const String keyLanguage = 'keyLanguage';

  final storage = getIt<SharedPreferenceStorage>();

  @override
  Future<bool> isAuthenticated() async =>
      storage.get(keyIsAuthenticated) == true;

  @override
  Future<Language> getLanguage() async => getLanguageFromString(storage.get(
    keyLanguage,
    defaultValue: Language.followSystem,
  ) as String?);

  @override
  Future<Locale?> getLocale() async => (await getLanguage()).toLocale();
}

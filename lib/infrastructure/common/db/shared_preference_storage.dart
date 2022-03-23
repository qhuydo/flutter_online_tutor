import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common.dart';

abstract class SharedPreferenceStorage {
  /// Reads a value of any type from persistent storage.
  Object? get(String key, {defaultValue});

  /// Returns true if persistent storage the contains the given key.
  bool contains(String key);

  /// Removes an entry from persistent storage.
  Future<bool> clear(String key);

  /// Completes with true once the user preferences for the app has been
  /// cleared.
  Future<bool> clearAll();

  /// Reads a value of any type from persistent storage.
  Future<bool> set(String key, dynamic value);
}

@LazySingleton(as: SharedPreferenceStorage)
class SharedPreferenceStorageImpl implements SharedPreferenceStorage {
  final _prefs = getIt<SharedPreferences>();

  @override
  Object? get(String key, {defaultValue}) => _prefs.get(key) ?? defaultValue;

  @override
  bool contains(String key) => _prefs.containsKey(key);

  @override
  Future<bool> clear(String key) => _prefs.remove(key);

  @override
  Future<bool> clearAll() => _prefs.clear();

  @override
  Future<bool> set(String key, value) async {
    switch (value.runtimeType) {
      case String:
        return _prefs.setString(key, value as String);
      case int:
        return _prefs.setInt(key, value as int);
      case bool:
        return _prefs.setBool(key, value as bool);
      case double:
        return _prefs.setDouble(key, value as double);
      case List<String>:
        return _prefs.setStringList(key, value);
      case Null:
        return _prefs.remove(key);
      default:
        return _prefs.setString(key, value.toString());
    }
  }
}

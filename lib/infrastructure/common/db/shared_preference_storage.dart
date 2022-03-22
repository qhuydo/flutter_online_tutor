
import 'package:injectable/injectable.dart';

abstract class SharedPreferenceStorage {

}

@LazySingleton(as: SharedPreferenceStorage)
class SharedPreferenceStorageImpl implements SharedPreferenceStorage {

}
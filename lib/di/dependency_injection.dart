import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

/// Get instance of [GetIt]
final getIt = GetIt.instance;

/// initializes the configurations of [GetIt].
@injectableInit
void configureInjection(String env) => $initGetIt(getIt, environment: env);



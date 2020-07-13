import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(getIt);

@module
abstract class RegisterModule {
  @lazySingleton
  GlobalKey<NavigatorState> get key => GlobalKey<NavigatorState>();
}

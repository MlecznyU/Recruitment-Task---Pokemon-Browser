import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../injection.dart';
import 'screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _rotationLockForEntireApp();
    return MaterialApp(
      title: 'Pokemon Browser',
      navigatorKey: getIt<GlobalKey<NavigatorState>>(),
      home: Home(),
    );
  }

  void _rotationLockForEntireApp() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}

import 'package:flutter/material.dart';

import 'injection.dart';
import 'ui/app.dart';

void main() {
  configureDependencies();
  runApp(App());
}

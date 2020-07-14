import 'package:moor_flutter/moor_flutter.dart';

class MoorType extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get typeName => text()();
}

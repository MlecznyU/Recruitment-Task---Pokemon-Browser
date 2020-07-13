import 'package:moor_flutter/moor_flutter.dart';

class MoorType extends Table {
  IntColumn get id => integer()();

  TextColumn get typeName => text()();

  @override
  Set<Column> get primaryKey => {id, typeName};
}

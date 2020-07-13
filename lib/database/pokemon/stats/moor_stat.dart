import 'package:moor_flutter/moor_flutter.dart';

class MoorStat extends Table {
  IntColumn get id => integer()();

  TextColumn get statName => text()();

  IntColumn get value => integer()();

  @override
  Set<Column> get primaryKey => {id, statName};
}

import 'package:moor_flutter/moor_flutter.dart';

class MoorPokemonBaseInfoStatLink extends Table {
  IntColumn get baseInfo => integer()();

  IntColumn get stat => integer()();
}

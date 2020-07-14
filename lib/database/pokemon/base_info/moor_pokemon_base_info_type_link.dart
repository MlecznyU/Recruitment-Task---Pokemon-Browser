import 'package:moor_flutter/moor_flutter.dart';

class MoorPokemonBaseInfoTypeLink extends Table {
  IntColumn get baseInfo => integer()();

  IntColumn get type => integer()();
}

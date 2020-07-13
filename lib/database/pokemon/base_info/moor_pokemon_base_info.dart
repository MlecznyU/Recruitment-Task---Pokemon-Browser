import 'package:equatable/equatable.dart';
import 'package:moor_flutter/moor_flutter.dart';

import '../../database.dart';

class MoorPokemonBaseInfo extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  IntColumn get exp => integer()();

  IntColumn get weight => integer()();

  IntColumn get height => integer()();

  TextColumn get sprite => text()();
}

class MoorPokemon extends Equatable {
  final MoorPokemonBaseInfoData baseInfo;
  final List<MoorTypeData> types;
  final List<MoorStatData> stats;

  const MoorPokemon(this.baseInfo, this.types, this.stats);

  @override
  List<Object> get props => [baseInfo, types, stats];
}

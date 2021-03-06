import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'pokemon/pokemon_dao.dart';
import 'pokemon/base_info/moor_pokemon_base_info_stat_link.dart';
import 'pokemon/base_info/moor_pokemon_base_info_type_link.dart';
import 'pokemon/base_info/moor_pokemon_base_info.dart';
import 'pokemon/stats/moor_stat.dart';
import 'pokemon/types/moor_types.dart';

part 'database.g.dart';

@lazySingleton
@UseMoor(tables: [
  MoorType,
  MoorPokemonBaseInfo,
  MoorStat,
  MoorPokemonBaseInfoTypeLink,
  MoorPokemonBaseInfoStatLink,
], daos: [PokemonDao])
class Database extends _$Database {
  Database()
      : super(
          FlutterQueryExecutor.inDatabaseFolder(
              path: 'db.sqlite', logStatements: true),
        );

  @override
  int get schemaVersion => 1;
}


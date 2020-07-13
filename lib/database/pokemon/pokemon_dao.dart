import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'base_info/moor_pokemon_base_info.dart';
import '../database.dart';
import 'stats/moor_stat.dart';
import 'types/moor_types.dart';

part 'pokemon_dao.g.dart';

@lazySingleton
@UseDao(tables: [
  MoorPokemonBaseInfo,
  MoorStat,
  MoorType,
])
class PokemonDao extends DatabaseAccessor<Database> with _$PokemonDaoMixin {
  final Database db;

  PokemonDao(this.db) : super(db);

  Future<void> insertBaseInfo(Insertable<MoorPokemonBaseInfoData> baseInfo) =>
      into(moorPokemonBaseInfo).insert(baseInfo);

  Future<void> insertType(Insertable<MoorTypeData> type) =>
      into(moorType).insert(type);

  Future<void> insertStat(Insertable<MoorStatData> stat) =>
      into(moorStat).insert(stat);

  Future<List<MoorPokemon>> getAllPokemons() async {
    final pokemonBaseInfo = await select(moorPokemonBaseInfo).get();

    final List<MoorPokemon> moorPokemons = [];

    for (final pokemon in pokemonBaseInfo) {
      final pokemonStats = await (select(moorStat)
            ..where((stat) => stat.id.equals(pokemon.id)))
          .get();

      final pokemonTypes = await (select(moorType)
            ..where((type) => type.id.equals(pokemon.id)))
          .get();

      moorPokemons.add(MoorPokemon(
        pokemon,
        pokemonTypes,
        pokemonStats,
      ));
    }
    return moorPokemons;
  }
}

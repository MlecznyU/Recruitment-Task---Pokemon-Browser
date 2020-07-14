import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import '../../repository/model/pokemon.dart';
import 'base_info/moor_pokemon_base_info_stat_link.dart';
import 'base_info/moor_pokemon_base_info_type_link.dart';
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
  MoorPokemonBaseInfoTypeLink,
  MoorPokemonBaseInfoStatLink,
])
class PokemonDao extends DatabaseAccessor<Database> with _$PokemonDaoMixin {
  final Database db;

  PokemonDao(this.db) : super(db);

  Future<List<Pokemon>> getAllPokemons() async {
    final pokemons = await select(moorPokemonBaseInfo).get();

    final typeRecords = await select(moorType).join([
      innerJoin(
        moorPokemonBaseInfoTypeLink,
        moorPokemonBaseInfoTypeLink.type.equalsExp(moorType.id),
      )
    ]).get();
    final statRecords = await select(moorStat).join([
      innerJoin(
        moorPokemonBaseInfoStatLink,
        moorPokemonBaseInfoStatLink.stat.equalsExp(moorStat.id),
      )
    ]).get();

    return pokemons.map(
      (record) {
        return Pokemon(
          id: record.id,
          name: record.name,
          exp: record.exp,
          weight: record.weight,
          sprite: record.sprite,
          height: record.height,
          types: [
            for (final type in typeRecords)
              if (type.readTable(moorPokemonBaseInfoTypeLink).baseInfo ==
                  record.id)
                PokemonType(type.readTable(moorType).typeName)
          ],
          stats: [
            for (final stat in statRecords)
              if (stat.readTable(moorPokemonBaseInfoStatLink).baseInfo ==
                  record.id)
                PokemonStat(
                  stat.readTable(moorStat).statName,
                  stat.readTable(moorStat).value,
                )
          ],
        );
      },
    ).toList();
  }

  Future<void> insertBaseInfo(Insertable<MoorPokemonBaseInfoData> baseInfo) =>
      into(moorPokemonBaseInfo).insert(baseInfo);

  Future<void> insertType(Insertable<MoorTypeData> type, int pokemonId) async {
    final typeId =
        await into(moorType).insert(type, mode: InsertMode.insertOrIgnore);

    into(moorPokemonBaseInfoTypeLink).insert(
      MoorPokemonBaseInfoTypeLinkCompanion(
        baseInfo: Value(pokemonId),
        type: Value(typeId),
      ),
    );
  }

  Future<void> insertStat(Insertable<MoorStatData> stat, int pokemonId) async {
    final statId =
        await into(moorStat).insert(stat, mode: InsertMode.insertOrIgnore);

    into(moorPokemonBaseInfoStatLink).insert(
      MoorPokemonBaseInfoStatLinkCompanion(
        baseInfo: Value(pokemonId),
        stat: Value(statId),
      ),
    );
  }
}

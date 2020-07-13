import 'package:equatable/equatable.dart';

import '../../database/pokemon/base_info/moor_pokemon_base_info.dart';
import '../../network/network_model/pokemon/network_pokemon.dart';

import '../../database/database.dart';

class Pokemon extends Equatable {
  final int exp;
  final int height;
  final int id;
  final String name;
  final String sprite;
  final List<PokemonStat> stats;
  final List<PokemonType> types;
  final int weight;

  const Pokemon({
    this.exp,
    this.height,
    this.id,
    this.name,
    this.sprite,
    this.stats,
    this.types,
    this.weight,
  });

  static Pokemon fromNetwork(final NetworkPokemon networkPokemon) {
    final types = networkPokemon.types.map(PokemonType.fromNetwork).toList();
    final stats = networkPokemon.stats.map(PokemonStat.fromNetwork).toList();

    return Pokemon(
      id: networkPokemon.id,
      name: networkPokemon.name,
      height: networkPokemon.height,
      exp: networkPokemon.exp,
      sprite: networkPokemon.sprites.frontSprite,
      weight: networkPokemon.weight,
      stats: stats,
      types: types,
    );
  }

  static Pokemon fromMoor(final MoorPokemon pokemon) {
    final types = pokemon.types.map(PokemonType.fromMoor).toList();
    final stats = pokemon.stats.map(PokemonStat.fromMoor).toList();

    return Pokemon(
      id: pokemon.baseInfo.id,
      name: pokemon.baseInfo.name,
      exp: pokemon.baseInfo.exp,
      height: pokemon.baseInfo.height,
      sprite: pokemon.baseInfo.sprite,
      weight: pokemon.baseInfo.weight,
      types: types,
      stats: stats,
    );
  }

  @override
  List<Object> get props =>
      [id, name, exp, height, sprite, weight, types, stats];
}

class PokemonType extends Equatable {
  final String name;

  const PokemonType(this.name);

  static PokemonType fromMoor(final MoorTypeData moorType) {
    return PokemonType(moorType.typeName);
  }

  static PokemonType fromNetwork(final NetworkType networkType) {
    return PokemonType(networkType.type.name);
  }

  @override
  List<Object> get props => [name];
}

class PokemonStat extends Equatable {
  final String name;
  final int value;

  const PokemonStat(this.name, this.value);

  static PokemonStat fromMoor(final MoorStatData moorStat) {
    return PokemonStat(moorStat.statName, moorStat.value);
  }

  static PokemonStat fromNetwork(final NetworkStat networkStat) {
    return PokemonStat(networkStat.statName.name, networkStat.statValue);
  }

  @override
  List<Object> get props => [name, value];
}

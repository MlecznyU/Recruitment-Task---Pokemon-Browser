import 'package:equatable/equatable.dart';

import '../../network/network_model/pokemon/network_pokemon.dart';


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


  @override
  List<Object> get props =>
      [id, name, exp, height, sprite, weight, types, stats];
}

class PokemonType extends Equatable {
  final String name;

  const PokemonType(this.name);

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

  static PokemonStat fromNetwork(final NetworkStat networkStat) {
    return PokemonStat(networkStat.statName.name, networkStat.statValue);
  }

  @override
  List<Object> get props => [name, value];
}

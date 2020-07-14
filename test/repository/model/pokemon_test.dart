import 'package:flutter_test/flutter_test.dart';
import 'package:pokemonbrowser/repository/model/pokemon.dart';

import '../../consts_for_tests.dart';

void main() {
  test(
      'Pokemon fromNetwork returns Pokemon object '
      'mapped from NetworkPokemon object with same data', () {
    final result = Pokemon.fromNetwork(tNetworkPokemon);

    expect(result, tPokemon);
  });

  test(
      'PokemonType fromNetwork returns PokemonType object '
      'mapped from NetworkType object with same data', () {
    final result = PokemonType.fromNetwork(tNetworkType);

    expect(result, tPokemonType);
  });
  test(
      'PokemonStat fromNetwork returns PokemonStat object '
      'mapped from NetworkStat object with same data', () {
    final result = PokemonStat.fromNetwork(tNetworkStat);

    expect(result, tPokemonStat);
  });
}

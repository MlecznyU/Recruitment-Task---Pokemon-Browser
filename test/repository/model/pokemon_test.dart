import 'package:flutter_test/flutter_test.dart';
import 'package:pokemonbrowser/repository/model/pokemon.dart';

import '../../consts_for_tests.dart';



// ignore: type_annotate_public_apis, type_annotate_public_apis, always_declare_return_types
main() {
  test(
      'Pokemon fromNetwork returns Pokemon object '
      'mapped from NetworkPokemon object with same data', () {
    final result = Pokemon.fromNetwork(tNetworkPokemon);

    expect(result, tPokemon);
  });

  test(
      'Pokemon fromMoor returns Pokemon object '
      'mapped from MoorPokemon object with same data', () {
    final result = Pokemon.fromMoor(tMoorPokemon);

    expect(result, tPokemon);
  });
  test(
      'PokemonType fromMoor returns PokemonType object '
      'mapped from MoorTypeData object with same data', () {
    final result = PokemonType.fromMoor(tMoorTypeData);

    expect(result, tPokemonType);
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
  test(
      'PokemonStat fromMoor returns PokemonStat object '
      'mapped from MoorStatData object with same data', () {
    final result = PokemonStat.fromMoor(tMoorStatData);

    expect(result, tPokemonStat);
  });
}

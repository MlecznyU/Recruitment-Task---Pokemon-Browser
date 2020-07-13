part of 'pokemon_list_bloc.dart';

@freezed
abstract class PokemonListState with _$PokemonListState {
  const factory PokemonListState.listInitial() = ListInitial;

  const factory PokemonListState.pokemonListAvailable({
    @required List<Pokemon> pokemonList,
  }) = PokemonListAvailable;

  const factory PokemonListState.pokemonListNotAvailable({
    @required String errorMassage,
  }) = PokemonListNotAvailable;
}

part of 'pokemon_list_bloc.dart';

@freezed
abstract class PokemonListEvent with _$PokemonListEvent {
  const factory PokemonListEvent.dataRequested() = DataRequested;

  const factory PokemonListEvent.tileTapped({
    @required Pokemon pokemon,
  }) = TileTapped;
}

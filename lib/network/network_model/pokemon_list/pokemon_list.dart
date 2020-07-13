import 'package:json_annotation/json_annotation.dart';
import '../pokemon/network_pokemon.dart';

part 'pokemon_list.g.dart';

@JsonSerializable()
class PokemonNameList {
  @JsonKey(name: 'results')
  final List<NetworkPokemon> pokemonNames;

  PokemonNameList(this.pokemonNames);

  factory PokemonNameList.fromJson(final Map<String, dynamic> json) {
    return _$PokemonNameListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PokemonNameListToJson(this);
}

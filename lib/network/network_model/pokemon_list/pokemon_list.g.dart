// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonNameList _$PokemonNameListFromJson(Map<String, dynamic> json) {
  return PokemonNameList(
    (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : NetworkPokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PokemonNameListToJson(PokemonNameList instance) =>
    <String, dynamic>{
      'results': instance.pokemonNames,
    };

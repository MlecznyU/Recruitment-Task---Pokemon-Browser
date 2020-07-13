// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkPokemon _$NetworkPokemonFromJson(Map<String, dynamic> json) {
  return NetworkPokemon(
    exp: json['base_experience'] as int,
    height: json['height'] as int,
    id: json['id'] as int,
    name: json['name'] as String,
    sprites: json['sprites'] == null
        ? null
        : NetworkSprites.fromJson(json['sprites'] as Map<String, dynamic>),
    stats: (json['stats'] as List)
        ?.map((e) =>
            e == null ? null : NetworkStat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    types: (json['types'] as List)
        ?.map((e) =>
            e == null ? null : NetworkType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    weight: json['weight'] as int,
  );
}

Map<String, dynamic> _$NetworkPokemonToJson(NetworkPokemon instance) =>
    <String, dynamic>{
      'base_experience': instance.exp,
      'height': instance.height,
      'id': instance.id,
      'name': instance.name,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

NetworkSprites _$NetworkSpritesFromJson(Map<String, dynamic> json) {
  return NetworkSprites(
    backSprite: json['back_default'] as String,
    frontSprite: json['front_default'] as String,
  );
}

Map<String, dynamic> _$NetworkSpritesToJson(NetworkSprites instance) =>
    <String, dynamic>{
      'back_default': instance.backSprite,
      'front_default': instance.frontSprite,
    };

NetworkStat _$NetworkStatFromJson(Map<String, dynamic> json) {
  return NetworkStat(
    statValue: json['base_stat'] as int,
    statName: json['stat'] == null
        ? null
        : NetworkStatName.fromJson(json['stat'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NetworkStatToJson(NetworkStat instance) =>
    <String, dynamic>{
      'base_stat': instance.statValue,
      'stat': instance.statName,
    };

NetworkStatName _$NetworkStatNameFromJson(Map<String, dynamic> json) {
  return NetworkStatName(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$NetworkStatNameToJson(NetworkStatName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

NetworkType _$NetworkTypeFromJson(Map<String, dynamic> json) {
  return NetworkType(
    type: json['type'] == null
        ? null
        : NetworkTypeName.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NetworkTypeToJson(NetworkType instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

NetworkTypeName _$NetworkTypeNameFromJson(Map<String, dynamic> json) {
  return NetworkTypeName(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$NetworkTypeNameToJson(NetworkTypeName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

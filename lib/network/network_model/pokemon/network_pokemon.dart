import 'package:json_annotation/json_annotation.dart';

part 'network_pokemon.g.dart';

@JsonSerializable()
class NetworkPokemon {
  @JsonKey(name: 'base_experience')
  final int exp;
  final int height;
  final int id;
  final String name;
  final NetworkSprites sprites;
  final List<NetworkStat> stats;
  final List<NetworkType> types;
  final int weight;

  NetworkPokemon({
    this.exp,
    this.height,
    this.id,
    this.name,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  factory NetworkPokemon.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonToJson(this);
}

@JsonSerializable()
class NetworkSprites {
  @JsonKey(name: 'back_default')
  final String backSprite;
  @JsonKey(name: 'front_default')
  final String frontSprite;

  NetworkSprites({this.backSprite, this.frontSprite});

  factory NetworkSprites.fromJson(final Map<String, dynamic> json) {
    return _$NetworkSpritesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkSpritesToJson(this);
}

@JsonSerializable()
class NetworkStat {
  @JsonKey(name: 'base_stat')
  final int statValue;
  @JsonKey(name: 'stat')
  final NetworkStatName statName;

  NetworkStat({this.statValue, this.statName});

  factory NetworkStat.fromJson(final Map<String, dynamic> json) {
    return _$NetworkStatFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkStatToJson(this);
}

@JsonSerializable()
class NetworkStatName {
  final String name;

  NetworkStatName({this.name});

  factory NetworkStatName.fromJson(final Map<String, dynamic> json) {
    return _$NetworkStatNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkStatNameToJson(this);
}

@JsonSerializable()
class NetworkType {
  final NetworkTypeName type;

  NetworkType({this.type});

  factory NetworkType.fromJson(final Map<String, dynamic> json) {
    return _$NetworkTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkTypeToJson(this);
}

@JsonSerializable()
class NetworkTypeName {
  final String name;

  NetworkTypeName({this.name});

  factory NetworkTypeName.fromJson(final Map<String, dynamic> json) {
    return _$NetworkTypeNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkTypeNameToJson(this);
}

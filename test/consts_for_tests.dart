import 'package:pokemonbrowser/database/database.dart';
import 'package:pokemonbrowser/network/network_model/pokemon/network_pokemon.dart';
import 'package:pokemonbrowser/repository/model/pokemon.dart';

//values for NetworkPokemon and Pokemon object
const tPokemonId = 1;
const tPokemonName = 'name';
const tPokemonHeight = 1;
const tPokemonExp = 1;
const tPokemonWeight = 1;

//values for NetworkPokemon object
final NetworkSprites tNetworkPokemonSprites = NetworkSprites(
  backSprite: 'sprite',
  frontSprite: 'sprite',
);
final NetworkStatName tNetworkStatName = NetworkStatName(name: 'name');
final NetworkStat tNetworkStat = NetworkStat(
  statName: tNetworkStatName,
  statValue: 1,
);
final List<NetworkStat> tNetworkPokemonStats = [tNetworkStat, tNetworkStat];
final NetworkTypeName tNetworkTypeName = NetworkTypeName(name: 'name');
final NetworkType tNetworkType = NetworkType(type: tNetworkTypeName);
final List<NetworkType> tNetworkPokemonTypes = [tNetworkType, tNetworkType];

final NetworkPokemon tNetworkPokemon = NetworkPokemon(
  id: tPokemonId,
  name: tPokemonName,
  height: tPokemonHeight,
  weight: tPokemonWeight,
  exp: tPokemonExp,
  stats: tNetworkPokemonStats,
  types: tNetworkPokemonTypes,
  sprites: tNetworkPokemonSprites,
);

final List<NetworkPokemon> tNetworkPokemonList = [
  tNetworkPokemon,
  tNetworkPokemon
];

//values for Pokemon object
const PokemonType tPokemonType = PokemonType('name');
const List<PokemonType> tPokemonTypes = [tPokemonType, tPokemonType];
const PokemonStat tPokemonStat = PokemonStat('name', 1);
const List<PokemonStat> tPokemonStats = [tPokemonStat, tPokemonStat];
const tPokemonSprite = 'sprite';
const Pokemon tPokemon = Pokemon(
  id: tPokemonId,
  types: tPokemonTypes,
  stats: tPokemonStats,
  exp: tPokemonExp,
  weight: tPokemonWeight,
  height: tPokemonHeight,
  name: tPokemonName,
  sprite: tPokemonSprite,
);
const tPokemonList = [tPokemon, tPokemon];

//value for MoorPokemon object
final MoorPokemonBaseInfoData tMoorBaseInfoData = MoorPokemonBaseInfoData(
  id: tPokemonId,
  name: tPokemonName,
  height: tPokemonHeight,
  sprite: tPokemonSprite,
  weight: tPokemonWeight,
  exp: tPokemonExp,
);
final MoorTypeData tMoorTypeData =
    MoorTypeData(id: tPokemonId, typeName: tPokemonType.name);
final List<MoorTypeData> tMoorTypes = [tMoorTypeData, tMoorTypeData];
final MoorStatData tMoorStatData = MoorStatData(
  id: tPokemonId,
  statName: tPokemonStat.name,
  value: tPokemonStat.value,
);
final List<MoorStatData> tMoorStats = [tMoorStatData, tMoorStatData];

final Map<String, Object> tJsonSinglePokemon = {
  'base_experience': tPokemonExp,
  'height': tPokemonHeight,
  'id': tPokemonId,
  'name': tPokemonName,
  'sprites': {'front_default': tPokemonSprite},
  'stats': [
    {
      'base_stat': tPokemonStat.value,
      'stat': {'name': tPokemonStat.name}
    },
    {
      'base_stat': tPokemonStat.value,
      'stat': {'name': tPokemonStat.name}
    }
  ],
  'types': [
    {
      'type': {'name': tPokemonType.name}
    },
    {
      'type': {'name': tPokemonType.name}
    }
  ],
  'weight': tPokemonWeight,
};
final List<Pokemon> tListOfPokemonsWithName = [
  const Pokemon(name: tPokemonName),
  const Pokemon(name: tPokemonName)
];
final Map<String, List<Map<String, String>>> tJsonListOfPokemons = {
  'results': [
    {'name': tPokemonName},
    {'name': tPokemonName}
  ]
};

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

part 'pokemon_service.chopper.dart';

@singleton
@ChopperApi()
abstract class PokemonService extends ChopperService {
  @factoryMethod
  static PokemonService create() {
    final client = ChopperClient(
      baseUrl: 'https://pokeapi.co/api/v2/',
      services: [_$PokemonService()],
      converter: const JsonConverter(),
    );
    return _$PokemonService(client);
  }

  @Get(path: 'pokemon?limit=10')
  Future<Response> getTenPokemons();

  @Get(path: 'pokemon/{name}')
  Future<Response> getSinglePokemon(@Path('name') final String name);
}

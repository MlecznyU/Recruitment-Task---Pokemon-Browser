// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PokemonService extends PokemonService {
  _$PokemonService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PokemonService;

  @override
  Future<Response<dynamic>> getTenPokemons() {
    final $url = 'pokemon?limit=10';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getSinglePokemon(String name) {
    final $url = 'pokemon/$name';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}

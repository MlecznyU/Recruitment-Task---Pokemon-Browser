import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import '../database/database.dart';
import 'model/pokemon.dart';
import '../database/pokemon/pokemon_dao.dart';
import '../network/network_model/pokemon/network_pokemon.dart';
import '../network/network_model/pokemon_list/pokemon_list.dart';
import '../network/pokemon_service.dart';

@lazySingleton
class PokemonRepository {
  final PokemonService _pokemonService;
  final PokemonDao _dao;

  PokemonRepository(this._pokemonService, this._dao);

  Future<Either<Pokemon, String>> getSinglePokemon(
    final String name,
  ) async {
    try {
      final networkResponse = await _pokemonService.getSinglePokemon(name);

      if (networkResponse.isSuccessful) {
        final networkPokemon = NetworkPokemon.fromJson(
            networkResponse.body as Map<String, dynamic>);
        final pokemon = Pokemon.fromNetwork(networkPokemon);
        return Left(pokemon);
      } else {
        return Right(networkResponse.error.toString());
      }
    } on SocketException catch (_) {
      return const Right('No internet connection');
    }
  }

  Future<Either<List<Pokemon>, String>> getListOfPokemons() async {
    final listOfMoorPokemons = await _dao.getAllPokemons();

    if (listOfMoorPokemons != null) {
      if (listOfMoorPokemons.isNotEmpty) {
        return Left(listOfMoorPokemons.map(Pokemon.fromMoor).toList());
      }
    }

    try {
      final networkResponse = await _pokemonService.getTenPokemons();

      if (networkResponse.isSuccessful) {
        final List<NetworkPokemon> pokemonNameList = PokemonNameList.fromJson(
          networkResponse.body as Map<String, dynamic>,
        ).pokemonNames;

        final List<Pokemon> pokemonList = [];

        for (final pokemonWithName in pokemonNameList) {
          await getSinglePokemon(pokemonWithName.name).then(
            (value) => value.fold(
              pokemonList.add,
              (r) => Right(r),
            ),
          );
        }
        insertPokemons(pokemonList);
        return Left(pokemonList);
      } else {
        return Right(networkResponse.error.toString());
      }
    } on SocketException catch (_) {
      return const Right('No internet connection');
    }
  }

  Future<void> insertPokemons(List<Pokemon> pokemonList) async {
    for (final pokemon in pokemonList) {
      await _dao.insertBaseInfo(MoorPokemonBaseInfoCompanion(
        id: Value(pokemon.id),
        weight: Value(pokemon.weight),
        sprite: Value(pokemon.sprite),
        exp: Value(pokemon.exp),
        height: Value(pokemon.height),
        name: Value(pokemon.name),
      ));

      for (final type in pokemon.types) {
        await _dao.insertType(MoorTypeCompanion(
          id: Value(pokemon.id),
          typeName: Value(type.name),
        ));
      }
      for (final stat in pokemon.stats) {
        await _dao.insertStat(MoorStatCompanion(
          id: Value(pokemon.id),
          statName: Value(stat.name),
          value: Value(stat.value),
        ));
      }
    }
  }
}

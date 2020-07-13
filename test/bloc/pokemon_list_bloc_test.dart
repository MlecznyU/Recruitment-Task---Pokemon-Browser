import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemonbrowser/bloc/pokemon_list_bloc.dart';
import 'package:pokemonbrowser/repository/pokemon_repository.dart';

import '../consts_for_tests.dart';

class PokemonRepositoryMock extends Mock implements PokemonRepository {}

PokemonRepositoryMock _repositoryMock;
GlobalKey<NavigatorState> _globalKey;

// ignore: type_annotate_public_apis, always_declare_return_types
main() {
  setUp(() {
    _repositoryMock = PokemonRepositoryMock();
    _globalKey = GlobalKey<NavigatorState>();
  });

  blocTest(
    'emits nothing when nothing added',
    build: () async => PokemonListBloc(_repositoryMock, _globalKey),
    expect: [],
  );
  blocTest(
    'emits nothing when TileTapped event added',
    build: () async => PokemonListBloc(_repositoryMock, _globalKey),
    act: (bloc) async => bloc.add(TileTapped(pokemon: tPokemon)),
    expect: [],
  );
  blocTest(
    'emits PokemonListState.pokemonListAvailable when '
    'dataRequested event added and pokemonRepository returns '
    'left(list of movies)',
    build: () async {
      when(_repositoryMock.getListOfPokemons())
          .thenAnswer((_) => Future.value(left(tPokemonList)));
      return PokemonListBloc(_repositoryMock, _globalKey);
    },
    act: (bloc) async => bloc.add(const DataRequested()),
    expect: [PokemonListAvailable(pokemonList: tPokemonList)],
    verify: (_) async => verify(_repositoryMock.getListOfPokemons()).called(1),
  );
  blocTest(
    'emits PokemonListState.pokemonListNotAvailable when '
    'dataRequested event added and pokemonRepository returns '
    'right(errorMessage)',
    build: () async {
      when(_repositoryMock.getListOfPokemons())
          .thenAnswer((_) => Future.value(right('error message')));
      return PokemonListBloc(_repositoryMock, _globalKey);
    },
    act: (bloc) async => bloc.add(const DataRequested()),
    expect: [const PokemonListNotAvailable(errorMassage: 'error message')],
    verify: (_) async => verify(_repositoryMock.getListOfPokemons()).called(1),
  );
}

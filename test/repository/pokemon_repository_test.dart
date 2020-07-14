import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:pokemonbrowser/database/database.dart';
import 'package:pokemonbrowser/database/pokemon/pokemon_dao.dart';
import 'package:pokemonbrowser/network/pokemon_service.dart';
import 'package:pokemonbrowser/repository/pokemon_repository.dart';

import '../consts_for_tests.dart';

class PokemonServiceMock extends Mock implements PokemonService {}

class PokemonDaoMock extends Mock implements PokemonDao {}

//// There are problems when trying to mock [Response],
//// but the code compiles despite the error message and
//// all tests work as expected
// ignore: must_be_immutable
class ResponseMock extends Mock implements Response {}

PokemonServiceMock _pokemonServiceMock;
PokemonDaoMock _daoMock;
PokemonRepository _pokemonRepository;
////Two different [Response] are required because some tests need more then
/// one [ResponseMock] to pass
ResponseMock _responseMock;
ResponseMock _responseMock2;

void main() {
  setUp(() {
    _responseMock = ResponseMock();
    _responseMock2 = ResponseMock();
    _pokemonServiceMock = PokemonServiceMock();
    _daoMock = PokemonDaoMock();
    _pokemonRepository = PokemonRepository(_pokemonServiceMock, _daoMock);
    when(_pokemonServiceMock.getSinglePokemon(tPokemonName))
        .thenAnswer((_) => Future.value(_responseMock));
    when(_pokemonServiceMock.getTenPokemons())
        .thenAnswer((_) => Future.value(_responseMock2));
  });

  test(
      'getSinglePokemon returns Left with Pokemon object when '
      'networkResponse is successful', () async {
    when(_responseMock.isSuccessful).thenAnswer((_) => true);
    when(_responseMock.body).thenAnswer((_) => tJsonSinglePokemon);

    final result = await _pokemonRepository.getSinglePokemon(tPokemonName);

    result.fold((l) => expect(l, tPokemon), (r) => fail(''));
  });

  test(
      'getSinglePokemon returns Right with error message when '
      'networkResponse is not successful', () async {
    when(_responseMock.isSuccessful).thenAnswer((_) => false);
    when(_responseMock.error).thenAnswer((_) => 'error message');

    final result = await _pokemonRepository.getSinglePokemon(tPokemonName);

    result.fold((l) => fail('error'), (r) => expect(r, 'error message'));
  });

  test(
      'getAllPokemons returns Left with List of Pokemon objects when '
      'dao returns list of pokemons', () async {
    when(_daoMock.getAllPokemons())
        .thenAnswer((_) async => Future.value(tPokemonList));

    final result = await _pokemonRepository.getListOfPokemons();

    result.fold((l) => expect(l, tPokemonList), (r) => fail(''));
  });
  test(
      'getAllPokemons returns Left with List of Pokemon objects when '
      'networkResponse is Successful', () async {
    when(_responseMock2.isSuccessful).thenAnswer((_) => true);
    when(_responseMock2.body).thenAnswer((_) => tJsonListOfPokemons);
    when(_responseMock.isSuccessful).thenAnswer((_) => true);
    when(_responseMock.body).thenAnswer((_) => tJsonSinglePokemon);

    final result = await _pokemonRepository.getListOfPokemons();

    result.fold((l) => expect(l, tPokemonList), (r) => fail(''));
  });
  test(
      'getAllPokemons returns Right with error message when '
      'networkResponse is not Successful', () async {
    when(_responseMock2.isSuccessful).thenAnswer((_) => false);
    when(_responseMock2.error).thenAnswer((_) => 'error message');

    final result = await _pokemonRepository.getListOfPokemons();

    result.fold((l) => fail(''), (r) => expect(r, 'error message'));
  });

  test('insertPokemons calls insertPokemons, insertPokemons, insertStat on dao',
      () async {
    await _pokemonRepository.insertPokemons(tPokemonList);

    verify(_daoMock.insertBaseInfo(MoorPokemonBaseInfoCompanion(
      id: Value(tPokemon.id),
      weight: Value(tPokemon.weight),
      sprite: Value(tPokemon.sprite),
      exp: Value(tPokemon.exp),
      height: Value(tPokemon.height),
      name: Value(tPokemon.name),
    )));

    verify(_daoMock.insertType(
      MoorTypeCompanion(typeName: Value(tPokemonType.name)),
      tPokemonId,
    ));

    verify(_daoMock.insertStat(
      MoorStatCompanion(
        statName: Value(tPokemonStat.name),
        value: Value(tPokemonStat.value),
      ),
      tPokemonId,
    ));
  });
}

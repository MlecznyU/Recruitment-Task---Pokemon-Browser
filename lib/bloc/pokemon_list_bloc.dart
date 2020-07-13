import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../repository/model/pokemon.dart';
import '../ui/screens/pokemon_details/navigation.dart';
import '../repository/pokemon_repository.dart';

part 'pokemon_list_event.dart';

part 'pokemon_list_state.dart';

part 'pokemon_list_bloc.freezed.dart';

@lazySingleton
class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  final PokemonRepository _pokemonRepository;
  final GlobalKey<NavigatorState> _globalKey;

  PokemonListBloc(
    this._pokemonRepository,
    this._globalKey,
  ) : super(const PokemonListState.listInitial());

  @override
  Stream<PokemonListState> mapEventToState(
    PokemonListEvent event,
  ) async* {
    yield* event.map(
      dataRequested: getData,
      tileTapped: onTileTapped,
    );
  }

  Stream<PokemonListState> getData(final DataRequested event) async* {
    final pokemonList = await _pokemonRepository.getListOfPokemons();

    yield pokemonList.fold(
        (l) => PokemonListState.pokemonListAvailable(pokemonList: l),
        (r) => PokemonListState.pokemonListNotAvailable(errorMassage: r));
  }

  Stream<PokemonListState> onTileTapped(final TileTapped event) async* {
    _globalKey.currentState.push(PokemonDetailsRoute.get(event.pokemon));
  }
}

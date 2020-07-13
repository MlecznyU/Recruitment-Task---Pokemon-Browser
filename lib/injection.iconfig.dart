// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:pokemonbrowser/database/database.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:pokemonbrowser/injection.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemonbrowser/database/pokemon/pokemon_dao.dart';
import 'package:pokemonbrowser/network/pokemon_service.dart';
import 'package:pokemonbrowser/repository/pokemon_repository.dart';
import 'package:pokemonbrowser/bloc/pokemon_list_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Database>(() => Database());
  g.registerLazySingleton<GlobalKey<NavigatorState>>(() => registerModule.key);
  g.registerLazySingleton<PokemonDao>(() => PokemonDao(g<Database>()));
  g.registerLazySingleton<PokemonRepository>(
      () => PokemonRepository(g<PokemonService>(), g<PokemonDao>()));
  g.registerLazySingleton<PokemonListBloc>(() =>
      PokemonListBloc(g<PokemonRepository>(), g<GlobalKey<NavigatorState>>()));

  //Eager singletons must be registered in the right order
  g.registerSingleton<PokemonService>(PokemonService.create());
}

class _$RegisterModule extends RegisterModule {}

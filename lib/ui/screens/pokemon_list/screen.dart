import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'view_states/list_no_available.dart';

import '../../../bloc/pokemon_list_bloc.dart';
import '../app_components/loading_indicator_view.dart';
import 'view_states/list_of_movies.dart';

class PokemonListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PokemonListBloc _pokemonListBloc =
        BlocProvider.of<PokemonListBloc>(context);

    return BlocBuilder<PokemonListBloc, PokemonListState>(
      builder: (BuildContext context, PokemonListState state) {
        return state.map(
          listInitial: (_) => _initScreen(_pokemonListBloc),
          pokemonListNotAvailable: buildListNoAvailable,
          pokemonListAvailable: (state) => buildListOfMovies(
            state,
            _pokemonListBloc,
          ),
        ); //
      },
    );
  }

  Widget _initScreen(final PokemonListBloc pokemonListBloc) {
    pokemonListBloc.add(const DataRequested());
    return buildLoadingIndicatorView();
  }
}

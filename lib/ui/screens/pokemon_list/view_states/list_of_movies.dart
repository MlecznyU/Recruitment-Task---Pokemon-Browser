import 'package:flutter/material.dart';
import '../../../../bloc/pokemon_list_bloc.dart';
import '../../../../repository/model/pokemon.dart';
import '../../../constants/style.dart';
import '../../app_components/color_resolver.dart';
import '../../app_components/responsive_scaffold.dart';
import '../components/pokemon_tile.dart';

Widget buildListOfMovies(
  final PokemonListAvailable state,
  final PokemonListBloc pokemonListBloc,
) {
  return SafeArea(
    child: ResponsiveScaffold(
      bodyBuilder: (BuildContext context, SizeInformation constrains) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'POKEMON BROWSER',
                style: kListTitleTextStyle,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    state.pokemonList.length,
                    (index) {
                      final Pokemon pokemon = state.pokemonList[index];

                      return buildPokemonTile(
                        pokemon,
                        getTypeColor(pokemon.types[0].name),
                        () => pokemonListBloc.add(
                          TileTapped(pokemon: pokemon),
                        ),
                        constrains,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}

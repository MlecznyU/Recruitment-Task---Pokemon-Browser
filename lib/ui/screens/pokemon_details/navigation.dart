import 'package:flutter/material.dart';
import '../../../repository/model/pokemon.dart';
import 'screen.dart';

class PokemonDetailsRoute {
  static Route get(final Pokemon pokemon) {
    return MaterialPageRoute(
      builder: (BuildContext context) => PokemonDetailsScreen(pokemon),
    );
  }
}

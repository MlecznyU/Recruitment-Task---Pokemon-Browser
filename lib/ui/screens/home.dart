import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/pokemon_list_bloc.dart';
import '../../injection.dart';
import 'pokemon_list/screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<PokemonListBloc>(),
      child: PokemonListScreen(),
    );
  }
}

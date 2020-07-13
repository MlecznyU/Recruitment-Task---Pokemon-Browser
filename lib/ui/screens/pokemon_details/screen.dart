import 'package:flutter/material.dart';
import '../../../repository/model/pokemon.dart';
import '../app_components/color_resolver.dart';
import '../../../injection.dart';
import '../../constants/style.dart';
import '../app_components/responsive_scaffold.dart';
import 'components/stats_and_features.dart';
import 'components/type_boxes.dart';

class PokemonDetailsScreen extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailsScreen(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveScaffold(
        backgroundColor: getTypeColor(pokemon.types[0].name),
        bodyBuilder: (BuildContext context, SizeInformation constrains) {
          return Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16),
                width: constrains.width,
                child: Image.asset(
                  'assets/images/pokeball.png',
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 34,
                          ),
                          onPressed: () => getIt<GlobalKey<NavigatorState>>()
                              .currentState
                              .pop(),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          pokemon.name.toUpperCase(),
                          style: kDetailsNameTextStyle,
                        ),
                        Row(
                          children: buildTypeBoxes(
                            constrains: constrains,
                            types: pokemon.types,
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildStatsAndFeatures(constrains, pokemon),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: constrains.height * 0.1),
                  Container(
                    width: constrains.width,
                    child: Image.network(
                      pokemon.sprite,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

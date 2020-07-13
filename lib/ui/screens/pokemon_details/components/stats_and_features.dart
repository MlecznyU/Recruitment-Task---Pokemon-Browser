import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../repository/model/pokemon.dart';
import '../../../constants/style.dart';
import '../../app_components/color_resolver.dart';
import '../../app_components/responsive_scaffold.dart';

Widget buildStatsAndFeatures(
  final SizeInformation constrains,
  final Pokemon pokemon,
) {
  return Container(
    width: constrains.width,
    height: constrains.height * 0.5,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
      color: Colors.white,
    ),
    child: Stack(
      children: <Widget>[
        Center(
          child: FittedBox(
            child: Image.asset('assets/images/pokedex.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: ListView(children: buildStats(constrains, pokemon)),
        )
      ],
    ),
  );
}

List<Widget> buildStats(
  final SizeInformation constrains,
  final Pokemon pokemon,
) {
  final List<Widget> stats = [
    SizedBox(height: constrains.height * 0.2),
    Row(
      children: <Widget>[
        Container(
          width: constrains.width * 0.5,
          child: const AutoSizeText(
            'Height: ',
            style: kStatsAndFeaturesTextStyle,
          ),
        ),
        AutoSizeText(
          '${pokemon.height}0 cm',
          style: kStatsAndFeaturesValueTextStyle,
        )
      ],
    ),
    SizedBox(height: constrains.height * 0.02),
    Row(
      children: <Widget>[
        Container(
          width: constrains.width * 0.5,
          child: const AutoSizeText(
            'Weight: ',
            style: kStatsAndFeaturesTextStyle,
          ),
        ),
        AutoSizeText(
          '${(pokemon.weight * 0.1).round()} kg',
          style: kStatsAndFeaturesValueTextStyle,
        )
      ],
    ),
    SizedBox(height: constrains.height * 0.02),
  ];

  pokemon.stats.forEach((stat) {
    stats.add(Row(
      children: <Widget>[
        Container(
          width: constrains.width * 0.3,
          child: AutoSizeText(
            '${stat.name}: ',
            style: kStatsAndFeaturesTextStyle,
          ),
        ),
        Container(
          width: constrains.width * 0.1,
          child: AutoSizeText(
            '${stat.value}: ',
            style: kStatsAndFeaturesValueTextStyle,
          ),
        ),
        Container(
          color: getTypeColor(pokemon.types[0].name),
          height: 3,
          width: stat.value.toDouble() * 0.01 * constrains.width * 0.4,
        ),
      ],
    ));
    stats.add(SizedBox(height: constrains.height * 0.02));
  });

  return stats;
}

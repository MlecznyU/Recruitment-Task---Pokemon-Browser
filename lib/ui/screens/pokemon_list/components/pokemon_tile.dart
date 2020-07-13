import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../repository/model/pokemon.dart';
import '../../../constants/style.dart';
import '../../app_components/responsive_scaffold.dart';

/// percent value of the screen
const double backgroundImageSize = 0.35;
const double foregroundImageSize = 0.2;

Widget buildPokemonTile(
  final Pokemon pokemon,
  final Color color,
  final Function() onTap,
  final SizeInformation constrains,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: constrains.width * backgroundImageSize,
                height: constrains.height * backgroundImageSize,
                child: Image.asset('assets/images/pokeball.png'),
              ),
              Container(
                width: constrains.width * backgroundImageSize,
                height: constrains.height * backgroundImageSize,
                child: Image.network(
                  pokemon.sprite,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                child: AutoSizeText(
                  pokemon.name,
                  textAlign: TextAlign.center,
                  style: kTileNameTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

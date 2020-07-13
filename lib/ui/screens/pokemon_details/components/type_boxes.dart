import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../repository/model/pokemon.dart';
import '../../../constants/style.dart';
import '../../app_components/color_resolver.dart';
import '../../app_components/responsive_scaffold.dart';

List<Widget> buildTypeBoxes({
  @required final SizeInformation constrains,
  @required final List<PokemonType> types,
}) {
  final List<Widget> containers = [Container()];

  types.forEach((type) {
    containers.add(
      Padding(
        padding: const EdgeInsets.only(right: 8, top: 16),
        child: Container(
          width: constrains.width * 0.2,
          height: constrains.height * 0.04,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: getTypeColor(type.name),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: AutoSizeText(
            type.name,
            textAlign: TextAlign.center,
            style: kStatsAndFeaturesTextStyle,
          ),
        ),
      ),
    );
  });

  return containers;
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../app_components/responsive_scaffold.dart';
import '../../../../bloc/pokemon_list_bloc.dart';
import '../../../constants/style.dart';

Widget buildListNoAvailable(PokemonListNotAvailable state) {
  return ResponsiveScaffold(
    bodyBuilder: (BuildContext context, SizeInformation constrains) {
      return Container(
        width: constrains.width,
        height: constrains.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AutoSizeText(
                'Something went wrong. Reset the application and '
                'check the connection to the internet. '
                ' An error occurred with the following content ',
                textAlign: TextAlign.center,
                style: kErrorTextStyle,
              ),
              AutoSizeText(
                state.errorMassage,
                textAlign: TextAlign.center,
                style: kErrorTextStyle,
              )
            ],
          ),
        ),
      );
    },
  );
}

import 'package:flutter/material.dart';

//// This is a custom [Scaffold] widget that stores all
//// boiler code to facilitate the setting of a responsive screen.

class ResponsiveScaffold extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Drawer drawer;
  final Widget floatingActionButton;
  final Widget bottomNavigationBar;
  final Widget Function(
    BuildContext context,
    SizeInformation constrains,
  ) bodyBuilder;
  final Color backgroundColor;

  const ResponsiveScaffold({
    Key key,
    @required this.bodyBuilder,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final sizeInformation = SizeInformation(width, height);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      body:
          Builder(builder: (context) => bodyBuilder(context, sizeInformation)),
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
    );
  }
}

class SizeInformation {
  final double width;
  final double height;

  const SizeInformation(this.width, this.height);
}

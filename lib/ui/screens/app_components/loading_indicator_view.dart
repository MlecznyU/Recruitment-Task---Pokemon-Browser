import 'package:flutter/material.dart';

Widget buildLoadingIndicatorView() {
  return Container(
    color: Colors.white,
    child: Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.white,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
      ),
    ),
  );
}

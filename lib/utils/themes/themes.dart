import 'package:flutter/material.dart';

Appcolor appcolor = AppDefaultColor();

abstract class Appcolor {
  final Color primaryColor;
  final Color secondaryGradient1;
  final Color secondaryGradient2;
  final Color textColor;
  final Color background;
  final Color successColor;
  final Color errorColor;
  final Color teritiaryColor;
  final Color iconColor;

  Appcolor({
    required this.primaryColor,
    required this.secondaryGradient1,
    required this.secondaryGradient2,
    required this.textColor,
    required this.background,
    required this.successColor,
    required this.errorColor,
    required this.teritiaryColor,
    required this.iconColor,
  });
}

class AppDefaultColor extends Appcolor {
  AppDefaultColor()
    : super(
        primaryColor: Colors.black,
        secondaryGradient1: Color.fromRGBO(178, 43, 46, 1),
        secondaryGradient2: Color.fromRGBO(209, 64, 62, 1),
        textColor: Colors.white70,
        background: Colors.black,
        successColor: Colors.green,
        errorColor: Colors.red,
        teritiaryColor: Colors.grey,
        iconColor: Colors.white,
      );
}

import 'package:flutter/material.dart';

Appcolor appcolor = AppDefaultColor();

abstract class Appcolor {
  final Color primaryColor;
  final Color secondaryGradient1;
  final Color secondaryGradient2;
  final Color imdbGradient1;
  final Color imdbGradient2;
  final Color textColor;
  final Color background;
  final Color textfieldBackground;
  final Color hintTextColor;
  final Color successColor;
  final Color errorColor;
  final Color teritiaryColor;
  final Color iconColor;

  Appcolor({
    required this.primaryColor,
    required this.secondaryGradient1,
    required this.secondaryGradient2,
    required this.imdbGradient1,
    required this.imdbGradient2,
    required this.textColor,
    required this.background,
    required this.textfieldBackground,
    required this.hintTextColor,
    required this.successColor,
    required this.errorColor,
    required this.teritiaryColor,
    required this.iconColor,
  });
}

class AppDefaultColor extends Appcolor {
  AppDefaultColor()
    : super(
        primaryColor: Colors.black26,
        secondaryGradient1: Color.fromRGBO(178, 43, 46, 1),
        secondaryGradient2: Color.fromRGBO(209, 64, 62, 1),
        imdbGradient1: Color.fromRGBO(198, 153, 4, 1),
        imdbGradient2: Color.fromRGBO(244, 192, 5, 1),
        textColor: Colors.white70,
        background: Colors.black,
        textfieldBackground: Colors.grey.shade900,
        hintTextColor: Colors.white24,
        successColor: Colors.green.shade900,
        errorColor: Colors.red,
        teritiaryColor: Colors.grey,
        iconColor: Colors.white,
      );
}

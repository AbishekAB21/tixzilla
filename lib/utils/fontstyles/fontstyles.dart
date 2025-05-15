import 'package:flutter/material.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class Fontstyles {
  static TextStyle bebasNeue25px(BuildContext context) {
    return TextStyle(
      fontFamily: 'BebasNeue',
      fontSize: 25,
      color: appcolor.iconColor,
    );
  }

  static TextStyle inter15pxBlack(BuildContext context, [bool iswhite = false]) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: iswhite? appcolor.iconColor : appcolor.background,
    );
  }

  static TextStyle inter600w(BuildContext context) {
    return TextStyle(
      color: appcolor.iconColor,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    );
  }

  static TextStyle inter600w20px(BuildContext context) {
    return TextStyle(
      color: appcolor.iconColor,
      fontWeight: FontWeight.w800,
      fontSize: 16,
      fontFamily: 'Inter',
    );
  }

  static TextStyle interBold(BuildContext context) {
    return TextStyle(
      color: appcolor.iconColor,
      fontWeight: FontWeight.w800,
      fontFamily: 'Inter',
    );
  }

  static TextStyle inter25px600w(BuildContext context) {
    return TextStyle(
      color: appcolor.iconColor,
      fontWeight: FontWeight.w600,
      fontSize: 25,
      fontFamily: 'Inter',
    );
  }

  static TextStyle inter600wHintStyled(BuildContext context) {
    return TextStyle(
      color: appcolor.hintTextColor,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      fontFamily: 'Inter',
    );
  }

  static TextStyle inter600wverySmall(BuildContext context, [bool isWhite = false]) {
    return TextStyle(
      color: isWhite? appcolor.iconColor : appcolor.teritiaryColor,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      fontFamily: 'Inter',
    );
  }

  static TextStyle inter600wIncrediblySmall(BuildContext context) {
    return TextStyle(
      color: appcolor.teritiaryColor,
      fontWeight: FontWeight.w600,
      fontSize: 10,
      fontFamily: 'Inter',
    );
  }

  static TextStyle inter600wIncrediblySmallBold(BuildContext context) {
    return TextStyle(
      color: appcolor.iconColor,
      fontWeight: FontWeight.w800,
      fontSize: 10,
      fontFamily: 'Inter',
    );
  }
}

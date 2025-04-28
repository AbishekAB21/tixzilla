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

  static TextStyle inter600w(BuildContext context) {
    return TextStyle(
      color: appcolor.iconColor,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    );
  }
}

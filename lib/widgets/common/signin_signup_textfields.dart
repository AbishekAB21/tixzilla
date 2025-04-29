import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class SigninSignupTextfields extends StatelessWidget {
  final String hinttext;
  final Icon suffixIcon;
  const SigninSignupTextfields({
    super.key,
    required this.hinttext,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        cursorColor: appcolor.iconColor,
        style: Fontstyles.inter600w(context),
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: Fontstyles.inter600wHintStyled(context),
          hintFadeDuration: Duration(milliseconds: 500),
          filled: true,
          isDense: true,
          fillColor: appcolor.background,
          suffixIcon: suffixIcon,
          suffixIconColor: appcolor.iconColor,
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appcolor.secondaryGradient1),
          ),
        ),
      ),
    );
  }
}

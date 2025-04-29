import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        padding: EdgeInsets.all(12.5),
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [appcolor.secondaryGradient1, appcolor.secondaryGradient2],
          ),
          backgroundBlendMode: BlendMode.colorDodge,
        ),
        child: Center(
          child: Text(text, style: Fontstyles.inter600w20px(context)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const CustomButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: appcolor.background.withValues(alpha: 0.56),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [appcolor.secondaryGradient1, appcolor.secondaryGradient2],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: appcolor.secondaryGradient1.withValues(
            alpha: 0.5,
          ), // Ripple color
          splashFactory: InkSparkle.splashFactory,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(12.5),
            child: Center(
              child: Text(text, style: Fontstyles.inter600w20px(context)),
            ),
          ),
        ),
      ),
    );
  }
}

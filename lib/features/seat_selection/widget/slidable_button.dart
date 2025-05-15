import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class SlidableButton extends StatelessWidget {
  final Future<dynamic>? Function()? onSubmit;
  const SlidableButton({super.key, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
      child: SlideAction(
        text: "Proceed and pay",
        textStyle: Fontstyles.inter15pxBlack(context, true),
        height: 55,
        elevation: 3,
        outerColor: appcolor.secondaryGradient1.withRed(-120),
        animationDuration: Duration(milliseconds: 500),
        sliderRotate: true,
        sliderButtonIcon: Image.asset(
          "assets/images/rupee.png",
          width: 40, // Smaller icon
          height: 40,
        ),
        sliderButtonIconPadding: 0.0,
        onSubmit: onSubmit,
      ),
    );
  }
}

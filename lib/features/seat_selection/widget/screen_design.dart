import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/features/seat_selection/widget/custom_clipper.dart';

class ScreenDesign extends StatelessWidget {
  const ScreenDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: ScreenCurveClipper(),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(4),
            ),
            gradient: LinearGradient(
              colors: [
                appcolor.iconColor..withValues(alpha: 0.9),
                appcolor.iconColor.withValues(alpha: 0.7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: appcolor.background.withValues(alpha: 0.3),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              "All eyez on me",
              style: Fontstyles.inter15pxBlack(context).copyWith(
                shadows: [
                  Shadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

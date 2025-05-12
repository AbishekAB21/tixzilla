import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class TimeSlotButton extends StatelessWidget {
  final String time;
  const TimeSlotButton({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.transparent,
          border: Border.all(color: appcolor.background),
        ),
        child: Text(
          time,
          style: Fontstyles.inter600wverySmall(context, true),
        ),
      ),
    );
  }
}

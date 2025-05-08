import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class ProfileTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon tileIcon;
  final void Function()? onTap;
  const ProfileTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.tileIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: appcolor.secondaryGradient1.withValues(
        alpha: 0.5,
      ), // Ripple color
      splashFactory: InkSparkle.splashFactory,
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: appcolor.textfieldBackground.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              tileIcon,
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Fontstyles.interBold(context)),
                  Text(subtitle, style: Fontstyles.inter600wverySmall(context)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

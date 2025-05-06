import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class IMDBSection extends StatelessWidget {
  final String ratings;
  const IMDBSection({super.key, required this.ratings});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: appcolor.textfieldBackground.withValues(alpha: 0.56),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.star, color: appcolor.secondaryGradient2),
              SizedBox(width: 2.0),
              Row(
                children: [
                  Text("$ratings/5", style: Fontstyles.interBold(context)),
                  SizedBox(width: 5.0),
                  Text(
                    '(10M Votes) >',
                    style: Fontstyles.inter600wverySmall(context),
                  ),
                ],
              ),
            ],
          ),

          Image.asset("assets/images/imdb.jpeg", height: 32),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class PaymentModeTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  const PaymentModeTile({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: appcolor.textfieldBackground.withValues(alpha: 0.66),
        borderRadius: BorderRadius.circular(10.0),
      ),

      child: Row(
        children: [
          Image.asset(imageUrl, width: 40),
          SizedBox(width: 20),
          Text(
           title,
            style: Fontstyles.inter600w(context,),
          ),
        ],
      ),
    );
  }
}

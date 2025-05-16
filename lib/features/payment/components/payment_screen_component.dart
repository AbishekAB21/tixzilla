import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/features/payment/widgets/payment_mode_tile.dart';

class PaymentScreenComponent extends StatelessWidget {
  const PaymentScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.background,

      appBar: AppBar(
        backgroundColor: appcolor.background,
        iconTheme: IconThemeData(color: appcolor.iconColor),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/rupee.png"),
                backgroundColor: appcolor.textfieldBackground,
                radius: 15,
              ),
              SizedBox(height: 5.0),
              Text(
                "Total payable amount",
                style: Fontstyles.inter600w(context),
              ),
              SizedBox(height: 5.0),
              Text("₹400", style: Fontstyles.inter25px600w(context)),
              SizedBox(height: 30),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Choose your mode of payment",
                  style: Fontstyles.inter600wverySmall(context, true),
                ),
              ),

              SizedBox(height: 15),
              PaymentModeTile(
                imageUrl: "assets/images/bhim4.jpeg",
                title: "BHIM UPI - Gpay, Paytm, PhonePe",
              ),
              SizedBox(height: 10),
              PaymentModeTile(
                imageUrl: "assets/images/card.jpeg",
                title: "Card - Credit or Debit",
              ),
              SizedBox(height: 10),
              PaymentModeTile(
                imageUrl: "assets/images/online_banking.jpeg",
                title: "INB - Internet Banking",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

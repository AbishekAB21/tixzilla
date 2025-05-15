import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/features/seat_selection/widget/screen_design.dart';

class SeatSelectionComponent extends StatelessWidget {
  const SeatSelectionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.background,
      appBar: AppBar(
        backgroundColor: appcolor.background,
        iconTheme: IconThemeData(color: appcolor.iconColor),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            // Movie Theatre Screen depiction
            ScreenDesign(),

            SizedBox(height: 10.0),

            // Seats
            /*
            
            Selected seats : secondaryGradient1 + secondaryGradient1 Gradient
            Booked seats : textfieldcolor
            Available seates : iconColor..withValues(alpha: 0.9) + iconColor..withValues(alpha: 0.7) Gradient

             */

            /* 

            CTA Button "Confirm seats" -> Open bottomsheet that shows no of seats, total price and a 
            slidable button that says "Proceed to Payment" 

            use slide_to_act: ^2.0.2 package 

            */
          ],
        ),
      ),
    );
  }
}

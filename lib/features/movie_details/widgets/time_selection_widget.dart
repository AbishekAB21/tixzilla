import 'package:flutter/material.dart';
import 'package:tixzilla/features/seat_selection/containers/seat_selection_container.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/widgets/common/custom_button.dart';
import 'package:tixzilla/features/movie_details/widgets/time_slot_button.dart';
import 'package:tixzilla/widgets/common/fade_page_transition.dart';

class TimeSelectionWidget extends StatelessWidget {
  const TimeSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
      decoration: BoxDecoration(
        color: appcolor.textfieldBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Show timings", style: Fontstyles.inter600w(context)),
          SizedBox(height: 20.0),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset("assets/images/SpiderMan.jpeg", width: 50),
              ),
              SizedBox(width: 10.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Spider-man into the spider verse",
                    style: Fontstyles.inter600wverySmall(context),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "English",
                        style: Fontstyles.inter600wverySmall(context),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "IMAX",
                        style: Fontstyles.inter600wverySmall(context),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TimeSlotButton(time: "11:00 AM"),
              SizedBox(width: 10),
              TimeSlotButton(time: "2:00 PM"),
              SizedBox(width: 10),
              TimeSlotButton(time: "6:00 PM"),
              SizedBox(width: 10),
              TimeSlotButton(time: "10:00 PM"),
            ],
          ),

          SizedBox(height: 40),

          // Button
          CustomButton(
            text: "Proceed",
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                CustomFadeTransition(route: SeatSelectionContainer()),
              );
            },
          ),
        ],
      ),
    );
  }
}

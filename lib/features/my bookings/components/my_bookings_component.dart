import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tixzilla/features/my%20bookings/widgets/previous_bookings_widget.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/features/my%20bookings/widgets/ticket_widget.dart';

class MyBookingsComponent extends StatelessWidget {
  const MyBookingsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: appcolor.background, toolbarHeight: 20),
      backgroundColor: appcolor.background,
      body:
      // Active bookings (Horizontal Scroll)
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTicketWidget(),
              SizedBox(height: 20),
              Text(
                "Ordered on : ${DateFormat('d EEE y').format(DateTime.now())} | ${DateFormat('hh:mm a').format(DateTime.now())}",
                style: Fontstyles.inter600wverySmall(context),
              ),
              SizedBox(height: 5),
              Text(
                "Tickets : 2",
                style: Fontstyles.inter600wverySmall(context),
              ),

              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Previous bookings",
                  style: Fontstyles.inter600w(context),
                ),
              ),

              SizedBox(height: 10),

              PreviousBookingsTile(),
            ],
          ),
        ),
      ),
    );
  }
}

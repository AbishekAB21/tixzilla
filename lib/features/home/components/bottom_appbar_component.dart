import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';

class BottomAppbarComponent extends StatelessWidget {
  const BottomAppbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: appcolor.background,
      body: Center(child: Text("data"),),

      // Add a bottom nav bar here Movies-Events-My Bookings-Profile
    );
  }
}
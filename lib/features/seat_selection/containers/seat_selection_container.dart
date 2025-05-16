import 'package:flutter/material.dart';

import 'package:tixzilla/features/seat_selection/component/seat_selection_component.dart';

class SeatSelectionContainer extends StatelessWidget {
  const SeatSelectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO : Pass the correct movie ID dynamically
    return SeatSelectionComponent(movieId: "INT123",);
  }
}
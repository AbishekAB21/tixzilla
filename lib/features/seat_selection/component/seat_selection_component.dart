import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/widgets/common/custom_button.dart';
import 'package:tixzilla/widgets/common/fade_page_transition.dart';
import 'package:tixzilla/features/seat_selection/widget/seat_grid.dart';
import 'package:tixzilla/features/seat_selection/widget/screen_design.dart';
import 'package:tixzilla/features/payment/containers/payment_screen_container.dart';
import 'package:tixzilla/features/seat_selection/core/providers/seat_selection_provider.dart';

class SeatSelectionComponent extends ConsumerWidget {
  final String movieId;

  const SeatSelectionComponent({super.key, required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seatData = ref.watch(seatSelectionProvider(movieId));
    final seatNotifier = ref.read(seatSelectionProvider(movieId).notifier);

    final selectedSeats =
        seatData.expand((row) => row.where((seat) => seat.isSelected)).toList();

    return Scaffold(
      backgroundColor: appcolor.background,
      appBar: AppBar(
        backgroundColor: appcolor.background,
        iconTheme: IconThemeData(color: appcolor.iconColor),
        title: Text(
          "Seat selection",
          style: Fontstyles.inter15pxBlack(context, true),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          children: [
            // Movie Theatre Screen depiction
            const ScreenDesign(),
            const SizedBox(height: 50.0),

            // Seat Grid
            SeatGridWidget(seatNotifier: seatNotifier, seatData: seatData),

            const SizedBox(height: 20.0),

            // CTA Button (only when one or more seats selected)
            if (selectedSeats.isNotEmpty)
              CustomButton(
                text: "Confirm your seat",
                onTap: () {
                  // TODO: Show bottom sheet with selected seat details
                  Navigator.push(
                    context,
                    CustomFadeTransition(route: const PaymentScreenContainer()),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

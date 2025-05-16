import 'package:flutter/material.dart';
import 'package:tixzilla/features/seat_selection/core/models/seat_model.dart';
import 'package:tixzilla/features/seat_selection/core/providers/seat_selection_provider.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class SeatGridWidget extends StatelessWidget {
  final SeatSelectionNotifier seatNotifier;
  final List<List<Seat>> seatData;
  const SeatGridWidget({
    super.key,
    required this.seatNotifier,
    required this.seatData,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: seatData.length,
        itemBuilder: (context, rowIndex) {
          final row = seatData[rowIndex];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  row.map((seat) {
                    Color color;
                    if (seat.isBooked) {
                      color = appcolor.textfieldBackground;
                    } else if (seat.isSelected) {
                      color = appcolor.secondaryGradient1;
                    } else {
                      color = appcolor.iconColor.withValues(alpha: 0.9);
                    }

                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        onTap:
                            seat.isBooked
                                ? null
                                : () =>
                                    seatNotifier.toggleSeatSelection(seat.id),
                        child: Container(
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(6.0),
                            gradient:
                                seat.isSelected
                                    ? LinearGradient(
                                      colors: [
                                        appcolor.secondaryGradient1,
                                        appcolor.secondaryGradient2,
                                      ],
                                    )
                                    : null,
                          ),
                          child: Text(
                            seat.id,
                            style: Fontstyles.inter600wverySmallWhiteAndBlack(
                              context,
                              seat.isSelected ? true : false,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tixzilla/features/seat_selection/core/models/seat_model.dart';

class SeatSelectionNotifier extends StateNotifier<List<List<Seat>>> {
  SeatSelectionNotifier() : super(_generateInitialSeats());

  static List<List<Seat>> _generateInitialSeats() {
    return [
      List.generate(6, (i) => Seat(id: 'A${i + 1}')),
      List.generate(6, (i) => Seat(id: 'B${i + 1}')),
      List.generate(6, (i) => Seat(id: 'C${i + 1}')),
      List.generate(6, (i) => Seat(id: 'D${i + 1}')),
      List.generate(6, (i) => Seat(id: 'E${i + 1}')),
      List.generate(6, (i) => Seat(id: 'F${i + 1}')),
      List.generate(8, (i) => Seat(id: 'G${i + 1}')), // Balcony row
    ];
  }

  void toggleSeatSelection(String seatId) {
    state =
        state
            .map(
              (row) =>
                  row
                      .map(
                        (seat) =>
                            seat.id == seatId
                                ? seat.copyWith(isSelected: !seat.isSelected)
                                : seat,
                      )
                      .toList(),
            )
            .toList();
  }

  List<Seat> get selectedSeats =>
      state.expand((row) => row.where((seat) => seat.isSelected)).toList();
}

// Using .family to create one provider per movieId
final seatSelectionProvider = StateNotifierProvider.family<
  SeatSelectionNotifier,
  List<List<Seat>>,
  String
>((ref, movieId) => SeatSelectionNotifier());

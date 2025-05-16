class Seat {
  final String id;
  final bool isBooked;
  final bool isSelected;

  Seat({required this.id, this.isBooked = false, this.isSelected = false});

  Seat copyWith({bool? isSelected, bool? isBooked}) {
    return Seat(
      id: id,
      isBooked: isBooked ?? this.isBooked,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}

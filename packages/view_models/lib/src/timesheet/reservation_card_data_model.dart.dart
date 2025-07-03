class ReservationCardDataModel {
  final String cardType;
  final String reservationItem;
  final String reservationKey;
  final String available;
  final String availableBalance;
  final List<Map<String, String>> reservationType;
  final Map<int, String> amountOfReservationList;
  final bool isAutoModeReservation;
  final bool isCardBlocked;
  final bool isWdc;

  ReservationCardDataModel({
    required this.cardType,
    required this.reservationItem,
    required this.reservationKey,
    required this.available,
    required this.availableBalance,
    required this.reservationType,
    required this.amountOfReservationList,
    required this.isAutoModeReservation,
    required this.isCardBlocked,
    required this.isWdc,
  });
}

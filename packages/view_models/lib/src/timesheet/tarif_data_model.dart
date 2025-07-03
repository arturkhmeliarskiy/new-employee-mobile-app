import 'package:view_models/view_models.dart';

class TarifDataModel {
  final String cardType;
  final String tarifId;
  final List<HoursDataModel> hours;

  TarifDataModel({
    required this.cardType,
    required this.tarifId,
    required this.hours,
  });
}

import 'package:view_models/view_models.dart';

class HoursProjectDataModel {
  final String cardType;
  final String tarifId;
  final String hoursProjectsId;
  final List<HoursDataModel> hours;

  HoursProjectDataModel({
    required this.cardType,
    required this.tarifId,
    required this.hoursProjectsId,
    required this.hours,
  });
}

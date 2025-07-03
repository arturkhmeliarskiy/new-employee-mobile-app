import 'package:view_models/view_models.dart';

class HoursCardDataModel {
  final String cardType;
  final String projectItem;
  final String projectId;
  final String tarifId;
  final String hourItem;
  final bool unraveling;
  final List<int> listDaysNotBlockedCardHours;
  final List<Map<String, String>> projects;
  final List<Map<String, String>> hoursType;
  final List<HoursDataModel> timeWeek;
  final Map<int, String> amountOfHoursList;

  HoursCardDataModel({
    required this.cardType,
    required this.projectItem,
    required this.projectId,
    required this.tarifId,
    required this.hourItem,
    required this.unraveling,
    required this.listDaysNotBlockedCardHours,
    required this.projects,
    required this.hoursType,
    required this.timeWeek,
    required this.amountOfHoursList,
  });
}

import 'package:view_models/src/timesheet/index.dart';

class DoSaveExpensesModel {
  final String sortedExpensesMapAsJSON;
  final ExpensesSortedMapModel sortedExpensesMap;
  DoSaveExpensesModel({
    required this.sortedExpensesMapAsJSON,
    required this.sortedExpensesMap,
  });
}

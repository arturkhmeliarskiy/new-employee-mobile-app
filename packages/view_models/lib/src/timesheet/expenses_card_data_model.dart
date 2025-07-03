import 'package:view_models/view_models.dart';

class ExpensesCardDataModel {
  final String cardType;
  final String projectItem;
  final String projectId;
  final String cpcExpenseTypeConfigId;
  final String cpcExpenseTypeConfigItem;
  final String sfWithdrawalRemainder;
  String price;
  final bool positive;
  final bool blockCard;
  final bool isPrice;
  final List<int> listDaysNotBlockedCardExpenses;
  final List<Map<String, String>> projects;
  final List<Map<String, String>> cpcExpenseType;
  final String explanation;
  final List<ExpenseDataModel> numberExpenses;
  final Map<int, String> amountOfExpensesList;
  final Map<int, String> bedrag;
  final String routeFrom;
  final String routeTo;

  ExpensesCardDataModel({
    required this.cardType,
    required this.projectItem,
    required this.projectId,
    required this.cpcExpenseTypeConfigId,
    required this.cpcExpenseTypeConfigItem,
    required this.sfWithdrawalRemainder,
    required this.price,
    required this.positive,
    required this.blockCard,
    required this.isPrice,
    required this.listDaysNotBlockedCardExpenses,
    required this.projects,
    required this.cpcExpenseType,
    required this.explanation,
    required this.numberExpenses,
    required this.amountOfExpensesList,
    required this.bedrag,
    required this.routeFrom,
    required this.routeTo,
  });
}

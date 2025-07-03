import 'package:view_models/view_models.dart';

class ExpensesProjectDataModel {
  final String cardType;
  final String cpcExpenseTypeConfigId;
  final String expenseProjectsId;
  final List<ExpenseDataModel> expenses;

  ExpensesProjectDataModel({
    required this.cardType,
    required this.cpcExpenseTypeConfigId,
    required this.expenseProjectsId,
    required this.expenses,
  });
}

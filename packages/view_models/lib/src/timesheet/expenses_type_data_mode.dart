import 'package:view_models/view_models.dart';

class ExpensesTypeDataModel {
  final String cardType;
  final String cpcExpenseTypeConfigId;
  final List<ExpenseDataModel> expenses;

  ExpensesTypeDataModel({
    required this.cardType,
    required this.cpcExpenseTypeConfigId,
    required this.expenses,
  });
}

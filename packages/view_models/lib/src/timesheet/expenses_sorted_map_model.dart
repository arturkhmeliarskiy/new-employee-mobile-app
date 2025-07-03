import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/view_models.dart';

part 'expenses_sorted_map_model.freezed.dart';
part 'expenses_sorted_map_model.g.dart';

@freezed
class ExpensesSortedMapModel with _$ExpensesSortedMapModel {
  const factory ExpensesSortedMapModel({
    required List<ExpensesDayModel> toInsert,
    required List<ExpensesDayModel> toUpdate,
    required List<ExpensesDayModel> toDelete,
  }) = _ExpensesSortedMapModel;

  factory ExpensesSortedMapModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ExpensesSortedMapModelFromJson(json);
}

// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'expenses_day_model.freezed.dart';
part 'expenses_day_model.g.dart';

@freezed
class ExpensesDayModel with _$ExpensesDayModel {
  const factory ExpensesDayModel({
    String? Id,
    String? allocation,
    double? amount,
    double? bedrag,
    String? comment,
    double? costPerUnit,
    int? dayNumber,
    bool? doubleD,
    String? et,
    bool? facturatie,
    bool? isDividedPerDays,
    String? pr,
    String? routeFrom,
    String? routeTo,
    String? wr,
  }) = _ExpensesDayModel;

  factory ExpensesDayModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ExpensesDayModelFromJson(json);
}

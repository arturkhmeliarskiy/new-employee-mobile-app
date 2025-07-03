import 'package:freezed_annotation/freezed_annotation.dart';

part 'payslips_info_data_model.freezed.dart';
part 'payslips_info_data_model.g.dart';

@freezed
class PayslipsInfoDataModel with _$PayslipsInfoDataModel {
  const factory PayslipsInfoDataModel({
    required String id,
    required String period,
    required String link,
    required int year,
    required String nettoSalary,
    required String nettoSalaryPeriod,
    required String employeeId,
    required String weeksRange,
    required bool isAnnualStatement,
    required String createdAt,
    required String logoAgency,
    required String nameAgency,
  }) = _PayslipsInfoDataModel;

  factory PayslipsInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$PayslipsInfoDataModelFromJson(json);
}

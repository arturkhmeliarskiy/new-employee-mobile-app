import 'package:json_annotation/json_annotation.dart';

part 'payslips_info.g.dart';

@JsonSerializable()
class PayslipsInfo {
  String? id;
  String? period;
  String? link;
  int? year;
  String? nettoSalary;
  String? nettoSalaryPeriod;
  String? employeeId;
  String? weeksRange;
  bool? isAnnualStatement;
  String? createdAt;

  PayslipsInfo({
    this.id,
    this.period,
    this.link,
    this.year,
    this.nettoSalary,
    this.nettoSalaryPeriod,
    this.employeeId,
    this.weeksRange,
    this.isAnnualStatement,
    this.createdAt,
  });

  factory PayslipsInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PayslipsInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PayslipsInfoToJson(this);

  static const fromJsonFactory = _$PayslipsInfoFromJson;
}

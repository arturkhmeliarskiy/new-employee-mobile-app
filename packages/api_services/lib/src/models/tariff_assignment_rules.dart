import 'package:json_annotation/json_annotation.dart';

part 'tariff_assignment_rules.g.dart';

@JsonSerializable()
class TariffAssignmentRules {
  String? validFrom;
  String? usedUnravelingTypes;

  TariffAssignmentRules(
    this.validFrom,
    this.usedUnravelingTypes,
  );

  factory TariffAssignmentRules.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TariffAssignmentRulesFromJson(json);

  Map<String, dynamic> toJson() => _$TariffAssignmentRulesToJson(this);

  static const fromJsonFactory = _$TariffAssignmentRulesFromJson;
}

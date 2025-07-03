import 'package:freezed_annotation/freezed_annotation.dart';

part 'tariff_assignment_rules_data_model.freezed.dart';
part 'tariff_assignment_rules_data_model.g.dart';

@freezed
class TariffAssignmentRulesDataModel with _$TariffAssignmentRulesDataModel {
  const factory TariffAssignmentRulesDataModel({
    required String validFrom,
    required List<dynamic> usedUnravelingTypes,
  }) = _TariffAssignmentRulesDataModel;

  factory TariffAssignmentRulesDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TariffAssignmentRulesDataModelFromJson(json);
}

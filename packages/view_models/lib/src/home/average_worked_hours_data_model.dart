import 'package:freezed_annotation/freezed_annotation.dart';

part 'average_worked_hours_data_model.freezed.dart';
part 'average_worked_hours_data_model.g.dart';

@freezed
class AverageWorkedHoursDataModel with _$AverageWorkedHoursDataModel {
  const factory AverageWorkedHoursDataModel({
    required double weekly,
  }) = _AverageWorkedHoursDataModel;

  factory AverageWorkedHoursDataModel.fromJson(Map<String, dynamic> json) =>
      _$AverageWorkedHoursDataModelFromJson(json);
}

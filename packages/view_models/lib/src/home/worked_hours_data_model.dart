import 'package:freezed_annotation/freezed_annotation.dart';

part 'worked_hours_data_model.freezed.dart';
part 'worked_hours_data_model.g.dart';

@freezed
class WorkedHoursDataModel with _$WorkedHoursDataModel {
  const factory WorkedHoursDataModel({
    required double week,
    required double month,
    required double total,
  }) = _WorkedHoursDataModel;

  factory WorkedHoursDataModel.fromJson(Map<String, dynamic> json) =>
      _$WorkedHoursDataModelFromJson(json);
}

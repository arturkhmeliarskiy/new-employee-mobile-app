import 'package:freezed_annotation/freezed_annotation.dart';

part 'hours_data_model.freezed.dart';
part 'hours_data_model.g.dart';

@freezed
class HoursDataModel with _$HoursDataModel {
  const factory HoursDataModel({
    required String id,
    required String cardType,
    required String name,
    required String date,
    required double amountOfHours,
    required String description,
    required bool isDeleted,
    required String sfRecordId,
    required String createdAt,
    required String projectId,
    required String tarifId,
    required bool unraveling,
  }) = _HoursDataModel;

  factory HoursDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HoursDataModelFromJson(json);
}

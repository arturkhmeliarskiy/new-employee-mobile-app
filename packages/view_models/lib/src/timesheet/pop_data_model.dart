import 'package:freezed_annotation/freezed_annotation.dart';

part 'pop_data_model.freezed.dart';
part 'pop_data_model.g.dart';

@freezed
class PopDataModel with _$PopDataModel {
  const factory PopDataModel({
    required String id,
    required String endDate,
    required String hourRate,
    required String externalTariff,
    required String startDate,
    required String sfRecordId,
    required String createdAt,
    required String placementId,
  }) = _PopDataModel;

  factory PopDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PopDataModelFromJson(json);
}

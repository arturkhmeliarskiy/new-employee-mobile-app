import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_Info_data_model.freezed.dart';
part 'approval_Info_data_model.g.dart';

@freezed
class ApprovalInfoDataModel with _$ApprovalInfoDataModel {
  const factory ApprovalInfoDataModel({
    required String id,
    required String status,
  }) = _ApprovalInfoDataModel;

  factory ApprovalInfoDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApprovalInfoDataModelFromJson(json);
}

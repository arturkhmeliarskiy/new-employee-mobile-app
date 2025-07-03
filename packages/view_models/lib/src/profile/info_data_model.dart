import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/profile/index.dart';

part 'info_data_model.freezed.dart';
part 'info_data_model.g.dart';

@freezed
class InfoDataModel with _$InfoDataModel {
  const factory InfoDataModel({
    InfoUserDataModel? infoUser,
  }) = _InfoDataModel;

  factory InfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$InfoDataModelFromJson(json);
}

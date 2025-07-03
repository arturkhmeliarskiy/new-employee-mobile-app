import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/profile/index.dart';

part 'info_user_data_model.freezed.dart';
part 'info_user_data_model.g.dart';

@freezed
class InfoUserDataModel with _$InfoUserDataModel {
  const factory InfoUserDataModel({
    UserDataInfoModel? user,
    List<RecordsDataModel>? recordsData,
    List<AgencyDataModel>? agencyData,
  }) = _InfoUserDataModel;

  factory InfoUserDataModel.fromJson(Map<String, dynamic> json) =>
      _$InfoUserDataModelFromJson(json);
}

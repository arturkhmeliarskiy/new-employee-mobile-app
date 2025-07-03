import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/view_models.dart';

part 'login_state_model.freezed.dart';
part 'login_state_model.g.dart';

@freezed
class LoginStateDataModel with _$LoginStateDataModel {
  const factory LoginStateDataModel({
    required int code,
    required String message,
    UserDataModel? userDataModel,
  }) = _LoginStateDataModel;

  factory LoginStateDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginStateDataModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String type,
    required bool activated,
    required String googleEmail,
    required String linkedinId,
    required String linkedinName,
    required String linkedinEmail,
    required String facebookId,
    required String facebookName,
    required String facebookEmail,
    required String profilePhotoName,
    required String createdAt,
    required String updatedAt,
    required String currentAgencyId,
    required String preferredLanguage,
    required String username,
    required String cookieconsent,
    required String lastSeenInApp,
    required String viewModeEC,
    required String activeCompanies,
    required String allowedTabs,
    required bool isRoot,
    required bool is2FA,
    required String resetAttempt,
    required String appErrorInfo,
    String? googleName,
    String? googleId,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}

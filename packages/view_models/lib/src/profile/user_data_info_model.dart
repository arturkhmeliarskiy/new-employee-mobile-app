import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_info_model.freezed.dart';
part 'user_data_info_model.g.dart';

@freezed
class UserDataInfoModel with _$UserDataInfoModel {
  const factory UserDataInfoModel({
    required String id,
    required String email,
    required String username,
    required String firstName,
    required String profilePhotoName,
    required String preferredLanguage,
    required String birthDate,
    required String nickName,
    required String nationality,
    required String phone,
    required String desiredSalary,
    required String desiredFunction,
    required String maxTravelTimeMinutes,
    required String fullName,
    required String lastName,
    String? type,
    bool? activated,
    String? resetPasswordToken,
    String? cookieconsent,
    String? lastSeenInApp,
    String? viewModeEC,
    bool? isRoot,
    bool? is2FA,
    String? resetAttempt,
    String? appErrorInfo,
    String? addressCountry,
    String? addressProvince,
    String? addressStreet,
    String? addressPostalCode,
    String? createdAt,
    String? updatedAt,
    String? currentAgencyId,
  }) = _UserDataInfoModel;

  factory UserDataInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataInfoModelFromJson(json);
}

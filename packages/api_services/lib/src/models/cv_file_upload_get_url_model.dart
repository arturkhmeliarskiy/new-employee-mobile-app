import 'package:json_annotation/json_annotation.dart';

part 'cv_file_upload_get_url_model.g.dart';

@JsonSerializable()
class CVFileUploadGetUrlModel {
  int code;
  String message;
  String url;
  String token;
  String userId;
  String firstName;
  String lastName;
  String email;
  String phone;
  String password;

  CVFileUploadGetUrlModel(
    this.code,
    this.message,
    this.url,
    this.token,
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.password,
  );

  factory CVFileUploadGetUrlModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CVFileUploadGetUrlModelFromJson(json);

  Map<String, dynamic> toJson() => _$CVFileUploadGetUrlModelToJson(this);

  static const fromJsonFactory = _$CVFileUploadGetUrlModelFromJson;
}

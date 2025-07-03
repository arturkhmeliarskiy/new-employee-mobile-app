import 'package:api_services/src/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel {
  int? code;
  String? message;
  User? user;

  AuthResponseModel(
    this.code,
    this.message,
    this.user,
  );

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseModelToJson(this);

  static const fromJsonFactory = _$AuthResponseModelFromJson;
}

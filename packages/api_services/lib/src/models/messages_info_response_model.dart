import 'package:json_annotation/json_annotation.dart';

part 'messages_info_response_model.g.dart';

@JsonSerializable()
class MessagesInfoResponseModel {
  int? code;
  String? message;

  MessagesInfoResponseModel(
    this.code,
    this.message,
  );

  factory MessagesInfoResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MessagesInfoResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessagesInfoResponseModelToJson(this);

  static const fromJsonFactory = _$MessagesInfoResponseModelFromJson;
}

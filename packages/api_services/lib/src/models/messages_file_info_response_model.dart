import 'package:json_annotation/json_annotation.dart';

part 'messages_file_info_response_model.g.dart';

@JsonSerializable()
class MessagesFileInfoResponseModel {
  int? code;
  String? result;

  MessagesFileInfoResponseModel(
    this.code,
    this.result,
  );

  factory MessagesFileInfoResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MessagesFileInfoResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessagesFileInfoResponseModelToJson(this);

  static const fromJsonFactory = _$MessagesFileInfoResponseModelFromJson;
}

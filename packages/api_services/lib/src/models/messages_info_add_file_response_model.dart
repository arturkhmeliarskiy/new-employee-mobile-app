import 'package:json_annotation/json_annotation.dart';

part 'messages_info_add_file_response_model.g.dart';

@JsonSerializable()
class MessagesInfoAddFileResponseModel {
  int? code;
  List<int>? added;
  String? message;

  MessagesInfoAddFileResponseModel(
    this.code,
    this.added,
    this.message,
  );

  factory MessagesInfoAddFileResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MessagesInfoAddFileResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MessagesInfoAddFileResponseModelToJson(this);

  static const fromJsonFactory = _$MessagesInfoAddFileResponseModelFromJson;
}

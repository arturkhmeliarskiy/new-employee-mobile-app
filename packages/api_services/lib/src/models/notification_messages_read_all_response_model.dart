import 'package:json_annotation/json_annotation.dart';

part 'notification_messages_read_all_response_model.g.dart';

@JsonSerializable()
class NotificationMessagesReadAllResponseModel {
  int? code;
  String? message;
  int? count;

  NotificationMessagesReadAllResponseModel(
    this.code,
    this.message,
    this.count,
  );

  factory NotificationMessagesReadAllResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NotificationMessagesReadAllResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NotificationMessagesReadAllResponseModelToJson(this);

  static const fromJsonFactory =
      _$NotificationMessagesReadAllResponseModelFromJson;
}

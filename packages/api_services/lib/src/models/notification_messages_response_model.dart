import 'package:api_services/src/models/data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_messages_response_model.g.dart';

@JsonSerializable()
class NotificationMessagesResponseModel {
  int? code;
  String? message;
  List<Data>? data;

  NotificationMessagesResponseModel(
    this.code,
    this.message,
    this.data,
  );

  factory NotificationMessagesResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NotificationMessagesResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NotificationMessagesResponseModelToJson(this);

  static const fromJsonFactory = _$NotificationMessagesResponseModelFromJson;
}

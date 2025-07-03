import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_messages_read_all_data_model.freezed.dart';
part 'notification_messages_read_all_data_model.g.dart';

@freezed
class NotificationMessagesReadAllDataModel
    with _$NotificationMessagesReadAllDataModel {
  const factory NotificationMessagesReadAllDataModel({
    required int code,
    required String message,
    required int count,
  }) = _NotificationMessagesReadAllDataModel;

  factory NotificationMessagesReadAllDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NotificationMessagesReadAllDataModelFromJson(json);
}

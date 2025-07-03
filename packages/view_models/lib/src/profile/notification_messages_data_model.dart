import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/profile/index.dart';

part 'notification_messages_data_model.freezed.dart';
part 'notification_messages_data_model.g.dart';

@freezed
class NotificationMessagesDataModel with _$NotificationMessagesDataModel {
  const factory NotificationMessagesDataModel({
    required int code,
    required String message,
    required List<DataModel> dataModel,
  }) = _NotificationMessagesDataModel;

  factory NotificationMessagesDataModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationMessagesDataModelFromJson(json);
}

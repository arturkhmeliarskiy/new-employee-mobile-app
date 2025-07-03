import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_info_data_model.freezed.dart';
part 'messages_info_data_model.g.dart';

@freezed
class MessagesInfoDataModel with _$MessagesInfoDataModel {
  const factory MessagesInfoDataModel({
    required int code,
    required String message,
  }) = _MessagesInfoDataModel;

  factory MessagesInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesInfoDataModelFromJson(json);
}

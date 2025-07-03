import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_file_info_data_model.freezed.dart';
part 'messages_file_info_data_model.g.dart';

@freezed
class MessagesFileInfoDataModel with _$MessagesFileInfoDataModel {
  const factory MessagesFileInfoDataModel({
    required int code,
    required String result,
    required String fileName,
  }) = _MessagesFileInfoDataModel;

  factory MessagesFileInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesFileInfoDataModelFromJson(json);
}

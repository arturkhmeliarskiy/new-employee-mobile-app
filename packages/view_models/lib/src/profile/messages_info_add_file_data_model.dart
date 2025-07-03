import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_info_add_file_data_model.freezed.dart';
part 'messages_info_add_file_data_model.g.dart';

@freezed
class MessagesInfoAddFileDataModel with _$MessagesInfoAddFileDataModel {
  const factory MessagesInfoAddFileDataModel({
    required int code,
    required List<int> added,
    required String message,
  }) = _MessagesInfoAddFileDataModel;

  factory MessagesInfoAddFileDataModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesInfoAddFileDataModelFromJson(json);
}

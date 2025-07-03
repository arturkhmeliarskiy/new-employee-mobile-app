import 'package:json_annotation/json_annotation.dart';

part 'file_data_model.g.dart';

@JsonSerializable()
class FileDataModel {
  FileDataModel(
    this.code,
    this.content,
  );
  int? code;
  String? content;

  factory FileDataModel.fromJson(Map<String, dynamic> json) =>
      _$FileDataModelFromJson(json);
}

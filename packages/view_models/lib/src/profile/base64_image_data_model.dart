import 'package:freezed_annotation/freezed_annotation.dart';

part 'base64_image_data_model.freezed.dart';
part 'base64_image_data_model.g.dart';

@freezed
class Base64ImageDataModel with _$Base64ImageDataModel {
  const factory Base64ImageDataModel({
    int? code,
    String? file,
  }) = _Base64ImageDataModel;

  factory Base64ImageDataModel.fromJson(Map<String, dynamic> json) =>
      _$Base64ImageDataModelFromJson(json);
}

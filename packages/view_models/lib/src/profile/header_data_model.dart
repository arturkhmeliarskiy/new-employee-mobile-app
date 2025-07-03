import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_data_model.freezed.dart';
part 'header_data_model.g.dart';

@freezed
class HeaderDataModel with _$HeaderDataModel {
  const factory HeaderDataModel({
    String? backgroundColor,
  }) = _HeaderDataModel;

  factory HeaderDataModel.fromJson(Map<String, dynamic> json) =>
      _$HeaderDataModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_data_model.freezed.dart';
part 'news_data_model.g.dart';

@freezed
class NewsDataModel with _$NewsDataModel {
  const factory NewsDataModel({
    required String title,
    required String content,
    required String logo,
    required bool active,
    required String agencyId,
    required String createdAt,
    required String updatedAt,
    required String color,
  }) = _NewsDataModel;

  factory NewsDataModel.fromJson(Map<String, dynamic> json) =>
      _$NewsDataModelFromJson(json);
}

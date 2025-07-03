import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/home/news_data_model.dart';

part 'news_info_data_model.freezed.dart';
part 'news_info_data_model.g.dart';

@freezed
class NewsInfoDataModel with _$NewsInfoDataModel {
  const factory NewsInfoDataModel({
    required List<NewsDataModel> news,
    required int totalCount,
    required int code,
  }) = _NewsInfoDataModel;

  factory NewsInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$NewsInfoDataModelFromJson(json);
}

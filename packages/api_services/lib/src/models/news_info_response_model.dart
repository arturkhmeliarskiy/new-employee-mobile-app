import 'package:api_services/src/models/news.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_info_response_model.g.dart';

@JsonSerializable()
class NewsInfoResponseModel {
  int? code;
  List<News>? news;
  int? totalCount;

  NewsInfoResponseModel(
    this.code,
    this.news,
    this.totalCount,
  );

  factory NewsInfoResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NewsInfoResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsInfoResponseModelToJson(this);

  static const fromJsonFactory = _$NewsInfoResponseModelFromJson;
}

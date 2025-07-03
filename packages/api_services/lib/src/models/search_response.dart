import 'package:api_services/src/models/search_list_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  int code;
  String message;
  SearchListModel data;

  SearchResponse(
    this.code,
    this.message,
    this.data,
  );

  factory SearchResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);

  static const fromJsonFactory = _$SearchResponseFromJson;
}

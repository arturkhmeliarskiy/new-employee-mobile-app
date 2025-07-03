import 'package:api_services/src/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_list_model.g.dart';

@JsonSerializable()
class SearchListModel {
  List<SearchModel> result;

  SearchListModel(this.result);

  factory SearchListModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchListModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchListModelToJson(this);

  static const fromJsonFactory = _$SearchListModelFromJson;
}

import 'package:json_annotation/json_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  String? id;
  String? name;
  String? altLabels;
  String? code;
  int? iscoGroup;
  String? language;

  SearchModel(
    this.id,
    this.name,
    this.altLabels,
    this.code,
    this.iscoGroup,
    this.language,
  );

  factory SearchModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);

  static const fromJsonFactory = _$SearchModelFromJson;
}

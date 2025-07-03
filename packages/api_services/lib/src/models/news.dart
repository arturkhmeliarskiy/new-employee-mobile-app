import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';

@JsonSerializable()
class News {
  String? title;
  String? content;
  String? logo;
  bool? active;
  String? agencyId;
  String? createdAt;
  String? updatedAt;

  News(
    this.title,
    this.content,
    this.logo,
    this.active,
    this.agencyId,
    this.createdAt,
    this.updatedAt,
  );

  factory News.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);

  static const fromJsonFactory = _$NewsFromJson;
}

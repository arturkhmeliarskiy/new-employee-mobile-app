import 'package:api_services/src/models/header.dart';
import 'package:json_annotation/json_annotation.dart';

part 'style_json.g.dart';

@JsonSerializable()
class StyleJson {
  StyleJson(
    this.header,
  );
  Header header;

  factory StyleJson.fromJson(Map<String, dynamic> json) =>
      _$StyleJsonFromJson(json);
}

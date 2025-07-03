import 'package:api_services/src/models/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  Info(
    this.user,
    this.records,
    this.agencies,
  );
  UserInfo? user;
  List<Records>? records;
  List<Agency>? agencies;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

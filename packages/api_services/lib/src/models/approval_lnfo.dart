import 'package:json_annotation/json_annotation.dart';

part 'approval_lnfo.g.dart';

@JsonSerializable()
class AprovalInfo {
  AprovalInfo(
    this.id,
    this.status,
  );
  String? id;
  String? status;

  factory AprovalInfo.fromJson(Map<String, dynamic> json) =>
      _$AprovalInfoFromJson(json);
}

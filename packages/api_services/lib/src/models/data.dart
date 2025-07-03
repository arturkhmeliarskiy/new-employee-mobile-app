import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? id;
  String? text;
  bool? isRead;
  String? receiverId;
  String? receiverType;
  String? opportunityId;
  String? orgName;
  String? relatedObjectType;
  String? relatedObjectId;
  String? createdAt;
  String? updatedAt;
  String? title;

  Data(
    this.id,
    this.text,
    this.isRead,
    this.receiverId,
    this.receiverType,
    this.opportunityId,
    this.orgName,
    this.relatedObjectType,
    this.relatedObjectId,
    this.createdAt,
    this.updatedAt,
    this.title,
  );

  factory Data.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  static const fromJsonFactory = _$DataFromJson;
}

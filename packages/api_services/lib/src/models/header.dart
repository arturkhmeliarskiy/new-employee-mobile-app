import 'package:json_annotation/json_annotation.dart';

part 'header.g.dart';

@JsonSerializable()
class Header {
  Header(
    this.backgroundColor,
  );
  String backgroundColor;

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}

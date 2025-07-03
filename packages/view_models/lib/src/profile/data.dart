import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    required String id,
    required bool isRead,
    required String receiverId,
    required String receiverType,
    required String opportunityId,
    required String orgName,
    required String orgLogo,
    required String relatedObjectType,
    required String relatedObjectId,
    required String createdAt,
    required String updatedAt,
    required String messageType,
    required String count,
    required String title,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

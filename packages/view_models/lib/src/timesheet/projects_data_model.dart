import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects_data_model.freezed.dart';
part 'projects_data_model.g.dart';

@freezed
class ProjectsDataModel with _$ProjectsDataModel {
  const factory ProjectsDataModel({
    required String id,
    required String name,
    required bool acceptedWork,
    required bool isDeleted,
    required String sfRecordId,
    required bool activeProject,
    required String country,
    required String createdAt,
    required String companyId,
  }) = _ProjectsDataModel;

  factory ProjectsDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProjectsDataModelFromJson(json);
}

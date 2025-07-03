import 'package:freezed_annotation/freezed_annotation.dart';

part 'occupations_model.freezed.dart';
part 'occupations_model.g.dart';

@freezed
class OccupationsModel with _$OccupationsModel {
  const factory OccupationsModel({
    required String id,
    required String name,
  }) = _OccupationsModel;

  factory OccupationsModel.fromJson(Map<String, dynamic> json) =>
      _$OccupationsModelFromJson(json);
}

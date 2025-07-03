import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_input_model.freezed.dart';

@freezed
class SearchInputModel with _$SearchInputModel {
  const factory SearchInputModel({
    required String id,
    required String name,
    required String altLabels,
    required String code,
    required int iscoGroup,
  }) = _SearchInputModel;
}

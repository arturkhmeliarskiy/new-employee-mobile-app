import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/view_models.dart';

part 'payslips_data_model.freezed.dart';

@freezed
class PayslipsDataModel with _$PayslipsDataModel {
  const factory PayslipsDataModel({
    required int code,
    required String message,
    required List<List<PayslipsInfoDataModel>> agencys,
  }) = _PayslipsDataModel;
}

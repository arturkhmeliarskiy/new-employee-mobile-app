part of 'payslips_bloc.dart';

@freezed
class PayslipsState with _$PayslipsState {
  const factory PayslipsState.getResponse({
    required List<List<PayslipsInfoDataModel>> data,
  }) = PayslipsGetResponseState;
  const factory PayslipsState.loading() = PayslipsLoadState;
  const factory PayslipsState.loadingFile() = LoadingFilePayslipsState;
  const factory PayslipsState.error({
    String? message,
  }) = PayslipsErrorState;
  const factory PayslipsState.getFile({
    required String nameFile,
    required Uint8List file,
    required String type,
  }) = GetFilePayslipsState;
}

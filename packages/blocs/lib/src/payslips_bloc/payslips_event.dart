part of 'payslips_bloc.dart';

@freezed
class PayslipsEvent with _$PayslipsEvent {
  factory PayslipsEvent.getPayslip(
    int year,
    bool isAnnualStatement,
  ) = GetPayslipEvent;
  factory PayslipsEvent.getFile({
    required String link,
  }) = GetFilePayslipEvent;
}

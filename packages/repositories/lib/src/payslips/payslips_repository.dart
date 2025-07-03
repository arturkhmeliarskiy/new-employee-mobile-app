import 'package:api_services/api_services.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

class PayslipsRepository {
  final PayslipsService _payslipsService;
  final AgencyService _agencyService;
  final ProfileRepository _profileRepository;

  PayslipsRepository(
    this._payslipsService,
    this._agencyService,
    this._profileRepository,
  );

  Future<PayslipsDataModel> getPayslip(
    int year,
    bool isAnnualStatement,
  ) async {
    final info = _profileRepository.model;
    final response = await _payslipsService.getPayslipsResponse(year);
    final payslipsList = List<PayslipsInfoDataModel>.from(
      (response.data.payslips.map(
        (payslip) => PayslipsInfoDataModel(
          id: payslip.id ?? '',
          period: payslip.period ?? '',
          link: payslip.link ?? '',
          year: payslip.year ?? 0,
          nettoSalary: payslip.nettoSalary ?? '',
          nettoSalaryPeriod: payslip.nettoSalaryPeriod ?? '',
          employeeId: payslip.employeeId ?? '',
          weeksRange: payslip.weeksRange ?? '',
          isAnnualStatement: payslip.isAnnualStatement ?? false,
          createdAt: payslip.createdAt ?? '',
          logoAgency: _agencyService
              .getAgencyInfo(payslip.employeeId ?? '', info)
              .agencyLogo,
          nameAgency: _agencyService
              .getAgencyInfo(payslip.employeeId ?? '', info)
              .agencyName,
        ),
      )).toList(),
    );

    final payslipsPerEmployeeId = <String, List<PayslipsInfoDataModel>>{};

    for (int i = 0; i < payslipsList.length; i++) {
      final employeeId = payslipsList[i].employeeId;
      final payslip = payslipsList[i];
      if (payslipsList[i].isAnnualStatement == isAnnualStatement) {
        if (!payslipsPerEmployeeId.containsKey(employeeId)) {
          payslipsPerEmployeeId[employeeId] = <PayslipsInfoDataModel>[];
        }
        payslipsPerEmployeeId[employeeId]?.add(payslip);
      }
    }

    final result = <List<PayslipsInfoDataModel>>[];
    payslipsPerEmployeeId.forEach((key, value) {
      result.add(value);
    });

    return PayslipsDataModel(
      code: response.code,
      agencys: result,
      message: response.message.toString(),
    );
  }
}

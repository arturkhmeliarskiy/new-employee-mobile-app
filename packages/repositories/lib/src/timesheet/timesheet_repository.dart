import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:view_models/view_models.dart';

class TimesheetRepository {
  final TimesheetService _timesheetService;

  TimesheetRepository(this._timesheetService);

  Future<List<TimesheetsCurrentPeriodDataModel>> getTimesheetsForCurrentPeriod(
    int year,
    int month,
    String placementId,
  ) async {
    final response = await _timesheetService.getTimesheetsForCurrentPeriod(
      year,
      month,
      placementId,
    );
    final result = List<TimesheetsCurrentPeriodDataModel>.from(
      response.map(
        (item) => TimesheetsCurrentPeriodDataModel(
          id: item.id ?? '',
          name: item.name ?? '',
          startDate: item.startDate ?? '',
          endDate: item.endDate ?? '',
          status: item.status ?? '',
        ),
      ),
    ).toList();

    return result;
  }

  Future<TimesheetsDescriptionDataModel> getTimesheetsInfo(
    String timesheetid,
    String placementid,
  ) async {
    final response = await _timesheetService.getTimesheetsInfo(
      timesheetid,
      placementid,
    );
    final result = response.toTimesheetsForCurrentPeriod();
    return result;
  }

  Future<SfServiceCreateTimesheetDataModel> postSfServiceCreateTimesheet(
    String agencyid,
    String sfRecordId,
  ) async {
    final body = json.encode({
      'sfRecordId': sfRecordId,
    });
    final response = await _timesheetService.postSfServiceCreateTimesheet(
      agencyid,
      body,
    );
    final result = response.toSfServiceCreateTimesheet();
    return result;
  }

  Future<SfServiceCreateTimesheetDataModel> postUpdateTimesheetNew(
    List<Map<String, Object>> listTimesheetHours,
    TimesheetInfoDataModel timesheet,
    Map<String, List<dynamic>> reservation,
    bool saveReservation,
    DoSaveExpensesModel expenseData,
    bool submitToApprove,
    List<Map<dynamic, dynamic>> timeBasedHours,
  ) async {
    final jsonString = jsonEncode(listTimesheetHours);

    final body = json.encode({
      'TimeSheetRecSec': jsonString,
      'timesheet': timesheet,
      'days': false,
      'mapReserveigenDay': reservation,
      'saveReservation': saveReservation,
      'dayMode': true,
      'sortedExpensesMapAsJSON': expenseData.sortedExpensesMapAsJSON,
      'defaultAction': null,
      'submitToApprove': submitToApprove,
      'saveAsTimeBased': timeBasedHours.isNotEmpty,
      'timebasedData':
          timeBasedHours.isNotEmpty ? jsonEncode(timeBasedHours) : null
    });

    final response = await _timesheetService.postUpdateTimesheetNew(
      body,
    );
    final result = SfServiceCreateTimesheetDataModel(
      code: response.code ?? 0,
      result:
          TimesheetExistDataModel.fromJson(jsonDecode(response.result ?? '')),
      message: response.result ?? '',
    );
    return result;
  }
}

extension on SfServiceCreateTimesheetResponseModel {
  SfServiceCreateTimesheetDataModel toSfServiceCreateTimesheet() {
    return SfServiceCreateTimesheetDataModel(
      code: code ?? 0,
      result: TimesheetExistDataModel.fromJson(jsonDecode(result ?? '')),
      message: jsonDecode(
                result ?? '',
              )?['status'] ==
              'error'
          ? 'registration_timesheets_screen.message_info3'.tr()
          : '',
    );
  }
}

extension on TimesheetsResponseModel {
  TimesheetsDescriptionDataModel toTimesheetsForCurrentPeriod() {
    final time = DateTime(0);
    final timeNow = DateTime.now();
    final dateTime = DateTime(2100);

    final tarifsList = List<TarifsDataModel>.from(
      tarrifs?.map(
            (item) => TarifsDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              nameTariffLineForce: item.nameTariffLineForce ?? '',
              hourCategoryDescription: item.hourCategoryDescription ?? '',
              compensatPrc: item.compensatPrc ?? 0.0,
              tariffNumber: item.tariffNumber ?? '',
              isGetLEorg: item.isGetLEorg ?? false,
              sfOrgId: item.sfOrgId ?? '',
              sfLEId: item.sfLEId ?? '',
              isDeleted: item.isDeleted ?? false,
              sfRecordId: item.sfRecordId ?? '',
              createdAt: item.createdAt ?? '',
              tariffPackId: item.tariffPackId ?? '',
              maxUsagePerDay: item.maxUsagePerDay ?? '',
              maxUsagePerWeek: item.maxUsagePerWeek ?? '',
              visibilityOnAppFor: item.visibilityOnAppFor ?? '',
              visibilityOnApp: item.visibilityOnApp ?? false,
              validUntil: item.validUntil ?? '$dateTime',
              validFrom: item.validFrom ?? '$dateTime',
              isActive: item.isActive ?? false,
            ),
          ) ??
          [],
    );

    final popList = List<PopDataModel>.from(
      pop?.map(
            (item) => PopDataModel(
              id: item.id ?? '',
              endDate: item.endDate ?? '3000-12-31',
              hourRate: item.hourRate ?? '',
              externalTariff: item.externalTariff ?? '',
              startDate: item.startDate ?? '$time',
              sfRecordId: item.sfRecordId ?? '',
              createdAt: item.createdAt ?? '',
              placementId: item.placementId ?? '',
            ),
          ) ??
          [],
    );

    final projectsList = List<ProjectsDataModel>.from(
      projects?.map(
            (item) => ProjectsDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              acceptedWork: item.acceptedWork ?? false,
              isDeleted: item.isDeleted ?? false,
              sfRecordId: item.sfRecordId ?? '',
              activeProject: item.activeProject ?? false,
              country: item.country ?? '',
              createdAt: item.createdAt ?? '',
              companyId: item.companyId ?? '',
            ),
          ) ??
          [],
    );

    final contractsList = List<ContractsDataModel>.from(
      contracts?.map(
            (item) => ContractsDataModel(
              id: item.id ?? '',
              validation: item.validation ?? '',
              totalNumberHoursPerWeek: item.totalNumberHoursPerWeek ?? 0,
              startDate: item.startDate ?? '$dateTime',
              endDate: item.endDate ?? '$dateTime',
              isDeleted: item.isDeleted ?? false,
              sfRecordId: item.sfRecordId ?? '',
              createdAt: item.createdAt ?? '',
              employeeId: item.employeeId ?? '',
            ),
          ) ??
          [],
    );

    final timesheetModel = TimesheetInfoDataModel(
      id: timesheet?.id ?? '',
      name: timesheet?.name ?? '',
      startDate: timesheet?.startDate ?? '$timeNow',
      endDate: timesheet?.endDate ?? '$time',
      status: timesheet?.status ?? '',
      sfOrgId: timesheet?.sfOrgId ?? '',
      submitedById: timesheet?.submitedById ?? '',
      sfRecordId: timesheet?.sfRecordId ?? '',
      timeBasedHours: timesheet?.timeBasedHours ?? '',
      employeeId: timesheet?.employeeId ?? '',
      payslipId: timesheet?.payslipId ?? '',
      placementId: timesheet?.placementId ?? '',
      comment: timesheet?.comment ?? '',
      employeeFase: timesheet?.employeeFase ?? '',
      resFdUitbet: timesheet?.resFdUitbet ?? false,
      resKvUitbet: timesheet?.resKvUitbet ?? false,
      resAdvUitbet: timesheet?.resAdvUitbet ?? false,
      resTvtUitbet: timesheet?.resTvtUitbet ?? false,
      resVgUitbet: timesheet?.resVgUitbet ?? false,
      resVDtUitbet: timesheet?.resVDtUitbet ?? false,
      resVDwUitbet: timesheet?.resVDwUitbet ?? false,
      resVDbUitbet: timesheet?.resVDbUitbet ?? false,
      withdrawWkFD: timesheet?.withdrawWkFD ?? false,
      withdrawWkKV: timesheet?.withdrawWkKV ?? false,
      withdrawWkADV: timesheet?.withdrawWkADV ?? false,
      withdrawWkTVT: timesheet?.withdrawWkTVT ?? false,
      withdrawWkVG: timesheet?.withdrawWkVG ?? false,
      withdrawWkVDt: timesheet?.withdrawWkVDt ?? false,
      withdrawWkVDw: timesheet?.withdrawWkVDw ?? false,
      withdrawWkVDb: timesheet?.withdrawWkVDb ?? false,
    );

    final hoursList = List<HoursDataModel>.from(
      hours?.map(
            (item) => HoursDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              cardType: 'hours',
              unraveling: item.unraveling ?? false,
              date: item.date ?? '',
              amountOfHours: item.amountOfHours ?? 0.0,
              description: item.description ?? '',
              isDeleted: item.isDeleted ?? false,
              sfRecordId: item.sfRecordId ?? '',
              createdAt: item.createdAt ?? '',
              projectId: item.projectId ?? '',
              tarifId: item.tarifId ?? '',
            ),
          ) ??
          [],
    );

    final uitzendingData = UitzendingDataModel(
      id: uitzending?.id ?? '',
      startDate: uitzending?.startDate ?? '$dateTime',
      endDate: uitzending?.endDate ?? '$dateTime',
      hoursPerWeek: double.parse(uitzending?.hoursPerWeek ?? '0'),
      defaultProject: uitzending?.defaultProject ?? '',
      disableEditingTimesheets: uitzending?.disableEditingTimesheets ?? 'null',
      employeeIDAlldisableTimesheetsEdition:
          uitzending?.employeeIdAllDisableTimesheetsEdition ?? false,
      employeeId: uitzending?.employeeId ?? '',
      sfOrgId: uitzending?.sfOrgId ?? '',
      employeeIDAllfirstName: uitzending?.employeeIdAllFirstName ?? '',
      employeeIDAlllastName: uitzending?.employeeIdAllLastName ?? '',
      employeeIDAllsfRecordId: uitzending?.employeeIdAllSfRecordId ?? '',
      employeeIDAllsfLEId: uitzending?.employeeIdAllSfLEId ?? '',
      employeeIDAllagencyId: uitzending?.employeeIdAllAgencyId ?? '',
      employeeIDAlldienstverbandStatus:
          uitzending?.employeeIdAllDienstverbandStatus ?? '',
      employeeIDAllfase: uitzending?.employeeIdAllFase ?? '',
      employeeIDAllbirthdate: uitzending?.employeeIdAllBirthdate ?? '',
      employeeIDAllblockedReservations:
          uitzending?.employeeIdAllBlockedReservations ?? '',
      employeeIDAllmailingCountry:
          uitzending?.employeeIdAllMailingCountry ?? '',
      employeeIDAllmailingcity: uitzending?.employeeIdAllMailingcity ?? '',
      employeeIDAllmailingStreet: uitzending?.employeeIdAllMailingStreet ?? '',
      contracttype: uitzending?.contracttype ?? '',
      dienstverbandStatus: uitzending?.dienstverbandStatus ?? '',
      costPrizeCalculationIdAlContractType:
          uitzending?.costPrizeCalculationIdAlContractType ?? '',
      costPrizeCalculationIdAlPlacementClause:
          uitzending?.costPrizeCalculationIdAlPlacementClause ?? false,
      typeHourRegistrationVia: uitzending?.typeHourRegistrationVia ?? '',
      tariffPackIdAlUsedUnravelingTypes:
          uitzending?.tariffPackIdAlUsedUnravelingTypes ?? [],
    );
    final approvalInfoData = ApprovalInfoDataModel(
      id: approvalInfo?.isNotEmpty ?? false ? approvalInfo?.first.id ?? '' : '',
      status: approvalInfo?.isNotEmpty ?? false
          ? approvalInfo?.first.status ?? ''
          : '',
    );

    final agencyList = List<AgencyDataModel>.from(
      agency?.map(
            (item) => AgencyDataModel(
              id: item.id ?? '',
              agencyAbonnSettings: item.agencyAbonnSettings ?? '',
              tigrisClosedYearC: ((jsonDecode(item.agencyAbonnSettings ?? '')?[
                          'Tigris__Closed_year__c'] ??
                      0.0) as double)
                  .toInt(),
              tigrisFutureApproveTimesheetC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Future_approve_Timesheet__c'] ??
                  false,
              tigrisSeparating38hoursIntoEqualPartsC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Separating_38_hours_into_equal_parts__c'] ??
                  false,
              tigrisDagReslevelC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Dag_Reslevel__c'] ??
                  false,
              tigrisTSPerReslevelC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__TSPer_Reslevel__c'] ??
                  false,
              tigrisPresenterenFdC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_FD__c'] ??
                  false,
              tigrisFDresC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__FDres__c'] ??
                  false,
              tigrisPresenterenWDCc: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_WDC__c'] ??
                  false,
              tigrisPresenterenKVc: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_KV__c'] ??
                  false,
              tigrisPresenterenADVc: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_ADV__c'] ??
                  false,
              tigrisADVreserverenC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__ADV_reserveren__c'] ??
                  false,
              tigrisPresenterenTvTc: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_TvT__c'] ??
                  false,
              tigrisTvTreserverenC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__TvT_reserveren__c'] ??
                  false,
              tigrisPresenterenVDTc: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_VDT__c'] ??
                  false,
              tigrisPresenterenVDwc: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_VDw__c'] ??
                  false,
              tigrisPresenterenVDbc: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_VDb__c'] ??
                  false,
              tigrisPresenterenVGc: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Presenteren_VG__c'] ??
                  false,
              tigrisReservationHalfEvenRoundingFromC: jsonDecode(
                    item.agencyAbonnSettings ?? '',
                  )?['Tigris__Reservation_Half_Even_rounding_from__c'] ??
                  '',
              googlePlacesApiKey: jsonDecode(
                    item.agencyTigrisSettings ?? '',
                  )?['GooglePlacesApiKey']['Tigris__Value__c'] ??
                  '',
            ),
          ) ??
          [],
    );

    final expensesTypeList = List<ExpenseTypeDataModel>.from(
      expensesType?.map(
            (item) => ExpenseTypeDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              expensesPrice: item.expensesPrice ?? '',
              invoicePercentage: item.invoicePercentage ?? 0,
              wagePercentage: item.wagePercentage ?? 0,
              recordTypeSFName: item.recordTypeSFName ?? '',
              tax: item.tax ?? '',
              payoutPer: item.payoutPer ?? '',
              units: item.units ?? '',
              type: item.type ?? '',
              sfOrgId: item.sfOrgId ?? '',
              isGetLEorg: item.isGetLEorg ?? false,
              sfLEId: item.sfLEId ?? '',
              sfRecordId: item.sfRecordId ?? '',
              isDeleted: item.isDeleted ?? false,
              vergoedingInhouding: item.vergoedingInhouding ?? '',
              createdAt: item.createdAt ?? '',
            ),
          ) ??
          [],
    );

    final expensesList = List<ExpenseDataModel>.from(
      expenses?.map(
            (item) => ExpenseDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              date: item.date ?? '',
              price: item.price ?? '',
              cardType: 'Expense',
              pricePerPaymentFrequency: item.pricePerPaymentFrequency ?? 0.0,
              explanation: item.explanation ?? '',
              amountCostPerUnit: item.amountCostPerUnit ?? '',
              createdAt: item.createdAt ?? '',
              cpcExpenseTypeConfigId: item.cpcExpenseTypeConfigId ?? '',
              projectId: item.projectId ?? '',
              timesheetId: item.timesheetId ?? '',
              numberOfUnits: item.numberOfUnits ?? 0.0,
              sfWithdrawalRemainder: item.sfWithdrawalRemainder ?? '',
            ),
          ) ??
          [],
    );

    final cpcExpenseTypeConfList = List<CpcExpenseTypeConfDataModel>.from(
      cpcExpenseTypeConf?.map(
            (item) => CpcExpenseTypeConfDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              amountCostPerUnit: item.amountCostPerUnit ?? '',
              additionalRows: item.additionalRows ?? '',
              applyAboveHourrate: item.applyAboveHourrate,
              allowedDaysOfWeek: item.allowedDaysOfWeek ?? '',
              timesheetExpenseTypeId: item.timesheetExpenseTypeId ?? '',
              description: item.description ?? '',
              allowedNumberOfDays: item.allowedNumberOfDays ?? 0,
              applyBelowHourrate: item.applyBelowHourrate,
              sfOrgId: item.sfOrgId ?? '',
              allocation: item.allocation ?? '',
              sfLEId: item.sfLEId ?? '',
              sfRecordId: item.sfRecordId ?? '',
              employeeId: item.employeeId ?? '',
              active: item.active ?? false,
              placementId: item.placementId ?? '',
              reimbursementWithdrawal: item.reimbursementWithdrawal ?? '',
              positive: item.reimbursementWithdrawal != 'Withdrawal',
              validFrom: item.validFrom ?? '$dateTime',
              validTo: item.validTo ?? '$dateTime',
              nameForEmployee: item.nameForEmployee ?? '',
              visibilityForEmployee: item.visibilityForEmployee ?? '',
              maximumAmountCostPerTp:
                  double.parse(item.maximumAmountCostPerTp ?? '0'),
              minimumAmountCostPerTp:
                  double.parse(item.minimumAmountCostPerTp ?? '0'),
              maximumAmountCostPerUnit:
                  double.parse(item.maximumAmountCostPerUnit ?? '0'),
              minimumAmountCostPerUnit:
                  double.parse(item.minimumAmountCostPerUnit ?? '0'),
              minimumAmountUnitsPerTp:
                  double.parse(item.minimumAmountUnitsPerTp ?? '0'),
              minimumAmountUnitsPerDay:
                  double.parse(item.minimumAmountUnitsPerDay ?? '0'),
              maximumAmountUnitsPerDay: item.maximumAmountUnitsPerDay ?? 0,
              maximumAmountUnitsPerTp: item.maximumAmountUnitsPerTp ?? 0,
              invoicePercentage: item.invoicePercentage ?? '',
            ),
          ) ??
          [],
    );

    final reservationTotal = TotalReservationDataModel(
      id: totalreservation?.id ?? '',
      fDEind: totalreservation?.fDEind ?? '',
      kVEind: totalreservation?.kVEind ?? '',
      aDVEind: totalreservation?.aDVEind ?? '',
      tvTEindUren: totalreservation?.tvTEindUren ?? '',
      vGEind: totalreservation?.vGEind ?? '',
      vGEindTemp: totalreservation?.vGEindTemp ?? '',
      vDwEind: totalreservation?.vDwEind ?? '',
      vDbEind: totalreservation?.vDbEind ?? '',
      vDtEind: totalreservation?.vDtEind ?? '',
      fDInUren: totalreservation?.fDInUren ?? '',
      fDInUrenTemp: totalreservation?.fDInUrenTemp ?? '',
      kVInUren: totalreservation?.kVInUren ?? '',
      kVInUrenTemp: totalreservation?.kVInUrenTemp ?? '',
      aDVInUren: totalreservation?.aDVInUren ?? '',
      aDVInUrenTemp: totalreservation?.aDVInUrenTemp ?? '',
      tvTInUren: totalreservation?.tvTInUren ?? '',
      tvTInUrenTemp: totalreservation?.tvTInUrenTemp ?? '',
      vGInUren: totalreservation?.vGInUren ?? '',
      vDwInUren: totalreservation?.vDwInUren ?? '',
      vDwInUrenTemp: totalreservation?.vDwInUrenTemp ?? '',
      vDbInUren: totalreservation?.vDbInUren ?? '',
      vDbInUrenTemp: totalreservation?.vDbInUrenTemp ?? '',
      vDtInUren: totalreservation?.vDtInUren ?? '',
      vDtInUrenTemp: totalreservation?.vDtInUrenTemp ?? '',
      totalReservationSf: totalreservation?.totalReservationSf ?? '',
      nmbrsID: totalreservation?.nmbrsID ?? '',
      sfLEId: totalreservation?.sfLEId ?? '',
      isGetLEorg: totalreservation?.isGetLEorg ?? false,
      sfOrgId: totalreservation?.sfOrgId ?? '',
      isDeleted: totalreservation?.isDeleted ?? false,
      sfRecordId: totalreservation?.sfRecordId ?? '',
      createdAt: totalreservation?.createdAt ?? '',
      updatedAt: totalreservation?.updatedAt ?? '',
      employeeId: totalreservation?.employeeId ?? '',
    );

    final reservationList = List<ReservationDataModel>.from(
      reservation?.map(
            (item) => ReservationDataModel(
              id: item.id ?? '',
              aDVBij: item.aDVBij ?? '',
              fDBij: item.fDBij ?? '',
              kVBij: item.kVBij ?? '',
              tvTBij: item.tvTBij ?? '',
              vGBij: item.vGBij ?? '',
              vDbBij: item.vDbBij ?? '',
              vDwBij: item.vDwBij ?? '',
              aDVAf: item.aDVAf ?? '',
              fDAf: item.fDAf ?? '',
              kVAf: item.kVAf ?? '',
              tvTAf: item.tvTAf ?? '',
              vGAf: item.vGAf ?? '',
              vDbAf: item.vDbAf ?? '',
              vDwAf: item.vDwAf ?? '',
              averageSalary: item.averageSalary ?? '',
              wDC: item.wDC ?? '',
              isGetLEorg: item.isGetLEorg ?? false,
              sfOrgId: item.sfOrgId ?? '',
              sfLEId: item.sfLEId ?? '',
              isDeleted: item.isDeleted ?? false,
              sfRecordId: item.sfRecordId ?? '',
              aggregateSum: item.aggregateSum ?? '',
              createdAt: item.createdAt ?? '',
              timesheetId: item.timesheetId ?? '',
            ),
          ) ??
          [],
    );

    final onkostenregelsList = List<OnkostenRegelsDataModel>.from(
      onkostenregels?.map(
            (item) => OnkostenRegelsDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              date: item.date ?? '',
              numberOfUnits: item.numberOfUnits ?? 0,
              price: item.price ?? '',
              pricePerPaymentFrequency: item.pricePerPaymentFrequency ?? '',
              explanation: item.explanation ?? '',
              sfOrgId: item.sfOrgId ?? '',
              sfLEId: item.sfLEId ?? '',
              amountCostPerUnit: item.amountCostPerUnit ?? '',
              sfRecordId: item.sfRecordId ?? '',
              bTW: item.bTW ?? '',
              isDividedPerDays: item.isDividedPerDays ?? false,
              maximaalBedrag: item.maximaalBedrag ?? '',
              sfWithdrawalRemainder: item.sfWithdrawalRemainder ?? '',
              createdAt: item.createdAt ?? '',
              cpcExpenseTypeConfigId: item.cpcExpenseTypeConfigId ?? '',
              invoiceId: item.invoiceId ?? '',
              projectId: item.projectId ?? '',
              timesheetId: item.timesheetId ?? '',
              timesheetExpenseTypeId: item.timesheetExpenseTypeId ?? '',
            ),
          ) ??
          [],
    );

    final hoursReservation = List<ReservationHoursDataModel>.from(
      reservationHours?.map(
            (item) => ReservationHoursDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              date: item.date ?? '',
              sfOrgId: item.sfOrgId ?? '',
              sfLEId: item.sfLEId ?? '',
              sfRecordId: item.sfRecordId ?? '',
              createdAt: item.createdAt ?? '',
              projectId: item.projectId ?? '',
              amountOfHours: item.amountOfHours ?? 0.0,
              description: item.description ?? '',
              loonPerc: item.loonPerc ?? 0,
              tarifId: item.tarifId ?? '',
              tarifIdAlCompensatPrc: item.tarifIdAlCompensatPrc ?? 0,
              tarifIdAlId: item.tarifIdAlId ?? '',
              tarifIdAlName: item.tarifIdAlName ?? '',
              unraveling: item.unraveling ?? false,
            ),
          ) ??
          [],
    );

    final wdcOnkostenregelList = List<WdcOnkostenregelDataModel>.from(
      wdcOnkostenregel?.map(
            (item) => WdcOnkostenregelDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              date: item.date ?? '',
              sfOrgId: item.sfOrgId ?? '',
              sfLEId: item.sfLEId ?? '',
              sfRecordId: item.sfRecordId ?? '',
              amountCostPerUnit: item.amountCostPerUnit ?? '',
              bTW: item.bTW ?? '',
              cpcExpenseTypeConfigId: item.cpcExpenseTypeConfigId ?? '',
              departureAddress: item.departureAddress ?? '',
              explanation: item.explanation ?? '',
              destinationAddress: item.destinationAddress ?? '',
              isDividedPerDays: item.isDividedPerDays ?? false,
              maximaalBedrag: item.maximaalBedrag ?? '',
              price: item.price ?? '',
              returnRoute: item.returnRoute ?? false,
              pricePerPaymentFrequency: item.pricePerPaymentFrequency ?? '',
              numberOfUnits: item.numberOfUnits ?? '',
            ),
          ) ??
          [],
    );

    final settingContact = ContractsSettingDataModel(
      id: contactSetting?.id ?? '',
      name: contactSetting?.name ?? '',
      stallPayment: contactSetting?.stallPayment ?? false,
      vakkrachtBouw: contactSetting?.vakkrachtBouw ?? false,
      vakkrachtBouwUTA: contactSetting?.vakkrachtBouwUTA ?? false,
      entity: contactSetting?.entity ?? '',
      contactEntity: contactSetting?.contactEntity ?? '',
      wekenteller: contactSetting?.wekenteller ?? 0,
      fase: contactSetting?.fase ?? '',
      sfOrgId: contactSetting?.sfOrgId ?? '',
      sfLEId: contactSetting?.sfLEId ?? '',
      sfRecordId: contactSetting?.sfRecordId ?? '',
      isNegativeReservationsAllowed:
          contactSetting?.isNegativeReservationsAllowed ?? false,
      ignoreWML: contactSetting?.ignoreWML ?? false,
      spAdv: contactSetting?.spAdv ?? false,
      spFd: contactSetting?.spFd ?? false,
      spKv: contactSetting?.spKv ?? false,
      spTvt: contactSetting?.spTvt ?? false,
      spVdb: contactSetting?.spVdb ?? false,
      spVdw: contactSetting?.spVdw ?? false,
      spVg: contactSetting?.spVg ?? false,
    );

    final assignmentRulesTariff = List<TariffAssignmentRulesDataModel>.from(
      tariffAssignmentRules?.map(
            (item) => TariffAssignmentRulesDataModel(
              validFrom: item.validFrom ?? '',
              usedUnravelingTypes:
                  jsonDecode(item.usedUnravelingTypes ?? '') ?? [],
            ),
          ) ??
          [],
    );

    return TimesheetsDescriptionDataModel(
      code: code ?? 0,
      message: message ?? '',
      tarifs: tarifsList,
      pop: popList,
      approvalInfo: approvalInfoData,
      projects: projectsList,
      contracts: contractsList,
      timesheet: timesheetModel,
      hours: hoursList,
      uitzending: uitzendingData,
      expensesType: expensesTypeList,
      cpcExpenseTypeConf: cpcExpenseTypeConfList,
      expenses: expensesList,
      totalReservation: reservationTotal,
      reservation: reservationList,
      onkostenregels: onkostenregelsList,
      reservationHours: hoursReservation,
      wdcOnkostenregel: wdcOnkostenregelList,
      agency: agencyList,
      contactSetting: settingContact,
      wmls: wmls ?? {},
      tariffAssignmentRules: assignmentRulesTariff,
    );
  }
}

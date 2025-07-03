// import 'dart:convert';
// import 'dart:developer';

// import 'package:bloc/bloc.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:repositories/repositories.dart';
// import 'package:shared/shared.dart';
// import 'package:ui_kit/ui_kit.dart';
// import 'package:view_models/view_models.dart';

// part 'timesheet_bloc.freezed.dart';
// part 'timesheet_event.dart';
// part 'timesheet_state.dart';

// @injectable
// class TimesheetBloc extends Bloc<TimesheetEvent, TimesheetState> {
//   final HomeRepository _homeRepository;
//   final TimesheetRepository _timesheetRepository;
//   final ProfileRepository _profileRepository;
//   List<HoursCardDataModel> listHoursCards = [];
//   List<ExpensesCardDataModel> listExpensesCards = [];
//   List<ReservationCardDataModel> listReservationCards = [];
//   late TimesheetsDescriptionDataModel timesheetsInfo;
//   List<JobCompaniesDataModel> jobCompanies = [];
//   List<ProjectInfoDataModel> listProjectsInfo = [];
//   List<Map<String, String>> projects = [
//     {
//       '': 'registration_timesheets_screen.project_not_selected'.tr(),
//     }
//   ];
//   List<Map<String, String>> hoursType = [];
//   List<Map<String, String>> cpcExpenseType = [
//     {'': 'Costs not selected'}
//   ];
//   List<Map<String, String>> timesheetHoursType = [];
//   List<Map<String, String>> currentHoursType = [];
//   List<Map<int, String>> listTimesheets = [];
//   List<int> listDaysNotBlocked = [];
//   final toDeleteExpenses = <ExpensesDayModel>[];
//   DateTime timesheetStartDate = DateTime(0);
//   DateTime timesheetEndDate = DateTime(2100);
//   DateTime placementStartDate = DateTime(0);
//   DateTime placementEndDate = DateTime(2100);
//   bool isEditableTimesheet = false;

//   bool hideSend = true;
//   bool isApprovalInfo = false;
//   String totalHours = '0';
//   String totalCosts = '0';

//   final dateFormat = DateFormat('yyyy-MM-dd');
//   final RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
//   final DateTime time = DateTime(0);

//   // reservation start
//   Map<dynamic, dynamic> vmTotalReservering = {};
//   Map<dynamic, dynamic> urenAndOnkostenregels = {};
//   final Map<dynamic, dynamic> employeeTM = {};
//   List<AgencyDataModel> activeAgency = [];
//   bool vmSaveReservation = false;
//   Map<dynamic, dynamic> vmDayNumber2RateInfoMap = {};
//   bool vmIsNegativeReservationsAllowed = false;
//   Map<dynamic, dynamic> vmTotalReserveringInitialWithR = {};
//   final Map<dynamic, dynamic> vmTotalReserveringInitial = {};
//   Map<dynamic, dynamic> vmTotalReserveringDisplayed = {};
//   Map<String, bool> showRow = {};
//   Map<String, bool> vmIsAutoModeReservation = {};
//   List<PopDataModel> vmAllPops = [];
//   String vdcReservationValue = '';
//   List<Map<String, String>> reservationType = [];
//   bool isButtonActive = false;
//   Map<String, bool> showRowReservation = {};
//   // reservation end

//   // StartStop
//   double vmTotalHoursPerWeek = 0.0;
//   bool vmIsUnravelingTypesInUse = false;
//   List<dynamic> vmUsedUnravelingTypes = [];
//   List<StartStopCardDataModel> listStartStopCard = [];
//   List<Map<dynamic, dynamic>> vmHoursForTimeBasedTimesheets = [];
//   String vmTotalHoursPerWeekStr = '';
//   List<bool> wmIsSel = [];
//   bool typeHourRegistrationVia = false;
//   bool vmIsFillByStartStopTimes = false;
//   bool vmIsFillInHourDisabled = false;
//   String timesheetTimeBasedHours = '';
//   Map<String, StartStopCardDataModel> listStartStop = {};
//   List<TariffAssignmentRulesDataModel> vmAllUnravelingRecords = [];
//   bool vmIisUnravelingTypesInUse = false;
//   List<Map<String, String>> unravelingTypes = [];
//   String googleApiKey = '';
//   // StartStop end

//   TimesheetBloc(
//     this._homeRepository,
//     this._timesheetRepository,
//     this._profileRepository,
//   ) : super(const TimesheetState.loading()) {
//     on<InitTimesheetEvent>(_initTimesheets);
//     on<UploadTimesheetEvent>(_uploadTimesheets);
//     on<TimesheetUpdateHoursCardEvent>(_updateHoursCard);
//     on<TimesheetUpdateExpensesCardEvent>(_updateExpensesCard);
//     on<GetTimesheetEvent>(_getTimesheet);
//     on<TimesheetDeleteHoursCardEvent>(_deleteHoursCard);
//     on<TimesheetDeleteExpensesCardEvent>(_deleteExpensesCard);
//     on<TimesheetAddCardEvent>(_addCard);
//     on<GetTimesheetsForCurrentPeriodEvent>(_getTimesheetsForCurrentPeriod);
//     on<TimesheetDeleteReservationCardEvent>(_deleteReservationCard);
//     on<TimesheetDeleteStartStopCardEvent>(_deleteStartStopCard);
//     on<TimesheetDeleteStartStopCardEvent>(_deleteStartStopCard);
//     on<TimesheetUpdateReservationCardEvent>(_updateReservationCard);
//     on<TimesheetUpdateStartStopCardEvent>(_updateStartStopCard);
//     on<TimesheetSelectWeekEvent>(_changeWeek);
//     on<SaveTimesheetEvent>(_updateTimesheetdata);
//   }

//   // reservation start
//   final vmShowRow = {
//     'VDw': false,
//     'VDb': false,
//     'VDt': false,
//     'FD': false,
//     'KV': false,
//     'ADV': false,
//     'TvT': false,
//     'VG': false,
//     'WDC': false
//   };

//   Map<String, String> key2ValuesMap = {
//     'VDw': 'registration_timesheets_screen.key2ValuesMap_VDw'.tr(),
//     'VDb': 'registration_timesheets_screen.key2ValuesMap_VDb'.tr(),
//     'VDt': 'registration_timesheets_screen.key2ValuesMap_VDt'.tr(),
//     'FD': 'registration_timesheets_screen.key2ValuesMap_FD'.tr(),
//     'KV': 'registration_timesheets_screen.key2ValuesMap_KV'.tr(),
//     'ADV': 'registration_timesheets_screen.key2ValuesMap_ADV'.tr(),
//     'TvT': 'registration_timesheets_screen.key2ValuesMap_TvT'.tr(),
//     'VG': 'registration_timesheets_screen.key2ValuesMap_VG'.tr(),
//     'WDC': 'registration_timesheets_screen.key2ValuesMap_WDC'.tr(),
//   };

//   final key2Map = {
//     'VDw': 'vakantWet',
//     'VDb': 'vakantBoven',
//     'TvT': 'compen',
//     'ADV': 'adv',
//     'KV': 'kort',
//     'FD': 'feest',
//     'VDt': 'vakantDag',
//     'VG': 'vakantId',
//     'WDC': 'wdc',
//   };

//   final key2nonUsedValuesMap = {
//     'VDw': ['vDwEind', 'vDwInUren'],
//     'VDb': ['vDbEind', 'vDbInUren'],
//     'VDt': ['vDtEind', 'vDtInUren'],
//     'FD': ['fDEind', 'fDInUren'],
//     'KV': ['kVEind', 'kVInUren'],
//     'ADV': ['aDVEind', 'aDVInUren'],
//     'TvT': ['tvTEindUren', 'tvTInUren'],
//     'VG': ['vGEind', 'vGInUren'],
//     'WDC': ['wDcEind', 'wDcInUren'],
//   };

//   Map<String, List<String>> vmMapReserveigenDay = {
//     'feest': ['', '', '', '', '', '', ''],
//     'kort': ['', '', '', '', '', '', ''],
//     'adv': ['', '', '', '', '', '', ''],
//     'compen': ['', '', '', '', '', '', ''],
//     'vakantId': ['', '', '', '', '', '', ''],
//     'vakantDag': ['', '', '', '', '', '', ''],
//     'vakantWet': ['', '', '', '', '', '', ''],
//     'vakantBoven': ['', '', '', '', '', '', ''],
//   };

//   Map<String, List<String>> vmMapReserveigenDayOld = {
//     'feest': ['', '', '', '', '', '', ''],
//     'kort': ['', '', '', '', '', '', ''],
//     'adv': ['', '', '', '', '', '', ''],
//     'compen': ['', '', '', '', '', '', ''],
//     'vakantId': ['', '', '', '', '', '', ''],
//     'vakantDag': ['', '', '', '', '', '', ''],
//     'vakantWet': ['', '', '', '', '', '', ''],
//     'vakantBoven': ['', '', '', '', '', '', ''],
//   };

//   Map<String, String> vmMapReserveigen = {
//     'feest': '',
//     'kort': '',
//     'adv': '',
//     'compen': '',
//     'vakantId': '',
//     'vakantDag': '',
//     'vakantWet': '',
//     'vakantBoven': '',
//   };

//   Map<String, String> vmMapReserveigenOld = {
//     'feest': '',
//     'kort': '',
//     'adv': '',
//     'compen': '',
//     'vakantId': '',
//     'vakantDag': '',
//     'vakantWet': '',
//     'vakantBoven': '',
//   };

//   bool isReservationAdd() {
//     if (listReservationCards.isNotEmpty) {
//       return listReservationCards
//           .where(
//             (element) => showRow.containsKey(element.reservationKey),
//           )
//           .isNotEmpty;
//     } else {
//       return true;
//     }
//   }

//   double getHourRateByTimesheetAndDate(DateTime dt, List<PopDataModel> pops) {
//     double result = 0;

//     pops.forEach((element) {
//       if ((DateTime.parse(element.startDate).millisecondsSinceEpoch <=
//                   dt.millisecondsSinceEpoch &&
//               DateTime.parse(element.endDate).millisecondsSinceEpoch >=
//                   dt.millisecondsSinceEpoch) ||
//           (DateTime.parse(element.startDate).millisecondsSinceEpoch <=
//                   dt.millisecondsSinceEpoch &&
//               element.endDate.isEmpty)) {
//         result = double.parse(element.hourRate);
//       }
//     });

//     return result;
//   }

//   bool isAmountOfHours(List<String> list) {
//     double result = 0.0;
//     if (list.isNotEmpty) {
//       result = list
//           .map(
//             (item) => double.parse(
//               item.isNotEmpty ? item : '0',
//             ),
//           )
//           .reduce(
//             (value, element) => value + element,
//           );
//     }

//     return result > 0;
//   }

//   bool getNegativeReservationsSettings(
//     ContractsSettingDataModel contactSetting,
//     UitzendingDataModel uitzending,
//     Map<dynamic, dynamic> abonnSettings,
//   ) {
//     var isNegativeReservationsAllowed = false;
//     if (contactSetting.isNegativeReservationsAllowed) {
//       isNegativeReservationsAllowed = true;
//     } else if (uitzending.id.isNotEmpty &&
//         uitzending.costPrizeCalculationIdAlContractType.isNotEmpty) {
//       final negativeReservationsAllowed =
//           uitzending.dienstverbandStatus == 'Fulltime salary'
//               ? abonnSettings['Tigris__NegativeReservationsAllowedFS__c']
//               : abonnSettings['Tigris__NegativeReservationsAllowed__c'];
//       final listCPNegativeReservationsAllowed =
//           negativeReservationsAllowed.toString().isNotEmpty
//               ? json.decode(negativeReservationsAllowed)
//               : <dynamic>[];
//       final contractType = uitzending.costPrizeCalculationIdAlContractType;

//       final placementClause =
//           uitzending.costPrizeCalculationIdAlPlacementClause;
//       switch (contractType) {
//         case 'Fase A':
//           {
//             if ((placementClause &&
//                     listCPNegativeReservationsAllowed
//                         .toString()
//                         .contains('Fase A with PC')) ||
//                 (!placementClause &&
//                     listCPNegativeReservationsAllowed
//                         .toString()
//                         .contains('Fase A without PC')) ||
//                 listCPNegativeReservationsAllowed
//                     .toString()
//                     .contains('Fase A')) {
//               isNegativeReservationsAllowed = true;
//             }
//             break;
//           }
//         case 'Fase I/II':
//           {
//             if ((placementClause &&
//                     listCPNegativeReservationsAllowed
//                         .toString()
//                         .contains('Fase I/II with PC')) ||
//                 (!placementClause &&
//                     listCPNegativeReservationsAllowed
//                         .toString()
//                         .contains('Fase I/II without PC')) ||
//                 listCPNegativeReservationsAllowed
//                     .toString()
//                     .contains('Fase I/II')) {
//               isNegativeReservationsAllowed = true;
//             }
//             break;
//           }
//         default:
//           {
//             if (listCPNegativeReservationsAllowed
//                 .toString()
//                 .contains(contractType)) {
//               isNegativeReservationsAllowed = true;
//             }
//             break;
//           }
//       }
//     }
//     return isNegativeReservationsAllowed;
//   }

//   Map<dynamic, dynamic> checkPopsAndWML(
//     List<PopDataModel> pops,
//     TimesheetInfoDataModel timesheet,
//     Map<String, dynamic> wmls,
//   ) {
//     String firstDay;
//     final allInfo = timesheetsInfo;
//     final contactSetting = timesheetsInfo.contactSetting;
//     if (DateTime.parse(timesheet.startDate)
//         .isBefore(DateTime.parse(allInfo.uitzending.startDate))) {
//       firstDay = allInfo.uitzending.startDate;
//     } else {
//       firstDay = timesheet.startDate;
//     }
//     String endDay;
//     final uitzendingEndDate = allInfo.uitzending.endDate;
//     if (uitzendingEndDate.isNotEmpty &&
//         DateTime.parse(timesheet.endDate)
//             .isAfter(DateTime.parse(uitzendingEndDate))) {
//       endDay = uitzendingEndDate;
//     } else {
//       endDay = timesheet.endDate;
//     }
//     final Map<dynamic, dynamic> result = {};
//     result['wmlerror'] = '';
//     result['hrerror'] = '';
//     result['hrLessWMLerror'] = '';
//     result['error'] = '';
//     // For contact with Dienstverband_Status__c = 'ZZP-er' or 'Inleenkracht' we don't need to check WML
//     final isWMLCheck = employeeTM['dienstverbandStatus'] != 'ZZP-er' &&
//         employeeTM['dienstverbandStatus'] != 'Inleenkracht' &&
//         !contactSetting.ignoreWML;
//     final String birthdate = employeeTM['birthdate'];
//     if (birthdate.isNotEmpty) {
//       DateTime d = DateTime.parse(firstDay);
//       for (d = DateTime(d.year, d.month, d.day - 1);
//           d.millisecondsSinceEpoch <
//               DateTime.parse(endDay).millisecondsSinceEpoch;
//           d.day) {
//         d = DateTime(d.year, d.month, d.day + 1);
//         final month = d.month;
//         final year = d.year;
//         result[d.toIso8601String().substring(0, 10)] = <dynamic, dynamic>{};
//         if (birthdate.isNotEmpty && isWMLCheck) {
//           final ageDifMs = d.millisecondsSinceEpoch -
//               DateTime.parse(birthdate).millisecondsSinceEpoch;
//           final ageDate = DateTime.fromMillisecondsSinceEpoch(
//             ageDifMs,
//           ); // milliseconds from epoch
//           var diffAge = (ageDate.year - 1970).abs();
//           diffAge = diffAge < 15 ? 15 : diffAge;
//           final wmlKeyAge = (diffAge < 23)
//               ? '${'rate' '$diffAge'}years'
//               : '${'rate' '22'}years';
//           var nameOfYear = '$year-';
//           if (month > 5) {
//             nameOfYear = '${nameOfYear}2HY';
//           } else {
//             nameOfYear = '${nameOfYear}1HY';
//           }
//           final Map<String, dynamic> wmlYear = wmls[nameOfYear];
//           if (wmlYear.isNotEmpty &&
//               (wmlYear['perDay'].toString().isNotEmpty) &&
//               (wmlYear[wmlKeyAge].toString().isNotEmpty)) {
//             result[d.toIso8601String().substring(0, 10)]['wml'] = double.parse(
//                   wmlYear['perDay'].toString().isNotEmpty
//                       ? wmlYear['perDay'].toString()
//                       : '0',
//                 ) *
//                 double.parse(
//                   wmlYear[wmlKeyAge].toString().isNotEmpty
//                       ? wmlYear[wmlKeyAge].toString()
//                       : '0',
//                 ) /
//                 8;
//           } else {
//             result[d.toIso8601String().substring(0, 10)]['wmlerror'] = true;
//             result['wmlerror'] = d.toIso8601String().substring(0, 10);
//           }
//         }
//         result[d.toIso8601String().substring(0, 10)]['hr'] =
//             getHourRateByTimesheetAndDate(d, pops);
//         if (result[d.toIso8601String().substring(0, 10)]['hr'] == 0) {
//           result['hrerror'] = d.toIso8601String().substring(0, 10);
//         } else if (birthdate.isNotEmpty &&
//             isWMLCheck &&
//             result[d.toIso8601String().substring(0, 10)]['hr'] <
//                 result[d.toIso8601String().substring(0, 10)]['wml']) {
//           result['hrLessWMLerror'] = d.toIso8601String().substring(0, 10);
//         }
//       }

//       if (result['wmlerror'].toString().isNotEmpty) {
//         result['error'] +=
//             '${'${'registration_timesheets_screen.message_info12'.tr()} ${result['wmlerror']}'}\n';
//       }
//       if (result['hrerror'].toString().isNotEmpty) {
//         result['error'] +=
//             '${'${'registration_timesheets_screen.message_info13'.tr()} ${result['hrerror']}'}\n';
//       }
//       if (result['hrLessWMLerror'].toString().isNotEmpty) {
//         result['error'] +=
//             '${'${'registration_timesheets_screen.message_info14'.tr()} ${result['hrLessWMLerror']}'}\n';
//       }
//       if (result['error'].toString().isNotEmpty) {
//         result['error'] += 'registration_timesheets_screen.message_info15'.tr();
//       }
//     } else if (isWMLCheck) {
//       result['error'] = 'registration_timesheets_screen.message_info16'.tr();
//     }
//     return result;
//   }

//   // filter And Save Available POPs start

//   void filterAndSaveAvailablePOPs(
//     List<PopDataModel> pops,
//     TimesheetInfoDataModel tm,
//     Emitter<TimesheetState> emit,
//   ) {
//     final allInfo = timesheetsInfo;
//     final wmls = timesheetsInfo.wmls;
//     final blockTariffAndProjectByStatus =
//         allInfo.timesheet.status == 'Terugdraaien' ||
//             allInfo.timesheet.status == 'Wacht op goedkeuring' ||
//             allInfo.timesheet.status == 'Corrected' ||
//             allInfo.timesheet.status == 'Goedgekeurd';
//     if (pops.isNotEmpty) {
//       vmAllPops = pops;
//     }

//     bool isError = false;

//     final result = checkPopsAndWML(vmAllPops, tm, wmls);
//     if (result['error'].toString().isNotEmpty &&
//         !blockTariffAndProjectByStatus) {
//       if (!isError) {
//         emit(
//           TimesheetState.hoursError(
//             hoursError: result['error'],
//           ),
//         );
//       }
//       isError = true;
//       log(
//         '${'Warning: approve disabled (POP WML Error = ${result['error']}'})',
//       );
//     }
//     if (!result['error'].toString().isNotEmpty) {
//       isError = false;
//     }
//   }

//   // filter And Save Available POPs start end

//   // extract data for reservering recalculation start

//   void extractDataForReserveringRecalculation(
//     Emitter<TimesheetState> emit,
//   ) {
//     final allInfo = timesheetsInfo;

//     filterAndSaveAvailablePOPs(allInfo.pop, allInfo.timesheet, emit);
//     final popsList = allInfo.pop.isNotEmpty ? allInfo.pop : <dynamic>[];
//     if (popsList.isEmpty) {
//       if (allInfo.timesheet.status.isNotEmpty) {
//         emit(
//           TimesheetState.hoursError(
//             hoursError:
//                 '${'registration_timesheets_screen.message_info17'.tr()} ${activeAgency.first.orgName}',
//           ),
//         );
//       }
//       return;
//     }
//     final isMoreThanOneHourRate = popsList.length > 1;

//     final Map<dynamic, dynamic> dayNumber2RateInfoMap = {};

//     for (int i = 0; i < 7; i++) {
//       final itemDate = dateFormat.format(
//         DateTime(
//           timesheetStartDate.year,
//           timesheetStartDate.month,
//           timesheetStartDate.day + i,
//         ),
//       );

//       dayNumber2RateInfoMap[i] = {'date': itemDate};
//     }

//     if (isMoreThanOneHourRate) {
//       final hourlyRatesList = allInfo.pop;

//       dayNumber2RateInfoMap.keys.forEach((
//         key,
//       ) {
//         final dt = dayNumber2RateInfoMap[key]['date'];
//         hourlyRatesList.forEach((hourInfo) {
//           if ((DateTime.parse(hourInfo.startDate).millisecondsSinceEpoch <=
//                   DateTime.parse(dt).millisecondsSinceEpoch) &&
//               (DateTime.parse(hourInfo.endDate).millisecondsSinceEpoch >=
//                   DateTime.parse(dt).millisecondsSinceEpoch)) {
//             if (hourInfo.hourRate.isNotEmpty) {
//               dayNumber2RateInfoMap[key]['rate'] = hourInfo.hourRate;
//             }
//           }
//         });
//       });
//     } else {
//       dayNumber2RateInfoMap.keys.forEach((
//         key,
//       ) {
//         if (allInfo.pop.first.hourRate.isNotEmpty) {
//           dayNumber2RateInfoMap[key]['rate'] = allInfo.pop.first.hourRate;
//         }
//       });
//     }
//     vmDayNumber2RateInfoMap = dayNumber2RateInfoMap;
//   }

//   // extract data for reservering recalculation end

//   String prettifyValues(double value, bool isHalfEvenRound) {
//     double prettyValues = 0.0;
//     if (value.isNaN || value == 0) {
//       prettyValues = 0;
//     } else {
//       prettyValues = value;
//     }
//     if (isHalfEvenRound) {
//       prettyValues = value;
//     } else {
//       prettyValues = (value * 100.0).ceil() / 100.0;
//     }
//     final result = prettyValues.toStringAsFixed(2);
//     return result == '-0.00' ? result.substring(1) : result;
//   }

//   void checkBlockedReservationsForEmployee() {
//     if (employeeTM['blockedReservations'].toString().isNotEmpty) {
//       final listBlockedRes =
//           employeeTM['blockedReservations'].toString().toUpperCase();
//       showRow = vmShowRow;

//       showRow.keys.forEach((key) {
//         final keyBlockRes = 'Presenteren_$key';
//         if (showRow[key].toString().isNotEmpty &&
//             listBlockedRes.contains(keyBlockRes.toUpperCase())) {
//           showRow[key] = false;
//         }
//       });
//     }
//   }

//   int daysBetween(String date1, String date2) {
//     const oneDayMs = 24 * 60 * 60 * 1000;
//     final firstDate = DateTime.parse(date1);
//     final secondDate = DateTime.parse(date2);
//     return ((firstDate.millisecondsSinceEpoch -
//                     secondDate.millisecondsSinceEpoch)
//                 .abs() /
//             oneDayMs)
//         .round();
//   }

//   DateTime addDays(int days, DateTime startDate) {
//     var result = startDate;
//     result = DateTime(result.year, result.month, result.day + days);
//     return result;
//   }

//   void doRecalculateTRValues(List<String> reserveringsList, String keyHour) {
//     final Map<dynamic, dynamic> trValuesList = {};
//     trValuesList.addAll(vmTotalReserveringInitialWithR);
//     final trValuesListDisplayed = vmTotalReserveringDisplayed;
//     final vmTimesheetRec = timesheetsInfo.timesheet;

//     final Map<dynamic, dynamic> abonnSettings =
//         json.decode(activeAgency.first.agencyAbonnSettings ?? '');

//     final ab = abonnSettings;
//     final ts = vmTimesheetRec;
//     final isHalfEvenRound = ab.toString().isNotEmpty &&
//         ab['Tigris__Reservation_Half_Even_rounding_from__c']
//             .toString()
//             .isNotEmpty &&
//         DateTime.parse(ts.startDate).millisecondsSinceEpoch >=
//             DateTime.parse(
//               ab['Tigris__Reservation_Half_Even_rounding_from__c'],
//             ).millisecondsSinceEpoch;
//     if (keyHour == 'vGEind') {
//       var available = trValuesList[keyHour] != 0 ? trValuesList[keyHour] : 0;

//       reserveringsList.forEach((value) {
//         if (value.isNotEmpty) {
//           isButtonActive = true;
//           available -= double.parse(value);
//         }
//       });

//       trValuesListDisplayed[keyHour] =
//           prettifyValues(available, isHalfEvenRound);
//       vmTotalReserveringDisplayed = trValuesListDisplayed;

//       isButtonActive = true;
//       return;
//     }

//     final hour2MoneyMap = {
//       'fDInUren': 'fDEind',
//       'kVInUren': 'kVEind',
//       'aDVInUren': 'aDVEind',
//       'tvTInUren': 'tvTEindUren',
//       'vDtInUren': 'vDtEind',
//       'vDwInUren': 'vDwEind',
//       'vDbInUren': 'vDbEind'
//     };

//     final keyMoney = hour2MoneyMap[keyHour];
//     var limitHours = trValuesList[keyHour];
//     var limitMoney = trValuesList[keyMoney] ?? 0;

//     final dayNumber2RateInfoMap = vmDayNumber2RateInfoMap;

//     for (int i = 0; i < reserveringsList.length; i++) {
//       double hours = double.parse(
//         reserveringsList[i].isNotEmpty ? reserveringsList[i] : '0',
//       );
//       if (hours.abs() < 0.00001) {
//         hours = 0;
//       }
//       if (hours != 0) {
//         isButtonActive = true;
//       }

//       final dailyRate = double.parse(
//         dayNumber2RateInfoMap[i]['rate'].toString().isNotEmpty
//             ? dayNumber2RateInfoMap[i]['rate']
//             : '0',
//       );

//       limitMoney -= hours * dailyRate;
//       limitHours -= hours;
//     }

//     trValuesList[keyMoney] = limitMoney;
//     trValuesList[keyHour] = limitHours;

//     trValuesListDisplayed[keyHour] =
//         prettifyValues(trValuesList[keyHour], isHalfEvenRound);
//     trValuesListDisplayed[keyMoney] =
//         prettifyValues(trValuesList[keyMoney], isHalfEvenRound);

//     vmTotalReserveringDisplayed = trValuesListDisplayed;
//     vmTotalReservering = trValuesList;
//   }

//   // init reservation

//   void calldoInitReservation(
//     Map<String, dynamic> totalReservering,
//     Map<dynamic, dynamic> urenAndOnkostenregels,
//     Emitter<TimesheetState> emit,
//   ) {
//     final allInfo = timesheetsInfo;
//     final contactSetting = timesheetsInfo.contactSetting;

//     allInfo.uitzending.toJson().forEach((key, value) {
//       if (key.startsWith('employeeID')) {
//         employeeTM[key.substring(13)] = value;
//       }
//       employeeTM['id'] = allInfo.uitzending.employeeId;
//     });

//     final model = _profileRepository.model;

//     activeAgency = timesheetsInfo.agency
//         .where((element) => element.id == model.user?.currentAgencyId)
//         .toList();

//     final Map<dynamic, dynamic> agencyAbonnSettings =
//         json.decode(activeAgency.first.agencyAbonnSettings ?? '');

//     vmIsNegativeReservationsAllowed = getNegativeReservationsSettings(
//       contactSetting,
//       timesheetsInfo.uitzending,
//       agencyAbonnSettings,
//     );

//     final mapReserveigenContrl = {
//       'feest': '',
//       'kort': '',
//       'adv': '',
//       'compen': '',
//       'vakantId': '',
//       'vakantDag': '',
//       'vakantWet': '',
//       'vakantBoven': ''
//     };
//     final mapReserveigenDayContrl = {
//       'feest': ['', '', '', '', '', '', ''],
//       'kort': ['', '', '', '', '', '', ''],
//       'adv': ['', '', '', '', '', '', ''],
//       'compen': ['', '', '', '', '', '', ''],
//       'vakantId': ['', '', '', '', '', '', ''],
//       'vakantDag': ['', '', '', '', '', '', ''],
//       'vakantWet': ['', '', '', '', '', '', ''],
//       'vakantBoven': ['', '', '', '', '', '', ''],
//     };

//     final timesheet = timesheetsInfo.timesheet;
//     final settings = activeAgency.first.agencyAbonnSettings ?? '';
//     final abonnSettings = activeAgency.first;

//     final phaseToCheck =
//         timesheet.status == 'Goedgekeurd' && timesheet.employeeFase.isNotEmpty
//             ? timesheet.employeeFase
//             : contactSetting.fase;

//     extractDataForReserveringRecalculation(emit);

//     if (settings.isNotEmpty && employeeTM.isNotEmpty) {
//       if ((abonnSettings.tigrisPresenterenFdC ?? false) &&
//           (abonnSettings.tigrisFDresC ?? false)) {
//         if (allInfo.uitzending.contracttype == 'ABU Fase A met Uitzendbeding' &&
//             phaseToCheck == 'Fase A') {
//           vmShowRow['FD'] = true;
//         }
//         if (allInfo.uitzending.contracttype ==
//                 'NBBU Fase I & II met Uitzendbeding' &&
//             (phaseToCheck == 'Fase 1' ||
//                 phaseToCheck == 'Fase 2' ||
//                 phaseToCheck == 'Fase 1/2')) {
//           vmShowRow['FD'] = true;
//         }
//       }

//       final wdcOnkostenregel = urenAndOnkostenregels['wdcOnkostenregel']
//           as List<WdcOnkostenregelDataModel>;

//       if ((abonnSettings.tigrisPresenterenWDCc ?? false) &&
//           wdcOnkostenregel.isNotEmpty &&
//           wdcOnkostenregel.first.id.isNotEmpty) {
//         vmShowRow['WDC'] = true;
//         final wdcOnkostenregel = urenAndOnkostenregels['wdcOnkostenregel'][0]
//             as WdcOnkostenregelDataModel;
//         vdcReservationValue = wdcOnkostenregel.price;
//       }

//       if (abonnSettings.tigrisPresenterenKVc ?? false) {
//         if (allInfo.uitzending.contracttype == 'ABU Fase A met Uitzendbeding' &&
//             phaseToCheck == 'Fase A') {
//           vmShowRow['KV'] = true;
//         }
//         if (allInfo.uitzending.contracttype ==
//                 'NBBU Fase I & II met Uitzendbeding' &&
//             (phaseToCheck == 'Fase 1' ||
//                 phaseToCheck == 'Fase 2' ||
//                 phaseToCheck == 'Fase 1/2')) {
//           vmShowRow['KV'] = true;
//         }
//       }

//       if ((abonnSettings.tigrisPresenterenADVc ?? false) &&
//           (abonnSettings.tigrisADVreserverenC ?? false)) {
//         vmShowRow['ADV'] = true;
//       }

//       if ((abonnSettings.tigrisPresenterenTvTc ?? false) &&
//           (abonnSettings.tigrisTvTreserverenC ?? false)) {
//         vmShowRow['TvT'] = true;
//       }

//       if (abonnSettings.tigrisPresenterenVDTc ?? false) {
//         vmShowRow['VDt'] = true;
//       } else {
//         if (abonnSettings.tigrisPresenterenVDwc ?? false) {
//           vmShowRow['VDw'] = true;
//         }
//         if (abonnSettings.tigrisPresenterenVDbc ?? false) {
//           vmShowRow['VDb'] = true;
//         }
//       }

//       if (abonnSettings.tigrisPresenterenVGc ?? false) {
//         vmShowRow['VG'] = true;
//       }

//       final isRestrictedTimesheet = timesheet.status != 'Goedgekeurd' &&
//           timesheet.status != 'Terugdraaien' &&
//           timesheet.status != 'Corrected';

//       final isAutoModeReservation = {
//         'VDw': true,
//         'VDb': true,
//         'TvT': true,
//         'ADV': true,
//         'KV': true,
//         'FD': true,
//         'VDt': true,
//         'VG': true,
//         'WDC': true,
//       };

//       isAutoModeReservation['FD'] =
//           timesheet.resFdUitbet || timesheet.withdrawWkFD;
//       isAutoModeReservation['KV'] =
//           timesheet.resKvUitbet || timesheet.withdrawWkKV;
//       isAutoModeReservation['ADV'] =
//           timesheet.resAdvUitbet || timesheet.withdrawWkADV;
//       isAutoModeReservation['TvT'] =
//           timesheet.resTvtUitbet || timesheet.withdrawWkTVT;
//       isAutoModeReservation['VG'] =
//           timesheet.resVgUitbet || timesheet.withdrawWkVG;
//       isAutoModeReservation['VDt'] =
//           timesheet.resVDtUitbet | timesheet.withdrawWkVDt;
//       isAutoModeReservation['VDw'] =
//           timesheet.resVDwUitbet || timesheet.withdrawWkVDw;
//       isAutoModeReservation['VDb'] =
//           timesheet.resVDbUitbet || timesheet.withdrawWkVDb;

//       vmIsAutoModeReservation = isAutoModeReservation;

//       // Recalculate and summarize hours and currency depending of the HourRate value
//       // and as a result we need to have on both columns the same value in different units
//       // '€€ + ### * POP' = €€ value available
//       // AND
//       // '## + €€€ / POP = ## value available
//       var hourRateInfo = vmDayNumber2RateInfoMap;
//       if (hourRateInfo.isEmpty) {
//         hourRateInfo = {
//           0: {'rate': 0},
//           1: {'rate': 0},
//           2: {'rate': 0},
//           3: {'rate': 0},
//           4: {'rate': 0},
//           5: {'rate': 0},
//           6: {'rate': 0},
//           7: {'rate': 0}
//         };
//         vmDayNumber2RateInfoMap = hourRateInfo;
//       }
//       final hour2MoneyMap = {
//         'fDInUren': 'fDEind',
//         'kVInUren': 'kVEind',
//         'aDVInUren': 'aDVEind',
//         'tvTInUren': 'tvTEindUren',
//         'vDtInUren': 'vDtEind', // composite field in Apex, top line on the UI
//         'vDwInUren': 'vDwEind',
//         'vDbInUren': 'vDbEind'
//       };

//       final Map<dynamic, dynamic> totalReserveringDisplayed = {};
//       totalReserveringDisplayed.addAll(totalReservering);

//       // Firstly - calculate all reservations from current period
//       final Map<dynamic, dynamic> valuesFromR = {};
//       final field2key = {
//         'vDwInUren': 'VDW',
//         'vDbInUren': 'VDB',
//         'tvTInUren': 'TVT',
//         'aDVInUren': 'ADV',
//         'kVInUren': 'KV',
//         'fDInUren': 'FD'
//       };

//       if (timesheet.id.isNotEmpty &&
//           allInfo.reservation.isNotEmpty &&
//           allInfo.reservation[0].aggregateSum.isNotEmpty) {
//         final keys = ['VDW', 'VDB', 'TVT', 'ADV', 'KV', 'FD', 'VG'];
//         Map<dynamic, dynamic> aggregateSum;
//         try {
//           aggregateSum = jsonDecode(allInfo.reservation[0].aggregateSum);
//         } catch (exc) {
//           aggregateSum = {};
//         }

//         final aggregateSumKeys = aggregateSum.keys.map((item) => item).toList();

//         // Calculate reservations from current Reserverign record
//         Map<dynamic, dynamic> acc = {};
//         aggregateSumKeys.forEach((date) {
//           if (date == 'SUM') {
//             acc = {};
//           }
//           final hourRate = aggregateSum[date]['HR'];
//           keys.forEach((key) {
//             if (!acc.containsKey(key)) {
//               acc[key] = {'cr': 0.0, 'hr': 0.0, 'crbj': 0.0, 'hrbj': 0.0};
//             } else {
//               acc[key]['cr'] +=
//                   aggregateSum[date][key]['BJ'] - aggregateSum[date][key]['AF'];
//               acc[key]['hr'] += hourRate.toString().isNotEmpty
//                   ? ((aggregateSum[date][key]['BJ'] -
//                           aggregateSum[date][key]['AF']) /
//                       hourRate)
//                   : 0;
//               acc[key]['crbj'] += aggregateSum[date][key]['BJ'];
//               acc[key]['hrbj'] += hourRate.toString().isNotEmpty
//                   ? (aggregateSum[date][key]['BJ'] / hourRate)
//                   : 0;
//             }
//           });
//           valuesFromR.addAll(acc);
//         });
//         valuesFromR['SUM'] = aggregateSum['SUM'];
//       }

//       // Save initial values from TR to the another attribute

//       vmTotalReserveringInitial.addAll(totalReservering);

//       final ab = abonnSettings;
//       final ts = timesheetsInfo.timesheet;
//       final isHalfEvenRound = (ab.id?.isNotEmpty ?? false) &&
//           (ab.tigrisReservationHalfEvenRoundingFromC?.isNotEmpty ?? false) &&
//           DateTime.parse(ts.startDate).millisecondsSinceEpoch >=
//               DateTime.parse(
//                 ab.tigrisReservationHalfEvenRoundingFromC ?? '3000-12-31',
//               ).millisecondsSinceEpoch;
//       // Secondly add current period reservations to the values from TR,
//       // And also sum currency with hours on the TR
//       final Map<dynamic, dynamic> totalReserveringInitialWithR = {};
//       totalReserveringInitialWithR.addAll(totalReservering);

//       hour2MoneyMap.keys.forEach((field) {
//         if (field == 'vDtInUren') {
//           return; // Will be recalculated after this loop using VDb and VDw
//         }
//         final tempCr = double.parse(
//           totalReservering[hour2MoneyMap[field]].toString().isNotEmpty
//               ? totalReservering[hour2MoneyMap[field]]
//               : '0',
//         );
//         final tempHr = double.parse(
//           totalReservering[field].toString().isNotEmpty
//               ? totalReservering[field].toString()
//               : '0',
//         );
//         // sum TotalReservation previous values for 1 day of the TM
//         totalReservering[hour2MoneyMap[field] ?? ''] = double.parse(
//               totalReservering[hour2MoneyMap[field]].toString().isNotEmpty
//                   ? totalReservering[hour2MoneyMap[field]]
//                   : '0',
//             ) +
//             (tempHr *
//                 (double.parse(
//                   hourRateInfo[0]['rate'].toString().isNotEmpty
//                       ? hourRateInfo[0]['rate'].toString()
//                       : '0',
//                 )));
//         totalReservering[field] = double.parse(
//               totalReservering[field].toString().isNotEmpty
//                   ? totalReservering[field]
//                   : '0',
//             ) +
//             (hourRateInfo[0]['rate'].toString().isNotEmpty
//                 ? tempCr /
//                     double.parse(
//                       hourRateInfo[0]['rate'].toString(),
//                     )
//                 : 0);

//         totalReserveringInitialWithR[hour2MoneyMap[field] ?? ''] = double.parse(
//           totalReservering[hour2MoneyMap[field]].toString().isNotEmpty
//               ? totalReservering[hour2MoneyMap[field]].toString()
//               : '0',
//         );
//         totalReserveringInitialWithR[field] = double.parse(
//           totalReservering[field].toString().isNotEmpty
//               ? totalReservering[field].toString()
//               : '0',
//         );
//         // Add values from current R if editable TM
//         if (timesheet.status != 'Goedgekeurd' &&
//             timesheet.status != 'Terugdraaien' &&
//             timesheet.status != 'Corrected') {
//           if (valuesFromR.isNotEmpty) {
//             totalReservering[field] = double.parse(
//                   totalReservering[field].toString().isNotEmpty
//                       ? totalReservering[field].toString()
//                       : '0',
//                 ) +
//                 (valuesFromR[field2key[field]] != '' &&
//                         valuesFromR[field2key[field]] != null
//                     ? valuesFromR[field2key[field]]['hr']
//                     : 0);
//             totalReservering[hour2MoneyMap[field] ?? ''] = double.parse(
//                   totalReservering[hour2MoneyMap[field]] != '' &&
//                           totalReservering[hour2MoneyMap[field]] != null
//                       ? totalReservering[hour2MoneyMap[field]].toString()
//                       : '0',
//                 ) +
//                 (valuesFromR[field2key[field]] != '' &&
//                         valuesFromR[field2key[field]] != null
//                     ? valuesFromR[field2key[field]]['cr']
//                     : 0);

//             totalReserveringInitialWithR[field] = double.parse(
//                   totalReserveringInitialWithR[field] != '' &&
//                           totalReserveringInitialWithR[field] != null
//                       ? totalReserveringInitialWithR[field].toString()
//                       : '0',
//                 ) +
//                 (valuesFromR[field2key[field]] != '' &&
//                         valuesFromR[field2key[field]] != null
//                     ? valuesFromR[field2key[field]]['hrbj']
//                     : 0);
//             totalReserveringInitialWithR[hour2MoneyMap[field] ?? ''] = double
//                     .parse(
//                   totalReserveringInitialWithR[hour2MoneyMap[field]] != '' &&
//                           totalReserveringInitialWithR[hour2MoneyMap[field]] !=
//                               null
//                       ? totalReserveringInitialWithR[hour2MoneyMap[field]]
//                           .toString()
//                       : '0',
//                 ) +
//                 (valuesFromR[field2key[field]] != '' &&
//                         valuesFromR[field2key[field]] != null
//                     ? valuesFromR[field2key[field]]['crbj']
//                     : 0);
//           }
//         }
//         // Store as string with fixed number of decimals
//         totalReserveringDisplayed[field] = prettifyValues(
//           double.parse(
//             totalReservering[field].toString().isNotEmpty
//                 ? totalReservering[field].toString()
//                 : '0',
//           ),
//           isHalfEvenRound,
//         );
//         totalReserveringDisplayed[hour2MoneyMap[field] ?? ''] = prettifyValues(
//           double.parse(
//             totalReservering[hour2MoneyMap[field]].toString().isNotEmpty
//                 ? totalReservering[hour2MoneyMap[field]].toString()
//                 : '0',
//           ),
//           isHalfEvenRound,
//         );
//       });

//       totalReservering['vDtInUren'] = double.parse(
//             totalReservering['vDwInUren'].toString().isNotEmpty
//                 ? totalReservering['vDwInUren'].toString()
//                 : '0',
//           ) +
//           double.parse(
//             totalReservering['vDbInUren'].toString().isNotEmpty
//                 ? totalReservering['vDbInUren'].toString()
//                 : '0',
//           );

//       totalReservering['vDtEind'] = double.parse(
//             totalReservering['vDbEind'].toString().isNotEmpty
//                 ? totalReservering['vDbEind'].toString()
//                 : '0',
//           ) +
//           double.parse(
//             totalReservering['vDwEind'].toString().isNotEmpty
//                 ? totalReservering['vDwEind'].toString()
//                 : '0',
//           );

//       totalReserveringInitialWithR['vDtInUren'] = double.parse(
//             totalReserveringInitialWithR['vDwInUren'].toString().isNotEmpty
//                 ? totalReservering['vDwInUren'].toString().isNotEmpty
//                     ? totalReservering['vDwInUren'].toString()
//                     : '0'
//                 : '0',
//           ) +
//           double.parse(
//             totalReserveringInitialWithR['vDbInUren'].toString().isNotEmpty
//                 ? totalReserveringInitialWithR['vDbInUren'].toString()
//                 : '0',
//           );

//       totalReserveringInitialWithR['vDtEind'] = double.parse(
//             totalReserveringInitialWithR['vDbEind'].toString().isNotEmpty
//                 ? totalReserveringInitialWithR['vDbEind'].toString()
//                 : '0',
//           ) +
//           double.parse(
//             totalReserveringInitialWithR['vDwEind'].toString().isNotEmpty
//                 ? totalReserveringInitialWithR['vDwEind'].toString()
//                 : '0',
//           );

//       if (timesheet.status != 'Goedgekeurd' &&
//           timesheet.status != 'Terugdraaien' &&
//           timesheet.status != 'Corrected') {
//         totalReservering['vGEind'] = double.parse(
//               totalReservering['vGEind'].toString().isNotEmpty
//                   ? totalReservering['vGEind'].toString()
//                   : '0',
//             ) +
//             (valuesFromR['VG'] != '' && valuesFromR['VG'] != null
//                 ? valuesFromR['VG']['cr']
//                 : 0);
//         totalReserveringInitialWithR['vGEind'] = double.parse(
//               totalReserveringInitialWithR['vGEind'].toString().isNotEmpty
//                   ? totalReserveringInitialWithR['vGEind'].toString()
//                   : '0',
//             ) +
//             (valuesFromR['VG'] != '' && valuesFromR['VG'] != null
//                 ? valuesFromR['VG']['crbj']
//                 : 0);
//       }

//       totalReserveringDisplayed['vDtInUren'] = prettifyValues(
//         double.parse(
//           totalReservering['vDtInUren'].toString().isNotEmpty
//               ? totalReservering['vDtInUren'].toString()
//               : '0',
//         ),
//         isHalfEvenRound,
//       );
//       totalReserveringDisplayed['vDtEind'] = prettifyValues(
//         double.parse(
//           totalReservering['vDtEind'].toString().isNotEmpty
//               ? totalReservering['vDtEind'].toString()
//               : '0',
//         ),
//         isHalfEvenRound,
//       );
//       totalReserveringDisplayed['vGEind'] = prettifyValues(
//         double.parse(
//           totalReservering['vGEind'].toString().isNotEmpty
//               ? totalReservering['vGEind'].toString()
//               : '0',
//         ),
//         isHalfEvenRound,
//       );

//       totalReserveringDisplayed['wDcEind'] = vdcReservationValue;
//       totalReserveringDisplayed['wDcInUren'] = '';

//       vmTotalReservering = totalReservering;
//       vmTotalReserveringInitialWithR = totalReserveringInitialWithR;
//       vmTotalReserveringDisplayed = totalReserveringDisplayed;

//       final onkostenregels = urenAndOnkostenregels['onkostenregels']
//           as List<OnkostenRegelsDataModel>;

//       final secondDate = DateTime.parse(timesheet.startDate);

//       if (onkostenregels.isNotEmpty) {
//         onkostenregels.forEach((value) {
//           final tempDate = value.date;
//           if (tempDate.isNotEmpty) {
//             final firstDate =
//                 tempDate.isNotEmpty ? DateTime.parse(tempDate) : secondDate;
//             final timeDiff = (secondDate.millisecondsSinceEpoch -
//                     firstDate.millisecondsSinceEpoch)
//                 .abs();
//             final dayNumber = (timeDiff / (1000 * 3600 * 24)).ceil();
//             mapReserveigenContrl['vakantId'] =
//                 mapReserveigenContrl['vakantId']?.isNotEmpty ?? false
//                     ? (double.parse(
//                               (isRestrictedTimesheet && contactSetting.spVg)
//                                   ? '0'
//                                   : value.price,
//                             ) +
//                             double.parse(
//                               mapReserveigenContrl['vakantId'] ?? '0',
//                             ))
//                         .toString()
//                     : ((isRestrictedTimesheet && contactSetting.spVg)
//                             ? 0
//                             : value.price)
//                         .toString();
//             mapReserveigenDayContrl['vakantId']?[dayNumber] =
//                 ((isRestrictedTimesheet && contactSetting.spVg)
//                         ? ''
//                         : value.price)
//                     .toString();
//             if (isRestrictedTimesheet && contactSetting.spVg) {
//               vmSaveReservation = true;
//             }
//           } else {
//             mapReserveigenContrl['vakantId'] =
//                 ((isRestrictedTimesheet && contactSetting.spVg)
//                         ? 0
//                         : value.price)
//                     .toString();
//             mapReserveigenDayContrl['vakantId']?[0] =
//                 ((isRestrictedTimesheet && contactSetting.spVg)
//                         ? ''
//                         : value.price)
//                     .toString();
//             if (isRestrictedTimesheet && contactSetting.spVg) {
//               vmSaveReservation = true;
//             }
//           }
//         });
//       }

//       final urenregels = urenAndOnkostenregels['urenregels']
//           as List<ReservationHoursDataModel>;

//       if (urenregels.isNotEmpty) {
//         final hours = urenregels;
//         int iDayWeek;
//         final secondDate = DateTime.parse(timesheet.startDate);

//         hours.forEach(
//           (hour) {
//             if (hour.date.isNotEmpty) {
//               final firstDate = DateTime.parse(hour.date);
//               final timeDiff = (secondDate.millisecondsSinceEpoch -
//                       firstDate.millisecondsSinceEpoch)
//                   .abs();
//               iDayWeek = (timeDiff / (1000 * 3600 * 24)).ceil();
//               switch (hour.tarifIdAlName) {
//                 case 'Feestdagen':
//                   mapReserveigenDayContrl['feest']?[iDayWeek] =
//                       ((isRestrictedTimesheet && contactSetting.spFd)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spFd) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'Kort Verzuim':
//                   mapReserveigenDayContrl['kort']?[iDayWeek] =
//                       ((isRestrictedTimesheet && contactSetting.spKv)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spKv) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'ADV':
//                   mapReserveigenDayContrl['adv']?[iDayWeek] =
//                       ((isRestrictedTimesheet && contactSetting.spAdv)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spAdv) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'Compensatie uren':
//                   mapReserveigenDayContrl['compen']?[iDayWeek] =
//                       ((isRestrictedTimesheet && contactSetting.spTvt)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spTvt) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'Vakantiedagen Wettelijk':
//                   mapReserveigenDayContrl['vakantWet']?[iDayWeek] =
//                       ((isRestrictedTimesheet && contactSetting.spVdw)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();

//                   mapReserveigenDayContrl['vakantDag']
//                       ?[iDayWeek] = ((isRestrictedTimesheet &&
//                               (contactSetting.spVdw || contactSetting.spVdb))
//                           ? ''
//                           : double.parse(
//                                 mapReserveigenDayContrl['vakantDag']![iDayWeek]
//                                         .toString()
//                                         .isNotEmpty
//                                     ? mapReserveigenDayContrl['vakantDag']![
//                                         iDayWeek]
//                                     : '0',
//                               ) +
//                               hour.amountOfHours)
//                       .toString();
//                   if (isRestrictedTimesheet &&
//                       (contactSetting.spVdw || contactSetting.spVdb)) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'Vakantiedagen bovenwettelijk':
//                   mapReserveigenDayContrl['vakantBoven']?[iDayWeek] =
//                       ((isRestrictedTimesheet && contactSetting.spVdb)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();

//                   mapReserveigenDayContrl['vakantDag']
//                       ?[iDayWeek] = ((isRestrictedTimesheet &&
//                               (contactSetting.spVdw || contactSetting.spVdb))
//                           ? ''
//                           : double.parse(
//                                 mapReserveigenDayContrl['vakantDag']![iDayWeek]
//                                         .toString()
//                                         .isNotEmpty
//                                     ? mapReserveigenDayContrl['vakantDag']![
//                                         iDayWeek]
//                                     : '0',
//                               ) +
//                               hour.amountOfHours)
//                       .toString();

//                   if (isRestrictedTimesheet &&
//                       (contactSetting.spVdw || contactSetting.spVdb)) {
//                     vmSaveReservation = true;
//                   }
//               }
//             } else {
//               switch (hour.tarifIdAlName) {
//                 case 'Feestdagen':
//                   mapReserveigenContrl['feest'] =
//                       ((isRestrictedTimesheet && contactSetting.spFd)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spFd) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'Kort Verzuim':
//                   mapReserveigenContrl['kort'] =
//                       ((isRestrictedTimesheet && contactSetting.spKv)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spKv) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'ADV':
//                   mapReserveigenContrl['adv'] =
//                       ((isRestrictedTimesheet && contactSetting.spAdv)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spAdv) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'Compensatie uren':
//                   mapReserveigenContrl['compen'] =
//                       ((isRestrictedTimesheet && contactSetting.spTvt)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spTvt) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'Vakantiedagen Wettelijk':
//                   mapReserveigenContrl['vakantWet'] =
//                       ((isRestrictedTimesheet && contactSetting.spVdw)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   mapReserveigenContrl['vakantDag'] = ((isRestrictedTimesheet &&
//                               (contactSetting.spVdw || contactSetting.spVdb))
//                           ? ''
//                           : double.parse(
//                                 mapReserveigenContrl['vakantDag']
//                                         .toString()
//                                         .isNotEmpty
//                                     ? mapReserveigenContrl['vakantDag'] ?? '0'
//                                     : '0',
//                               ) +
//                               hour.amountOfHours)
//                       .toString();

//                   if (isRestrictedTimesheet &&
//                       (contactSetting.spVdw || contactSetting.spVdb)) {
//                     vmSaveReservation = true;
//                   }
//                   break;
//                 case 'Vakantiedagen bovenwettelijk':
//                   mapReserveigenContrl['vakantBoven'] =
//                       ((isRestrictedTimesheet && contactSetting.spVdb)
//                               ? ''
//                               : hour.amountOfHours)
//                           .toString();
//                   if (isRestrictedTimesheet && contactSetting.spVdb) {
//                     vmSaveReservation = true;
//                   }
//                   mapReserveigenContrl['vakantDag'] = ((isRestrictedTimesheet &&
//                               (contactSetting.spVdw || contactSetting.spVdb))
//                           ? ''
//                           : double.parse(
//                                 mapReserveigenContrl['vakantDag']?.isNotEmpty ??
//                                         false
//                                     ? mapReserveigenContrl['vakantDag'] ?? '0'
//                                     : '0',
//                               ) +
//                               hour.amountOfHours)
//                       .toString();
//                   if (isRestrictedTimesheet && contactSetting.spVdb) {
//                     vmSaveReservation = true;
//                   }
//               }
//             }
//           },
//         );
//       }

//       mapReserveigenDayContrl['wdc'] = [];

//       vmMapReserveigen = mapReserveigenContrl;
//       vmMapReserveigenDay = mapReserveigenDayContrl;
//     } else {
//       emit(
//         TimesheetState.hoursError(
//           hoursError: 'registration_timesheets_screen.message_info18'.tr(),
//         ),
//       );
//     }
//   }

//   Map<int, String> amountOfReservation(List<String> list) {
//     final Map<int, String> amountOfReservationList = {};
//     for (int i = 0; i < list.length; i++) {
//       amountOfReservationList.addAll({
//         i: list[i].isNotEmpty && double.parse(list[i]) != 0
//             ? double.parse(list[i])
//                 .toStringAsFixed(2)
//                 .replaceAll(regex, '')
//                 .replaceAll(regex, '')
//             : ''
//       });
//     }
//     return amountOfReservationList;
//   }

//   void handleBlurHoursReservationNormal(String instanceId) {
//     vmSaveReservation = true;

//     final aggregateInfoFromEvent = instanceId.split('][');
//     //mapReserveigenDay or mapReserveigen
//     final mapName = aggregateInfoFromEvent[0];
//     final fieldName = aggregateInfoFromEvent[1];
//     final index = int.parse(aggregateInfoFromEvent[2]);
//     final trFieldName = aggregateInfoFromEvent[3];

//     double valueFromEvent = 0.0;
//     if (mapName == 'mapReserveigenDay') {
//       valueFromEvent = double.parse(
//         (vmMapReserveigenDay[fieldName]?[index].isNotEmpty ?? false)
//             ? (vmMapReserveigenDay[fieldName]?[index] ?? '0')
//             : '0',
//       );
//     } else if (mapName == 'mapReserveigen') {
//       valueFromEvent = double.parse(vmMapReserveigen[fieldName] ?? '0');
//     }

//     if (valueFromEvent < 0) {
//       valueFromEvent *= -1;
//     }

//     valueFromEvent = valueFromEvent.isNaN ? 0 : valueFromEvent;

//     final Map<String, List<String>> reserveringsMap = vmMapReserveigenDay;
//     final reservMap = vmMapReserveigen;
//     final reservDayMap = vmMapReserveigenDay;

//     final double limitValueFromTR =
//         vmTotalReserveringInitialWithR[trFieldName].toString().isNotEmpty
//             ? vmTotalReserveringInitialWithR[trFieldName]
//             : 0;

//     if (!vmIsNegativeReservationsAllowed && (limitValueFromTR <= 0)) {
//       valueFromEvent = 0;
//     } else {
//       valueFromEvent = (valueFromEvent > 24 && fieldName != 'vakantId')
//           ? 24.0
//           : valueFromEvent;
//       valueFromEvent = (valueFromEvent == 0)
//           ? 0
//           : double.parse(valueFromEvent.toStringAsFixed(2));
//       final sumReservDay = double.parse(
//         reservDayMap[fieldName]?.reduce((sum, value) {
//               final item = double.parse(value.isNotEmpty ? value : '0');
//               return (double.parse(sum.isNotEmpty ? sum : '0') +
//                       (item != 0 ? item : 0))
//                   .toString();
//             }) ??
//             '0',
//       );
//       if (sumReservDay >= limitValueFromTR &&
//           !vmIsNegativeReservationsAllowed) {
//         final allowedAmount = limitValueFromTR - sumReservDay + valueFromEvent;
//         valueFromEvent = double.parse(allowedAmount.toStringAsFixed(2));
//         if (valueFromEvent < 0) {
//           valueFromEvent = 0;
//         }
//       }
//     }
//     reservDayMap[fieldName]?[index] = '$valueFromEvent';

//     vmMapReserveigen = reservMap;
//     vmMapReserveigenDay = reservDayMap;

//     doRecalculateTRValues(reserveringsMap[fieldName] ?? [], trFieldName);
//   }

//   // reservation end

//   //StartStop

//   List<Map<String, String>> vmGetDayLabelsList = [
//     {'short': 'MON', 'full': 'MONDAY'},
//     {'short': 'TUE', 'full': 'TUESDAY'},
//     {'short': 'WED', 'full': 'WEDNESDAY'},
//     {'short': 'THU', 'full': 'THURSDAY'},
//     {'short': 'FRI', 'full': 'FRIDAY'},
//     {'short': 'SAT', 'full': 'SATURDAY'},
//     {'short': 'SUN', 'full': 'SUNDAY'}
//   ];

//   double round2digit(double num) {
//     return double.parse(num.toStringAsFixed(2));
//   }

//   String msToTimeStr(double duration) {
//     String result = '';

//     final int hours =
//         DateTime.fromMillisecondsSinceEpoch(duration.toInt(), isUtc: true).hour;
//     final int minutes =
//         DateTime.fromMillisecondsSinceEpoch(duration.toInt(), isUtc: true)
//             .minute;

//     result = '${formatTime(hours)}:${formatTime(minutes)}';

//     return result;
//   }

//   Object msToTime(String value) {
//     final int duration = int.parse(value.isNotEmpty ? value : '0');
//     return value.isNotEmpty || duration == 0
//         ? DateTime(1970).add(Duration(milliseconds: duration))
//         : duration;
//   }

//   Object timeToMS(String value) {
//     final DateTime time = DateTime.parse(value);
//     return value.isNotEmpty
//         ? ((time.hour + (time.minute / 60)) * 3600000).toInt()
//         : time;
//   }

//   List<Map<dynamic, dynamic>> updateStartStopProject(
//     List<Map<dynamic, dynamic>> listStartStopTime,
//     String projectId,
//   ) {
//     listStartStopTime.forEach((element) {
//       element['project'] = projectId;
//     });

//     return listStartStopTime;
//   }

//   List<Map<dynamic, dynamic>> updateStartStopUnraveling(
//     List<Map<dynamic, dynamic>> listStartStopTime,
//     String unravelingId,
//   ) {
//     listStartStopTime.forEach((element) {
//       element['unraveling'] = unravelingId;
//     });

//     return listStartStopTime;
//   }

//   void recalculateTotalHours(
//     int dayPosition,
//     List<dynamic> hoursForTimeBasedTimesheets,
//   ) {
//     final dayInfo = hoursForTimeBasedTimesheets[dayPosition];
//     final groupedByDate = dayInfo['groupedByDate'];

//     double totalHoursPerWeek =
//         vmTotalHoursPerWeek - (dayInfo['dayHourCount'] ?? 0);
//     dayInfo['dayHourCount'] = 0;
//     const endOfDayMS = 24 * 60 * 60 * 1000;

//     (groupedByDate as List<dynamic>).forEach((interval) {
//       double workedMS = 0;
//       double pauseMS = 0;
//       if (interval['endTime'].toString().isNotEmpty &&
//           interval['startTime'].toString().isNotEmpty &&
//           interval['endTime'] != null &&
//           interval['startTime'] != null) {
//         interval['endTimeMS'] =
//             interval['endTimeMS'] == 0 ? endOfDayMS : interval['endTimeMS'];
//         workedMS += interval['endTimeMS'] != null &&
//                 interval['startTimeMS'] != null
//             ? interval['endTimeMS'] > interval['startTimeMS']
//                 ? interval['endTimeMS'] - interval['startTimeMS']
//                 : endOfDayMS - interval['startTimeMS'] + interval['endTimeMS']
//             : 0;

//         if ((interval['rests'] as List<dynamic>).isNotEmpty &&
//             interval['rests'][0]['restEnd'].toString().isNotEmpty &&
//             interval['rests'][0]['restStart'].toString().isNotEmpty &&
//             interval['rests'][0]['restEnd'] != null &&
//             interval['rests'][0]['restStart'] != null) {
//           (interval['rests'] as List<dynamic>).forEach((rest) {
//             rest['restEndMS'] =
//                 rest['restEndMS'] == 0 ? endOfDayMS : rest['restEndMS'];
//             if (rest['restEnd'].toString().isNotEmpty &&
//                 rest['restStart'].toString().isNotEmpty) {
//               pauseMS +=
//                   rest['restEndMS'] != null && rest['restStartMS'] != null
//                       ? rest['restEndMS'] > rest['restStartMS']
//                           ? rest['restEndMS'] - rest['restStartMS']
//                           : endOfDayMS - rest['restStartMS'] + rest['restEndMS']
//                       : 0;
//             }
//           });
//         }
//       }
//       interval['workedHour'] = (workedMS - pauseMS) / 1000 / 3600;
//       dayInfo['dayHourCount'] += interval['workedHour'];
//     });

//     totalHoursPerWeek += dayInfo['dayHourCount'];
//     dayInfo['dayHourCount'] =
//         dayInfo['dayHourCount'] > 0 ? dayInfo['dayHourCount'] : 0;
//     dayInfo['dayHourCountStr'] = dayInfo['dayHourCount'] != 0
//         ? msToTimeStr(dayInfo['dayHourCount'] * 1000 * 3600)
//         : '';
//     vmTotalHoursPerWeek = totalHoursPerWeek;
//     vmTotalHoursPerWeekStr = msToTimeStr(vmTotalHoursPerWeek * 1000 * 3600);
//     vmTotalHoursPerWeek = double.parse(totalHoursPerWeek.toStringAsFixed(2));
//     return;
//   }

//   void vmGetHoursForTimeBasedTimesheets() {
//     final dayLabelsList = vmGetDayLabelsList;
//     final allInfo = timesheetsInfo;
//     const startOfWorkingDay =
//         null; // not synced -> uitzending.Tigris__Start_of_working_day__c;
//     const endOfWorkingDay =
//         null; // not synced -> uitzending.Tigris__End_of_working_day__c;
//     final tsStartDateStr = DateTime.parse(allInfo.timesheet.startDate);

//     final firstDate = DateTime(
//       tsStartDateStr.year,
//       tsStartDateStr.month - 1,
//       tsStartDateStr.day,
//     );

//     final isSel = [
//       false,
//       false,
//       false,
//       false,
//       false,
//       false,
//       false,
//     ];

//     vmTotalHoursPerWeek = 0;

//     final defaultUnravelingType =
//         vmIsUnravelingTypesInUse ? vmUsedUnravelingTypes[0] : null;

//     final List<Map<dynamic, dynamic>> listItems = [{}, {}, {}, {}, {}, {}, {}];

//     vmHoursForTimeBasedTimesheets = [];

//     for (var i = 0; i < listItems.length; i++) {
//       final List<dynamic> groupedByDate = [];
//       final populateDay = i < 5 && !isSel[i];

//       vmHoursForTimeBasedTimesheets.add({});

//       groupedByDate.add({
//         'date': firstDate..add(Duration(days: firstDate.day + i)),
//         'numberHour': 0,
//         'project': '',
//         'unraveling': defaultUnravelingType,
//         'startTime': populateDay ? startOfWorkingDay : null,
//         'startTimeMS': populateDay
//             ? null /*vm.allInfo.uitzending.Tigris__Start_of_working_day__c*/
//             : null,
//         'endTime': populateDay ? endOfWorkingDay : null,
//         'endTimeMS': populateDay
//             ? null /*vm.allInfo.uitzending.Tigris__End_of_working_day__c*/
//             : null,
//         'rests': [
//           {
//             'numberRest': 0,
//             'restStart':
//                 null, //msToTime(vm.allInfo.uitzending.Tigris__Rest_start_time__c),
//             'restStartMS':
//                 null, //vm.allInfo.uitzending.Tigris__Rest_start_time__c,
//             'restEnd':
//                 null, //msToTime(vm.allInfo.uitzending.Tigris__Rest_end_time__c),
//             'restEndMS': null //vm.allInfo.uitzending.Tigris__Rest_end_time__c
//           }
//         ]
//       });

//       (vmHoursForTimeBasedTimesheets[i]).addAll({'numberDay': '$i'});
//       (vmHoursForTimeBasedTimesheets[i])
//           .addAll({'groupedByDate': groupedByDate});
//       (vmHoursForTimeBasedTimesheets[i])
//           .addAll({'dayLabel': dayLabelsList[i]['short']});
//       (vmHoursForTimeBasedTimesheets[i]).addAll({'isSel': isSel[i]});
//     }

//     for (var i = 0; i < 7; i++) {
//       recalculateTotalHours(i, vmHoursForTimeBasedTimesheets);
//     }
//   }

//   List<dynamic> checkUnravelingTypeUsage(List<dynamic> existingTypes) {
//     final hoursForTimeBasedTimesheets = vmHoursForTimeBasedTimesheets;
//     final List<dynamic> notFoundTypes = [];
//     hoursForTimeBasedTimesheets.forEach((days) {
//       (days['groupedByDate'] as List<dynamic>).forEach((workInterval) {
//         if (workInterval['endTime'].toString().isNotEmpty &&
//             workInterval['startTime'].toString().isNotEmpty &&
//             existingTypes.toString().isNotEmpty) {
//           if (workInterval['unraveling'] != null &&
//               !existingTypes.contains(workInterval['unraveling'])) {
//             notFoundTypes.add(workInterval['unraveling']);
//           }
//         }
//       });
//     });
//     return [...notFoundTypes];
//   }

//   void vmGetHoursForTimeBasedTimesheetsFromHistory(
//     String startDate,
//     String timeBasedHours,
//     Emitter<TimesheetState> _emit,
//   ) {
//     final dayLabelsList = vmGetDayLabelsList;
//     final tsStartDateStr = DateTime.parse(startDate);
//     final isSel = wmIsSel;

//     vmTotalHoursPerWeek = 0;

//     final firstDate = DateTime(
//       tsStartDateStr.year,
//       tsStartDateStr.month - 1,
//       tsStartDateStr.day,
//     );

//     final defaultUnravelingType =
//         vmIsUnravelingTypesInUse ? vmUsedUnravelingTypes[0] : null;
//     final Map<dynamic, dynamic> groupedByDayIndex = {};
//     (json.decode(timeBasedHours) as List<dynamic>).forEach((hour) {
//       if (hour['unraveling'] == null || hour['unraveling'] == false) {
//         hour['unraveling'] = defaultUnravelingType;
//       }
//       List<dynamic> groupedByDate = [];
//       if (groupedByDayIndex[hour['dateIndex']] != null) {
//         groupedByDate = groupedByDayIndex[hour['dateIndex']];
//       }
//       groupedByDate.add(hour);
//       groupedByDayIndex[hour['dateIndex']] = groupedByDate;
//     });

//     vmHoursForTimeBasedTimesheets = [];

//     for (int i = 0; i < 7; i++) {
//       final List<dynamic> groupedByDate = [];

//       vmHoursForTimeBasedTimesheets.add({});

//       if (groupedByDayIndex[i] != null) {
//         (groupedByDayIndex[i] as List<dynamic>).forEach((hour) {
//           if ((hour['rests'] as List<dynamic>).isEmpty) {
//             hour['rests'] = [<dynamic>{}];
//           }
//           (hour['rests'] as List<dynamic>).forEach((itemRest) {
//             if (itemRest['restStart'] != null &&
//                 itemRest['restEnd'] != null &&
//                 itemRest['restStart'].toString().isNotEmpty &&
//                 itemRest['restEnd'].toString().isNotEmpty) {
//               if (itemRest['restStart'] !=
//                   msToTime(
//                     itemRest['restStart'] != null
//                         ? itemRest['restStart'].toString()
//                         : '',
//                   )) {
//                 itemRest['restStart'] = msToTime(
//                   itemRest['restStart'] != null
//                       ? itemRest['restStart'].toString()
//                       : '',
//                 );
//                 itemRest['restStartMS'] =
//                     timeToMS(itemRest['restStart'].toString());
//                 itemRest['restEnd'] = msToTime(
//                   itemRest['restEnd'] != null
//                       ? itemRest['restEnd'].toString()
//                       : '',
//                 );
//                 itemRest['restEndMS'] =
//                     timeToMS(itemRest['restEnd'].toString());
//               }
//             }
//           });

//           groupedByDate.add({
//             'numberHour': hour['numberHour'].toString().isNotEmpty
//                 ? hour['numberHour']
//                 : 0,
//             'date': firstDate.add(Duration(days: firstDate.day + i)),
//             'startTime': msToTime(
//               hour['startTime'] != null ? hour['startTime'].toString() : '',
//             ),
//             'startTimeMS': hour['startTime'],
//             'endTime': msToTime(
//               hour['endTime'] != null ? hour['endTime'].toString() : '',
//             ),
//             'endTimeMS': hour['endTime'],
//             'project':
//                 hour['project'].toString().isNotEmpty && hour['project'] != null
//                     ? hour['project']
//                     : '',
//             'rests': hour['rests'][0]['restStart'] != '' &&
//                     hour['rests'][0]['restStart'] != null
//                 ? hour['rests']
//                 : <dynamic>[],
//             'unraveling': hour['unraveling'],
//           });
//         });
//       } else {
//         groupedByDate.add({
//           'workedHour': 0,
//           'numberHour': 0,
//           'date': firstDate.add(Duration(days: firstDate.day + i)),
//           'startTime': null,
//           'startTimeMS': 0,
//           'endTime': null,
//           'endTimeMS': 0,
//           'rests': <dynamic>[],
//           'unraveling': defaultUnravelingType
//         });
//       }
//       (vmHoursForTimeBasedTimesheets[i]).addAll({'numberDay': '$i'});
//       (vmHoursForTimeBasedTimesheets[i])
//           .addAll({'groupedByDate': groupedByDate});
//       (vmHoursForTimeBasedTimesheets[i])
//           .addAll({'dayLabel': dayLabelsList[i]['short']});
//       (vmHoursForTimeBasedTimesheets[i]).addAll({'isSel': isSel[i]});
//     }

//     for (int i = 0; i < 7; i++) {
//       recalculateTotalHours(i, vmHoursForTimeBasedTimesheets);
//     }

//     final missedTypes = checkUnravelingTypeUsage(vmUsedUnravelingTypes);
//     if (missedTypes.isNotEmpty) {
//       _emit(
//         TimesheetState.hoursError(
//           hoursError: 'Unraveling_scheme_has_been_changed'
//               .tr()
//               .replaceAll('{0}', missedTypes.join(', ')),
//         ),
//       );
//     }
//     vmIsUnravelingTypesInUse =
//         vmIsUnravelingTypesInUse || missedTypes.isNotEmpty;
//   }

//   void recalculateHoursForTimeBasedTimesheets(
//     List<StartStopCardDataModel> listStartStopCard,
//   ) {
//     vmHoursForTimeBasedTimesheets = [{}, {}, {}, {}, {}, {}, {}];
//     for (int i = 0; i < listStartStopCard.length; i++) {
//       for (int j = 0; j < 7; j++) {
//         final List<dynamic> groupedByDate = [];
//         final dayLabelsList = vmGetDayLabelsList;
//         final isSel = wmIsSel;

//         final result = listStartStopCard[i]
//             .listStartStopTime
//             .where((element) => element['indexDay'] == j)
//             .toList();

//         if (result.isNotEmpty) {
//           groupedByDate.add({
//             'numberHour': result.first['numberHour'],
//             'date': result.first['date'],
//             'startTime': result.first['startTime'],
//             'startTimeMS': result.first['startTimeMS'],
//             'endTime': result.first['endTime'],
//             'endTimeMS': result.first['endTimeMS'],
//             'project': result.first['project'],
//             'rests': result.first['rests'],
//             'unraveling': result.first['unraveling'],
//             'workedHour': result.first['workedHour'],
//           });
//         } else {
//           if ((vmHoursForTimeBasedTimesheets[j]).isNotEmpty &&
//               (vmHoursForTimeBasedTimesheets[j]['groupedByDate']
//                       as List<dynamic>)
//                   .isEmpty) {
//             groupedByDate.add({
//               'workedHour': 0,
//               'numberHour': 0,
//               'date': DateTime(0),
//               'startTime': null,
//               'startTimeMS': null,
//               'endTime': null,
//               'endTimeMS': null,
//               'rests': <dynamic>[],
//               'unraveling': null
//             });
//           }
//         }

//         if (vmHoursForTimeBasedTimesheets[j]['groupedByDate'] != null) {
//           if ((vmHoursForTimeBasedTimesheets[j]['groupedByDate']
//                           as List<dynamic>)
//                       .length >
//                   1 &&
//               vmHoursForTimeBasedTimesheets[j]['groupedByDate'][0]
//                       ['startTime'] !=
//                   null) {
//             (vmHoursForTimeBasedTimesheets[j]['groupedByDate'] as List<dynamic>)
//                 .removeAt(0);
//           }
//           if (groupedByDate.isNotEmpty) {
//             (vmHoursForTimeBasedTimesheets[j]['groupedByDate'] as List<dynamic>)
//                 .add(groupedByDate[0]);
//           }
//         } else {
//           (vmHoursForTimeBasedTimesheets[j]).addAll({'numberDay': '$j'});
//           (vmHoursForTimeBasedTimesheets[j])
//               .addAll({'groupedByDate': groupedByDate});
//           (vmHoursForTimeBasedTimesheets[j])
//               .addAll({'dayLabel': dayLabelsList[j]['short']});
//           (vmHoursForTimeBasedTimesheets[j]).addAll({'isSel': isSel[j]});
//         }
//       }
//     }

//     for (int i = 0; i < 7; i++) {
//       recalculateTotalHours(i, vmHoursForTimeBasedTimesheets);
//     }
//   }

//   bool checkIntersectionWithInterval(
//     dynamic currentInterval,
//     dynamic rest,
//     bool isReset,
//   ) {
//     bool isError = false;
//     if (currentInterval['startTimeMS'] < currentInterval['endTimeMS']) {
//       // before midnight
//       if (rest['restEnd'] != DateTime(1970) &&
//           rest['restEnd'] != null &&
//           (rest['restEndMS'] >= currentInterval['endTimeMS'] ||
//               rest['restEndMS'] <= currentInterval['startTimeMS'])) {
//         if (isReset) {
//           rest['restEndMS'] = '';
//           rest['restEnd'] = '';
//         }
//         isError = true;
//       }
//       if (rest['restStart'] != DateTime(1970) &&
//           rest['restStart'] != null &&
//           (rest['restStartMS'] <= currentInterval['startTimeMS'] ||
//               rest['restStartMS'] >= currentInterval['endTimeMS'])) {
//         if (isReset) {
//           rest['restStartMS'] = '';
//           rest['restStart'] = '';
//         }
//         isError = true;
//       }
//     } else {
//       // after midnight
//       if (rest['restEnd'] != DateTime(1970) &&
//           rest['restEnd'] != null &&
//           rest['restEndMS'] >= currentInterval['endTimeMS'] &&
//           rest['restEndMS'] <= currentInterval['startTimeMS']) {
//         if (isReset) {
//           rest['restEndMS'] = '';
//           rest['restEnd'] = '';
//         }
//         isError = true;
//       }
//       if (rest['restStart'] != DateTime(1970) &&
//           rest['restStart'] != null &&
//           rest['restStartMS'] <= currentInterval['startTimeMS'] &&
//           rest['restStartMS'] >= currentInterval['endTimeMS']) {
//         if (isReset) {
//           rest['restStartMS'] = '';
//           rest['restStart'] = '';
//         }
//         isError = true;
//       }
//     }
//     return isError;
//   }

//   void validateTime(
//     dynamic dayPosition,
//     dynamic intervalPosition,
//     Emitter<TimesheetState> emit,
//   ) {
//     final dayInfo = vmHoursForTimeBasedTimesheets[dayPosition];
//     final groupedByDate = dayInfo['groupedByDate'] as List<dynamic>;

//     final startTime = groupedByDate[intervalPosition]['startTime'] != null
//         ? (groupedByDate[intervalPosition]['startTime'] as DateTime)
//         : DateTime(0);
//     final endTime = groupedByDate[intervalPosition]['endTime'] != null
//         ? (groupedByDate[intervalPosition]['endTime'] as DateTime)
//         : DateTime(0);

//     final int startTimeMS = timeToMS(startTime.toString()) as int;
//     int endTimeMS = timeToMS(endTime.toString()) as int;

//     const int endOfDay = 24 * 60 * 60 * 1000;

//     if (endTimeMS == 0) {
//       endTimeMS = endOfDay;
//     }
//     if (endTimeMS > endOfDay) {
//       endTimeMS -= endOfDay;
//     }

//     String errorMsg = '';
//     if (startTimeMS != 0 &&
//         endTimeMS != 0 &&
//         startTimeMS >= endTimeMS &&
//         intervalPosition < (groupedByDate.length - 1)) {
//       // if created interval that occupied next day then it only possible to be the last
//       errorMsg = 'registration_timesheets_screen.message_info21'.tr();
//     }

//     if (errorMsg.isEmpty) {
//       // else check the intersection with existing intervals

//       // if interval not first - check startTime
//       if (intervalPosition > 0) {
//         if (startTimeMS != 0 &&
//             startTimeMS <
//                 (groupedByDate[intervalPosition - 1]['endTimeMS'] != null
//                     ? (groupedByDate[intervalPosition - 1]['endTimeMS'] as int)
//                     : 0)) {
//           errorMsg = 'registration_timesheets_screen.message_info21'.tr();
//         }
//       }
//       // if interval not last - check endTime
//       if (intervalPosition < groupedByDate.length - 1) {
//         if (endTimeMS != 0 &&
//             endTimeMS > groupedByDate[intervalPosition + 1]['startTimeMS']) {
//           errorMsg = 'registration_timesheets_screen.message_info21'.tr();
//         }
//       }
//       // if interval is last but if day not last and if endTime on other day
//       if (intervalPosition == groupedByDate.length - 1 &&
//           endTimeMS < startTimeMS && // <-- endTime on other day
//           dayPosition < vmHoursForTimeBasedTimesheets.length - 1 &&
//           (vmHoursForTimeBasedTimesheets[dayPosition + 1]['groupedByDate']
//                   as List<dynamic>)
//               .isNotEmpty &&
//           vmHoursForTimeBasedTimesheets[dayPosition + 1]['groupedByDate'][0]
//                   ['startTimeMS'] !=
//               '' &&
//           vmHoursForTimeBasedTimesheets[dayPosition + 1]['groupedByDate'][0]
//                   ['startTimeMS'] !=
//               null &&
//           vmHoursForTimeBasedTimesheets[dayPosition + 1]['groupedByDate'][0]
//                   ['startTimeMS'] <
//               endTimeMS) {
//         errorMsg = 'registration_timesheets_screen.message_info22'.tr();
//       }

//       // if interval is first but day not then check previous day
//       if (intervalPosition == 0 &&
//           dayPosition > 0 &&
//           (vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate'] as List<dynamic>)
//               .isNotEmpty &&
//           vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate'][(vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate'] as List<dynamic>).length - 1]['endTimeMS'] <
//               vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate']
//                       [(vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate'] as List<dynamic>).length - 1]
//                   ['startTimeMS'] &&
//           vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate']
//                       [(vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate'] as List<dynamic>).length - 1]
//                   ['endTimeMS'] !=
//               null &&
//           vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate']
//                       [(vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate'] as List<dynamic>).length - 1]
//                   ['endTimeMS'] !=
//               null &&
//           vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate']
//                   [(vmHoursForTimeBasedTimesheets[dayPosition - 1]['groupedByDate'] as List<dynamic>).length - 1]['endTimeMS'] >
//               startTimeMS) {
//         errorMsg = 'registration_timesheets_screen.message_info22'.tr();
//       }
//     }

//     if (errorMsg.isNotEmpty) {
//       groupedByDate[intervalPosition]['startTime'] = msToTime(
//         groupedByDate[intervalPosition]['startTimeMS'] != null
//             ? groupedByDate[intervalPosition]['startTimeMS'].toString()
//             : '0',
//       );
//       groupedByDate[intervalPosition]['endTime'] = msToTime(
//         groupedByDate[intervalPosition]['endTimeMS'] != null
//             ? groupedByDate[intervalPosition]['endTimeMS'].toString()
//             : '0',
//       );

//       emit(
//         TimesheetState.hoursError(
//           hoursError: errorMsg,
//         ),
//       );
//     } else {
//       groupedByDate[intervalPosition]['startTimeMS'] = startTimeMS;
//       groupedByDate[intervalPosition]['endTimeMS'] = endTimeMS;
//     }

//     dayInfo['groupedByDate'] = groupedByDate;
//     vmHoursForTimeBasedTimesheets[dayPosition] = dayInfo;

//     if ((groupedByDate[intervalPosition]['rests'] as List<dynamic>)
//             .isNotEmpty &&
//         groupedByDate[intervalPosition]['rests'][0]['restEnd'] != null &&
//         groupedByDate[intervalPosition]['rests'][0]['restStart'] != null) {
//       vmPopulateRestTime(dayPosition, intervalPosition, -1, emit);
//     } else {
//       recalculateTotalHours(dayPosition, vmHoursForTimeBasedTimesheets);
//     }
//     return;
//   }

//   void vmPopulateRestTime(
//     dynamic dayPosition,
//     dynamic intervalPosition,
//     dynamic pausePosition,
//     Emitter<TimesheetState> emit,
//   ) {
//     final dayInfo = vmHoursForTimeBasedTimesheets[dayPosition];
//     final groupedByDate = dayInfo['groupedByDate'];

//     String errorMsg = '';
//     final currentInterval = groupedByDate[intervalPosition];
//     if (pausePosition == -1) {
//       // we need to validate paused regarding changes on the interval
//       if (currentInterval['endTime'].toString().isNotEmpty &&
//           currentInterval['startTime'].toString().isNotEmpty &&
//           currentInterval['endTime'] != null &&
//           currentInterval['startTime'] != null) {
//         bool isError = false;

//         for (int i = 0,
//                 // ignore: prefer_final_locals
//                 restsLen = (currentInterval['rests'] as List<dynamic>).length;
//             i < restsLen;
//             i++) {
//           final dynamic rest = currentInterval['rests'][i];
//           isError = true;
//           isError = checkIntersectionWithInterval(currentInterval, rest, true);
//         }
//         if (isError) {
//           errorMsg = 'registration_timesheets_screen.message_info23'
//               .tr()
//               .replaceAll(
//                 '{1}',
//                 msToTimeStr(
//                   (currentInterval['startTimeMS'] as int).toDouble(),
//                 ),
//               )
//               .replaceAll(
//                 '{2}',
//                 msToTimeStr(
//                   (currentInterval['endTimeMS'] as int).toDouble(),
//                 ),
//               );
//         }
//       }
//     } else {
//       // we need to validate pause changes
//       final rests = groupedByDate[intervalPosition]['rests'];
//       final restStart = rests[pausePosition]['restStart'];
//       final restEnd = rests[pausePosition]['restEnd'];

//       final int restStartMS = timeToMS('$restStart') as int;
//       int restEndMS = timeToMS('$restEnd') as int;

//       const endOfDay = 24 * 60 * 60 * 1000;
//       if (restEndMS == 0) {
//         restEndMS = endOfDay;
//       }
//       if (restEndMS > endOfDay) {
//         restEndMS -= endOfDay;
//       }

//       if (restStartMS != DateTime(1970).millisecondsSinceEpoch &&
//           restEndMS != DateTime(1970).millisecondsSinceEpoch &&
//           restStartMS >= restEndMS &&
//           currentInterval['startTimeMS'] < currentInterval['endTimeMS']) {
//         errorMsg = 'registration_timesheets_screen.message_info21'.tr();
//       }

//       if (errorMsg.isEmpty) {
//         // check rest intersections between itself
//         // if interval not first - check intersection with previous
//         if (pausePosition > 0 &&
//             restStartMS != 0 &&
//             restEndMS != 0 &&
//             ((restStartMS <= rests[pausePosition - 1]['restEndMS'] &&
//                         restStartMS >=
//                             rests[pausePosition - 1]['restStartMS'] ||
//                     restEndMS <= rests[pausePosition - 1]['restEndMS'] &&
//                         restEndMS >= rests[pausePosition - 1]['restStartMS']) ||
//                 (restStartMS <= rests[pausePosition - 1]['restEndMS'] &&
//                         restStartMS >= currentInterval['startTimeMS'] ||
//                     restEndMS <= rests[pausePosition - 1]['restEndMS'] &&
//                         restEndMS >= currentInterval['restEndMS']))) {
//           errorMsg = 'registration_timesheets_screen.message_info22'.tr();
//         }
//         // if interval not last - check intersection with next
//         if (pausePosition < (rests as List<dynamic>).length - 1 &&
//             restStartMS != 0 &&
//             restEndMS != 0 &&
//             ((restStartMS <= rests[pausePosition + 1]['restEndMS'] &&
//                         restStartMS >=
//                             rests[pausePosition + 1]['restStartMS'] ||
//                     restEndMS <= rests[pausePosition + 1]['restEndMS'] &&
//                         restEndMS >= rests[pausePosition + 1]['restStartMS']) ||
//                 (restStartMS >= rests[pausePosition + 1]['restStartMS'] &&
//                         rests[pausePosition + 1]['restStartMS'] >=
//                             currentInterval['startTimeMS'] ||
//                     restEndMS >= rests[pausePosition + 1]['restStartMS'] &&
//                         rests[pausePosition + 1]['restStartMS'] >=
//                             currentInterval['startTimeMS']))) {
//           errorMsg = 'registration_timesheets_screen.message_info22'.tr();
//         }
//       }

//       final previousStartMS = rests[pausePosition]['restStartMS'];
//       final previousEndMS = rests[pausePosition]['restEndMS'];
//       if (errorMsg.isEmpty) {
//         rests[pausePosition]['restStartMS'] = restStartMS;
//         rests[pausePosition]['restEndMS'] = restEndMS;
//       }

//       // check the intersection with interval
//       if (checkIntersectionWithInterval(
//         currentInterval,
//         rests[pausePosition],
//         false,
//       )) {
//         errorMsg = 'registration_timesheets_screen.message_info23'
//             .tr()
//             .replaceAll(
//               '{1}',
//               msToTimeStr(
//                 (currentInterval['startTimeMS'] as int).toDouble(),
//               ),
//             )
//             .replaceAll(
//               '{2}',
//               msToTimeStr((currentInterval['endTimeMS'] as int).toDouble()),
//             );
//       }

//       if (errorMsg.isNotEmpty) {
//         rests[pausePosition]['restStart'] =
//             msToTime(previousStartMS.toString());
//         rests[pausePosition]['restEnd'] = msToTime(previousEndMS.toString());
//         rests[pausePosition]['restStartMS'] = previousStartMS;
//         rests[pausePosition]['restEndMS'] = previousEndMS;
//       }
//     }

//     if (errorMsg.isNotEmpty) {
//       emit(
//         TimesheetState.hoursError(
//           hoursError: errorMsg,
//         ),
//       );
//     }

//     recalculateTotalHours(dayPosition, vmHoursForTimeBasedTimesheets);
//     return;
//   }

//   String projectName(String projectId) {
//     if (projectId.isNotEmpty) {
//       return timesheetsInfo.projects
//           .where((element) => element.id == projectId)
//           .first
//           .name;
//     } else {
//       return 'registration_timesheets_screen.project_not_selected'.tr();
//     }
//   }

//   String formatTime(int value) {
//     return value.toString().length > 1 ? value.toString() : '0$value';
//   }

//   List<Map<dynamic, dynamic>> listStartStopTime(
//     int index,
//     Map<dynamic, dynamic> startStop,
//   ) {
//     final List<Map<dynamic, dynamic>> startStopList = [];

//     if (startStop['startTime'] != null && startStop['endTime'] != null) {
//       startStopList.add({
//         'indexDay': index,
//         'date': startStop['date'] ?? DateTime,
//         'startTime': startStop['startTime'] ?? DateTime,
//         'endTime': startStop['endTime'] ?? DateTime,
//         'startTimeMS': startStop['startTimeMS'] ?? 0,
//         'endTimeMS': startStop['endTimeMS'] ?? 0,
//         'project': startStop['project'] ?? '',
//         'unraveling': startStop['unraveling'],
//         'workedHour': startStop['workedHour'] ?? 0.0,
//         'startTimeHours': startStop['startTime'] != null
//             ? '${formatTime(
//                 DateTime.parse(
//                   (startStop['startTime'] ?? DateTime).toString(),
//                 ).hour,
//               )}:${formatTime(
//                 DateTime.parse(
//                   (startStop['startTime'] ?? DateTime).toString(),
//                 ).minute,
//               )}'
//             : '',
//         'endTimeHours': startStop['endTime'] != null
//             ? '${formatTime(
//                 DateTime.parse(
//                   (startStop['endTime'] ?? DateTime).toString(),
//                 ).hour,
//               )}:${formatTime(
//                 DateTime.parse(
//                   (startStop['endTime'] ?? DateTime).toString(),
//                 ).minute,
//               )}'
//             : '',
//         'rests': (startStop['rests'] as List<dynamic>).isNotEmpty &&
//                 startStop['rests'][0]['restStart'] != '' &&
//                 startStop['rests'][0]['restStart'] != null
//             ? (startStop['rests'] ?? <dynamic>[])
//             : <dynamic>[]
//       });
//     }

//     return startStopList;
//   }

//   void groupedByDate(int index) {
//     for (int i = 0;
//         i <
//             (vmHoursForTimeBasedTimesheets[index]['groupedByDate']
//                     as List<dynamic>)
//                 .length;
//         i++) {
//       String key = (vmHoursForTimeBasedTimesheets[index]['groupedByDate'][i]
//                   ['project'] ??
//               '') +
//           (vmHoursForTimeBasedTimesheets[index]['groupedByDate'][i]
//                   ['unraveling'] ??
//               '');
//       final hoursForTime = (vmHoursForTimeBasedTimesheets[index]
//               ['groupedByDate'] as List<dynamic>)
//           .where((element) => element['project'] == key)
//           .toList();

//       if (hoursForTime.length > 1) {
//         final int indexForTime = hoursForTime.indexWhere(
//           (element) =>
//               element['project'] == key &&
//               element['startTime'] ==
//                   vmHoursForTimeBasedTimesheets[index]['groupedByDate'][i]
//                       ['startTime'],
//         );
//         key = indexForTime != 0 ? '$key$indexForTime' : key;
//       }

//       if (listStartStop.containsKey(key)) {
//         listStartStop.update(
//           key,
//           (value) => StartStopCardDataModel(
//             cardType: 'StartStop',
//             projectId: listStartStop[key]?.projectId ?? '',
//             projectName: listStartStop[key]?.projectName ?? '',
//             unravelingId: listStartStop[key]?.unravelingId ?? '',
//             unravelingName: listStartStop[key]?.unravelingName ?? '',
//             isEditableTimesheet: isEditableTimesheet,
//             listStartStopTime: vmHoursForTimeBasedTimesheets[index]
//                         ['groupedByDate'][i]['startTime'] !=
//                     null
//                 ? ((listStartStop[key]?.listStartStopTime ?? [])
//                   ..addAll(
//                     listStartStopTime(
//                       index,
//                       vmHoursForTimeBasedTimesheets[index]['groupedByDate'][i],
//                     ),
//                   ))
//                 : (listStartStop[key]?.listStartStopTime ?? []),
//           ),
//         );
//       } else {
//         listStartStop.addAll({
//           key: StartStopCardDataModel(
//             cardType: 'StartStop',
//             projectId: vmHoursForTimeBasedTimesheets[index]['groupedByDate'][i]
//                     ['project'] ??
//                 '',
//             projectName: projectName(
//               vmHoursForTimeBasedTimesheets[index]['groupedByDate'][i]
//                       ['project'] ??
//                   '',
//             ),
//             unravelingId: vmHoursForTimeBasedTimesheets[index]['groupedByDate']
//                     [i]['unraveling'] ??
//                 '',
//             unravelingName: vmHoursForTimeBasedTimesheets[index]
//                     ['groupedByDate'][i]['unraveling'] ??
//                 '',
//             isEditableTimesheet: isEditableTimesheet,
//             listStartStopTime: vmHoursForTimeBasedTimesheets[index]
//                         ['groupedByDate'][i]['startTime'] !=
//                     null
//                 ? listStartStopTime(
//                     index,
//                     vmHoursForTimeBasedTimesheets[index]['groupedByDate'][i],
//                   )
//                 : [],
//           )
//         });
//       }
//     }
//   }

//   //StartStop end

//   String _roundingToHundredths(String time) {
//     if (time.contains('.') &&
//         time.substring(time.indexOf('.') + 1).length > 2) {
//       return double.parse(time).toStringAsFixed(2);
//     } else {
//       return time;
//     }
//   }

//   List<int> daysNotBlockedCardExpenses(
//     CpcExpenseTypeConfDataModel cpcExpenseTypeConf,
//   ) {
//     List<int> listDaysNotBlockedCardExpenses = [0, 1, 2, 3, 4, 5, 6];
//     final allocation = cpcExpenseTypeConf.allocation;
//     final allowedDaysOfWeek = cpcExpenseTypeConf.allowedDaysOfWeek;
//     final applyAboveHourrate = cpcExpenseTypeConf.applyAboveHourrate;
//     final applyBelowHourrate = cpcExpenseTypeConf.applyBelowHourrate;
//     final validFrom = DateTime.parse(
//       cpcExpenseTypeConf.validFrom.isNotEmpty
//           ? cpcExpenseTypeConf.validFrom
//           : '2100-12-31',
//     );
//     final validTo = DateTime.parse(
//       cpcExpenseTypeConf.validTo.isNotEmpty
//           ? cpcExpenseTypeConf.validTo
//           : '2100-12-31',
//     );

//     if ((allocation.isNotEmpty &&
//             allocation != 'Per Unit' &&
//             allocation != 'Value') ||
//         allocation == 'Value') {
//       listDaysNotBlockedCardExpenses = [];
//     }

//     for (int i = 0; i < 7; i++) {
//       final itemDate = timesheetStartDate.add(Duration(days: i));

//       for (int j = 0; j < (timesheetsInfo.pop.length); j++) {
//         final _popStartDate = DateTime.parse(timesheetsInfo.pop[j].startDate);
//         final _popEndDate = DateTime.parse(timesheetsInfo.pop[j].endDate);
//         final _hourRate = double.parse(timesheetsInfo.pop[j].hourRate);
//         if (_popStartDate == itemDate ||
//             _popEndDate == itemDate ||
//             _popStartDate.isBefore(itemDate) ||
//             _popEndDate.isAfter(itemDate)) {
//           bool workingTimeNorm = true;

//           if (applyAboveHourrate != null && applyBelowHourrate != null) {
//             if (_hourRate < double.parse(applyAboveHourrate) ||
//                 _hourRate > double.parse(applyBelowHourrate)) {
//               workingTimeNorm = false;
//             }
//           }

//           if (validFrom == itemDate ||
//               validTo == itemDate ||
//               validFrom.isBefore(itemDate) ||
//               validTo.isAfter(itemDate)) {
//             if (workingTimeNorm) {
//               if (allowedDaysOfWeek == 'Full Week') {
//                 listDaysNotBlockedCardExpenses = listDaysNotBlockedCardExpenses;
//               } else if (allowedDaysOfWeek == 'Work Week') {
//                 if (i > 4) {
//                   listDaysNotBlockedCardExpenses.remove(i);
//                 }
//               } else if (allowedDaysOfWeek == 'Weekend') {
//                 if (i < 5) {
//                   listDaysNotBlockedCardExpenses.remove(i);
//                 }
//               }
//             } else {
//               listDaysNotBlockedCardExpenses = [];
//             }
//           } else {
//             listDaysNotBlockedCardExpenses.remove(i);
//           }
//         }
//       }
//     }
//     return listDaysNotBlockedCardExpenses;
//   }

//   List<int> getDaysNotBlocked(
//     int indexCard,
//     TarifsDataModel? inputTarif,
//     List<int> inputListDaysNotBlocked,
//     Emitter<TimesheetState> _emit,
//   ) {
//     final List<int> listDaysNotBlockedCard = [];
//     final validFrom = DateTime.parse(inputTarif?.validFrom ?? '${DateTime(0)}');
//     final validUntil =
//         DateTime.parse(inputTarif?.validUntil ?? '${DateTime(0)}');
//     for (int i = 0; i < 7; i++) {
//       final itemDate = timesheetStartDate.add(Duration(days: i));

//       if ((validFrom == itemDate || validFrom.isBefore(itemDate)) &&
//           (validUntil == itemDate || validUntil.isAfter(itemDate))) {
//         listDaysNotBlockedCard.add(itemDate.weekday - 1);
//       } else {
//         listHoursCards[indexCard].amountOfHoursList.remove(
//               itemDate.weekday - 1,
//             );
//       }
//     }
//     listDaysNotBlockedCard.toSet();
//     if (listDaysNotBlockedCard.isEmpty && inputListDaysNotBlocked.isNotEmpty) {
//       _emit(
//         TimesheetState.hoursError(
//           hoursError:
//               ' ${inputTarif?.nameTariffLineForce} ${'registration_timesheets_screen.tariff_is_not_valid'.tr()}',
//         ),
//       );
//     }
//     return listDaysNotBlockedCard
//         .where(
//           (element) => inputListDaysNotBlocked.any((item) => item == element),
//         )
//         .toList();
//   }

//   List<ProjectInfoDataModel> getListInfoProjects(
//     List<HoursCardDataModel> listCards,
//   ) {
//     return List<ProjectInfoDataModel>.from(
//       listCards.map((element) {
//         double tarif = 0.0;

//         if (element.tarifId.isNotEmpty) {
//           tarif = timesheetsInfo.tarifs
//               .where((item) => item.id == element.tarifId)
//               .first
//               .compensatPrc;
//         }

//         double sumHours = 0.0;
//         if (element.amountOfHoursList.values.isNotEmpty) {
//           sumHours = element.amountOfHoursList.values
//               .map((item) => item.isNotEmpty ? double.parse(item) : 0.0)
//               .toList()
//               .reduce((a, b) => a + b);
//         }
//         final costsList = <double>[];

//         element.amountOfHoursList.forEach((key, value) {
//           final itemDate = timesheetStartDate;
//           for (int j = 0; j < (timesheetsInfo.pop.length); j++) {
//             final popStartDate = DateTime.parse(
//               timesheetsInfo.pop[j].startDate.isNotEmpty
//                   ? timesheetsInfo.pop[j].startDate
//                   : '2000-12-31',
//             );
//             final popEndDate = DateTime.parse(
//               timesheetsInfo.pop[j].endDate.isNotEmpty
//                   ? timesheetsInfo.pop[j].endDate
//                   : '2100-12-31',
//             );
//             if (popStartDate == itemDate ||
//                 popEndDate == itemDate ||
//                 popStartDate.isBefore(itemDate) ||
//                 popEndDate.isAfter(itemDate)) {
//               costsList.add(
//                 double.parse(value.isNotEmpty ? value : '0') *
//                     tarif /
//                     100 *
//                     double.parse(timesheetsInfo.pop[j].hourRate),
//               );
//             }
//           }
//         });

//         double costs = 0.0;
//         if (costsList.isNotEmpty) {
//           costs = costsList.reduce((a, b) => a + b);
//         }

//         return ProjectInfoDataModel(
//           projectId: element.projectId,
//           costs: costs.toString(),
//           projectItem: element.projectItem,
//           hours: sumHours.toString(),
//         );
//       }),
//     );
//   }

//   void getActiveDays(
//     Emitter<TimesheetState> emit,
//   ) {
//     listDaysNotBlocked.clear();
//     final arrDay = [true, true, true, true, true, true, true];

//     for (int i = 0; i < 7; i++) {
//       final itemDate = timesheetStartDate.add(Duration(days: i));

//       timesheetsInfo.contracts.forEach((contract) {
//         final contractStartDate = DateTime.parse(contract.startDate);
//         final contractEndDate = DateTime.parse(
//           contract.endDate.isNotEmpty ? contract.endDate : '2099-12-31',
//         );

//         final withinPlacement = (itemDate.isAfter(placementStartDate) ||
//                 itemDate == placementStartDate) &&
//             (itemDate.isBefore(placementEndDate) ||
//                 itemDate == placementEndDate);

//         final withinContract = (itemDate.isAfter(contractStartDate) ||
//                 itemDate == contractStartDate) &&
//             (itemDate.isBefore(contractEndDate) || itemDate == contractEndDate);

//         if (withinContract && withinPlacement) {
//           arrDay[i] = false;
//           listDaysNotBlocked.add(
//             itemDate.weekday - 1,
//           );
//         }
//       });
//     }
//     wmIsSel = arrDay;
//     listDaysNotBlocked.toSet();
//   }

//   void getCurrentTariffs(
//     List<Map<String, String>> hoursTypeList,
//     DateTime startDate,
//     DateTime endDate,
//   ) {
//     currentHoursType.clear();
//     for (int i = 0; i < hoursTypeList.length; i++) {
//       TarifsDataModel? itemTarif;
//       hoursTypeList[i].forEach((key, value) {
//         itemTarif = timesheetsInfo.tarifs.firstWhere(
//           (element) => element.id == key,
//           orElse: () => timesheetsInfo.tarifs.last,
//         );
//       });
//       final validFrom =
//           DateTime.parse(itemTarif?.validFrom ?? '${DateTime(0)}');
//       final validUntil =
//           DateTime.parse(itemTarif?.validUntil ?? '${DateTime(0)}');
//       if ((validFrom == startDate || validFrom.isBefore(startDate)) &&
//           (validUntil == endDate || validUntil.isAfter(endDate))) {
//         currentHoursType
//             .add({itemTarif?.id ?? '': itemTarif?.nameTariffLineForce ?? ''});
//       }
//     }
//   }

//   void cellEditingByTariff(
//     TimesheetUpdateHoursCardEvent event,
//     Emitter<TimesheetState> emit,
//     int indexWeek,
//     double time,
//     double maxUsagePerWeek,
//     double maxUsagePerDay,
//     bool inputOnMonday,
//   ) {
//     final messageSumHoursDayMore24 = inputOnMonday
//         ? ''
//         : '${'registration_timesheets_screen.message_info1'.tr()}'
//             '24${'hours'.tr()[0].toLowerCase()}.';
//     final messageSumHoursDayMoreMaxUsagePerDay = inputOnMonday
//         ? ''
//         : '${'registration_timesheets_screen.message_info11'.tr()}'
//             ' ${maxUsagePerDay.toStringAsFixed(2).replaceAll(regex, '').replaceAll(regex, '')}${'hours'.tr()[0].toLowerCase()}.';
//     final messageSumHoursWeekMoreMaxUsagePerWeek =
//         '${'registration_timesheets_screen.message_info2'.tr()}'
//         '${maxUsagePerWeek.toStringAsFixed(2).replaceAll(regex, '').replaceAll(regex, '')}${'hours'.tr()[0].toLowerCase()}.';
//     listHoursCards[event.indexCard].amountOfHoursList
//       ..addAll(
//         {
//           indexWeek: time == 0 ? '' : '0',
//         },
//       );
//     final _hoursDay = listHoursCards
//         .map(
//           (item) => double.parse(
//             item.amountOfHoursList[indexWeek]?.isNotEmpty ?? false
//                 ? item.amountOfHoursList[indexWeek] ?? '0'
//                 : '0',
//           ),
//         )
//         .toList();

//     final _sumHoursDay = _hoursDay.reduce(
//       (
//         a,
//         b,
//       ) =>
//           a + b,
//     );
//     double _enteredTimeOfTheWeek = 0;

//     if (event.hourId.isNotEmpty) {
//       listHoursCards[event.indexCard].amountOfHoursList.forEach((key, value) {
//         if (key < indexWeek) {
//           _enteredTimeOfTheWeek = _enteredTimeOfTheWeek +
//               double.parse(value.isNotEmpty ? value : '0');
//         }
//       });
//     } else {
//       listHoursCards[event.indexCard].amountOfHoursList.forEach((key, value) {
//         if (key != indexWeek) {
//           _enteredTimeOfTheWeek = _enteredTimeOfTheWeek +
//               double.parse(value.isNotEmpty ? value : '0');
//         }
//       });
//       if (_enteredTimeOfTheWeek > maxUsagePerWeek) {
//         _enteredTimeOfTheWeek = 0;
//       }
//     }

//     final _maxAvailableHoursPerWeek = maxUsagePerWeek -
//         ((indexWeek == 0 && time > 24) ? 0.0 : _enteredTimeOfTheWeek);
//     final _maxAvailableHoursPerDay = (24 - _sumHoursDay) > maxUsagePerDay
//         ? maxUsagePerDay
//         : (24 - _sumHoursDay);

//     final value = time > _maxAvailableHoursPerWeek
//         ? _maxAvailableHoursPerWeek > _maxAvailableHoursPerDay
//             ? _maxAvailableHoursPerDay
//             : _maxAvailableHoursPerWeek
//         : time > _maxAvailableHoursPerDay
//             ? _maxAvailableHoursPerDay
//             : time;
//     final String newCellValue = value
//         .toStringAsFixed(2)
//         .replaceAll(regex, '')
//         .replaceAll(regex, '')
//         .replaceAll(RegExp('(^0)'), '');
//     event.time.isNotEmpty
//         ? (listHoursCards[event.indexCard].amountOfHoursList
//           ..addAll(
//             {indexWeek: newCellValue},
//           ))
//         : listHoursCards[event.indexCard].amountOfHoursList
//       ..update(
//         indexWeek,
//         (value) => newCellValue,
//       );
//     String _errorMessage = '';
//     _errorMessage = _maxAvailableHoursPerWeek < time
//         ? (value == maxUsagePerDay && time != 24 && indexWeek != 0)
//             ? messageSumHoursDayMoreMaxUsagePerDay
//             : (value == (24 - _sumHoursDay) && time != value)
//                 ? messageSumHoursDayMore24
//                 : messageSumHoursWeekMoreMaxUsagePerWeek
//         : (value == maxUsagePerDay && time != 24 && indexWeek != 0)
//             ? messageSumHoursDayMoreMaxUsagePerDay
//             : (value == (24 - _sumHoursDay) && time != value)
//                 ? messageSumHoursDayMore24
//                 : '';

//     if (_errorMessage.isNotEmpty) {
//       emit(
//         TimesheetState.hoursError(
//           hoursError: _errorMessage,
//         ),
//       );
//     }
//   }

//   Future<void> _changeWeek(
//     TimesheetSelectWeekEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     if ((event.selectWeek.isAfter(placementStartDate) ||
//             event.selectWeek == placementStartDate) &&
//         (event.selectWeek == placementEndDate ||
//             event.selectWeek.isBefore(placementEndDate))) {
//       timesheetStartDate = event.selectWeek;
//       timesheetEndDate = event.selectWeek.add(const Duration(days: 6));

//       timesheetsInfo = timesheetsInfo.copyWith.timesheet(
//         startDate: timesheetStartDate.toString().substring(
//               0,
//               timesheetStartDate.toString().indexOf(' '),
//             ),
//         endDate: timesheetEndDate.toString().substring(
//               0,
//               timesheetEndDate.toString().indexOf(' '),
//             ),
//       );

//       getActiveDays(emit);
//       getCurrentTariffs(
//         timesheetHoursType,
//         timesheetStartDate,
//         timesheetEndDate,
//       );
//       int i = 0;
//       listHoursCards.forEach((element) {
//         add(
//           TimesheetEvent.updateHoursCard(
//             i,
//             -1,
//             DateTime(0),
//             '',
//             '',
//             '',
//           ),
//         );
//         i++;
//       });
//     } else {
//       emit(
//         TimesheetState.hoursError(
//           hoursError:
//               '${'registration_timesheets_screen.posting_period'.tr()} (${placementStartDate.year}-${placementStartDate.month}-${placementStartDate.day} - ${placementEndDate == DateTime.parse(
//                     '2100-01-01',
//                   ) ? '...' : '${placementEndDate.year}-${placementEndDate.month}-${placementEndDate.day}'})',
//         ),
//       );
//     }

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         listReservationCards: listReservationCards,
//         startDateTimesheet: timesheetStartDate,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   String roundingToHundredths(String time) {
//     if (time.contains('.') &&
//         time.substring(time.indexOf('.') + 1).length > 2) {
//       return double.parse(time).toStringAsFixed(2);
//     } else {
//       return double.parse(time) != 0 ? time : '';
//     }
//   }

//   Future<void> _addCard(
//     TimesheetAddCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     ProjectsDataModel? projectItem;
//     reservationType = [];
//     final listDaysNotBlockedCard = [0, 1, 2, 3, 4, 5, 6];

//     if (timesheetsInfo.uitzending.defaultProject.isNotEmpty) {
//       projectItem = timesheetsInfo.projects
//           .where(
//             (element) => element.id == timesheetsInfo.uitzending.defaultProject,
//           )
//           .toList()
//           .first;
//     }

//     final listReservationKey =
//         listReservationCards.map((item) => item.reservationKey);

//     key2ValuesMap.forEach((key, value) {
//       if ((showRow[key] ?? false) &&
//           listReservationKey.contains(key) == false) {
//         reservationType.add({key: value});
//       }
//     });

//     if (event.cardType == 'Hours') {
//       listHoursCards.add(
//         HoursCardDataModel(
//           cardType: event.cardType,
//           projectItem: projectItem?.name.isNotEmpty ?? false
//               ? projectItem?.name ?? ''
//               : 'registration_timesheets_screen.project_not_selected'.tr(),
//           projectId: projectItem?.id ?? '',
//           tarifId: '',
//           hourItem:
//               'registration_timesheets_screen.hour_type_not_selected'.tr(),
//           unraveling: false,
//           projects: projects,
//           hoursType: currentHoursType,
//           timeWeek: [],
//           amountOfHoursList: {},
//           listDaysNotBlockedCardHours: listDaysNotBlockedCard,
//         ),
//       );
//     } else if (event.cardType == 'Expense') {
//       listExpensesCards.add(
//         ExpensesCardDataModel(
//           cardType: event.cardType,
//           projectItem: projectItem?.name.isNotEmpty ?? false
//               ? projectItem?.name ?? ''
//               : 'registration_timesheets_screen.project_not_selected'.tr(),
//           projectId: projectItem?.id ?? '',
//           positive: true,
//           cpcExpenseTypeConfigId: '',
//           cpcExpenseTypeConfigItem: 'Costs not selected',
//           sfWithdrawalRemainder: '',
//           price: '',
//           isPrice: true,
//           projects: projects,
//           cpcExpenseType: cpcExpenseType,
//           explanation: '',
//           amountOfExpensesList: {
//             0: '',
//             1: '',
//             2: '',
//             3: '',
//             4: '',
//             5: '',
//             6: ''
//           },
//           listDaysNotBlockedCardExpenses: [],
//           numberExpenses: [],
//           blockCard: false,
//           bedrag: {0: '0', 1: '0', 2: '0', 3: '0', 4: '0', 5: '0', 6: '0'},
//           routeFrom: '',
//           routeTo: '',
//         ),
//       );
//     } else if (event.cardType ==
//             'card_timesheet_reservation.reservation'.tr() &&
//         reservationType.isNotEmpty) {
//       listReservationCards.add(
//         ReservationCardDataModel(
//           cardType: 'Reservation',
//           reservationType: reservationType,
//           reservationKey: '',
//           available: '',
//           availableBalance: '',
//           reservationItem: '',
//           amountOfReservationList: {},
//           isAutoModeReservation: false,
//           isWdc: false,
//           isCardBlocked: false,
//         ),
//       );
//     } else if (event.cardType == 'Start/Stop') {
//       listStartStopCard.add(
//         StartStopCardDataModel(
//           cardType: 'Start/Stop',
//           projectName: projectName(event.projectId),
//           isEditableTimesheet: isEditableTimesheet,
//           projectId: event.projectId,
//           unravelingId: 'default'.tr(),
//           unravelingName: 'default'.tr(),
//           listStartStopTime: [],
//         ),
//       );
//     } else if (event.cardType == 'Ritten') {
//       listExpensesCards.add(
//         ExpensesCardDataModel(
//           cardType: event.cardType,
//           projectItem: projectItem?.name.isNotEmpty ?? false
//               ? projectItem?.name ?? ''
//               : 'registration_timesheets_screen.project_not_selected'.tr(),
//           projectId: projectItem?.id ?? '',
//           positive: true,
//           cpcExpenseTypeConfigId: '',
//           cpcExpenseTypeConfigItem: 'Costs not selected',
//           sfWithdrawalRemainder: '',
//           price: '',
//           isPrice: true,
//           projects: projects,
//           cpcExpenseType: cpcExpenseType,
//           explanation: '',
//           amountOfExpensesList: {
//             0: '',
//             1: '',
//             2: '',
//             3: '',
//             4: '',
//             5: '',
//             6: ''
//           },
//           listDaysNotBlockedCardExpenses: [],
//           numberExpenses: [],
//           blockCard: false,
//           bedrag: {0: '0', 1: '0', 2: '0', 3: '0', 4: '0', 5: '0', 6: '0'},
//           routeFrom: '',
//           routeTo: '',
//         ),
//       );
//     }

//     emit(
//       const TimesheetState.update(),
//     );
//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         listReservationCards: listReservationCards,
//         startDateTimesheet: timesheetStartDate,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _deleteHoursCard(
//     TimesheetDeleteHoursCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     final List<ProjectInfoDataModel> listInfoProject = [];

//     listHoursCards.removeAt(event.indexCard);

//     final listInfoProjects = getListInfoProjects(listHoursCards);

//     final listProjectsId =
//         listInfoProjects.map((item) => item.projectId).toSet().toList();

//     for (int i = 0; i < listProjectsId.length; i++) {
//       final projectsInfoList = listInfoProjects
//           .where((element) => element.projectId == listProjectsId[i]);

//       final hours =
//           projectsInfoList.map((item) => double.parse(item.hours)).toList();
//       final costs =
//           projectsInfoList.map((item) => double.parse(item.costs)).toList();

//       listInfoProject.add(
//         ProjectInfoDataModel(
//           projectId: projectsInfoList.first.projectId,
//           projectItem: projectsInfoList.first.projectItem,
//           hours: hours
//               .reduce((a, b) => a + b)
//               .toStringAsFixed(2)
//               .replaceAll(regex, '')
//               .replaceAll(regex, ''),
//           costs: costs
//               .reduce((a, b) => a + b)
//               .toStringAsFixed(2)
//               .replaceAll(regex, '')
//               .replaceAll(regex, ''),
//         ),
//       );
//     }

//     for (int i = 0; i < listInfoProject.length; i++) {
//       if (listInfoProject[i].hours == '0') {
//         listInfoProject.remove(listInfoProject[i]);
//       }
//     }

//     listProjectsInfo = listInfoProject;

//     totalCosts = listProjectsInfo.isNotEmpty
//         ? listProjectsInfo
//             .map((item) => double.parse(item.costs))
//             .reduce((a, b) => a + b)
//             .toString()
//             .replaceAll(regex, '')
//             .replaceAll(regex, '')
//         : '0';

//     totalHours = listProjectsInfo.isNotEmpty
//         ? listProjectsInfo
//             .map((item) => double.parse(item.hours))
//             .reduce((a, b) => a + b)
//             .toString()
//             .replaceAll(regex, '')
//             .replaceAll(regex, '')
//         : '0';

//     emit(
//       const TimesheetState.update(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         listReservationCards: listReservationCards,
//         startDateTimesheet: timesheetStartDate,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _deleteExpensesCard(
//     TimesheetDeleteExpensesCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     listExpensesCards[event.indexCard].numberExpenses.forEach((element) {
//       toDeleteExpenses.add(ExpensesDayModel(Id: element.id));
//     });
//     listExpensesCards.removeAt(event.indexCard);

//     emit(
//       const TimesheetState.update(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         listReservationCards: listReservationCards,
//         startDateTimesheet: timesheetStartDate,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _deleteReservationCard(
//     TimesheetDeleteReservationCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     reservationType = [];
//     final reservationKey = listReservationCards[event.indexCard].reservationKey;

//     vmMapReserveigenDay[key2Map[reservationKey] ?? ''] = [
//       '',
//       '',
//       '',
//       '',
//       '',
//       '',
//       ''
//     ];
//     showRowReservation
//         .remove(listReservationCards[event.indexCard].reservationKey);
//     listReservationCards.removeAt(event.indexCard);

//     listReservationCards = [];

//     showRowReservation.forEach((key, value) {
//       if (value) {
//         listReservationCards.add(
//           ReservationCardDataModel(
//             cardType: 'Reservation',
//             reservationType: reservationType,
//             reservationKey: key,
//             available: vmTotalReserveringDisplayed[
//                 key2nonUsedValuesMap[key]?[0] ?? ''],
//             availableBalance: key != 'VG'
//                 ? vmTotalReserveringDisplayed[
//                     key2nonUsedValuesMap[key]?[1] ?? '']
//                 : '',
//             reservationItem: key2ValuesMap[key] ?? '',
//             amountOfReservationList:
//                 amountOfReservation(vmMapReserveigenDay[key2Map[key]] ?? []),
//             isAutoModeReservation: vmIsAutoModeReservation[key] ?? false,
//             isWdc: key == 'WDC',
//             isCardBlocked: isEditableTimesheet,
//           ),
//         );
//       }
//     });

//     emit(
//       const TimesheetState.update(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         startDateTimesheet: timesheetStartDate,
//         listReservationCards: listReservationCards,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _deleteStartStopCard(
//     TimesheetDeleteStartStopCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     listStartStopCard.removeAt(event.indexCard);

//     recalculateHoursForTimeBasedTimesheets(listStartStopCard);

//     emit(
//       const TimesheetState.update(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         startDateTimesheet: timesheetStartDate,
//         listReservationCards: listReservationCards,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _updateExpensesCard(
//     TimesheetUpdateExpensesCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     List<ProjectsDataModel>? projectItem = [];
//     List<CpcExpenseTypeConfDataModel> cpcExpenseTypeConf = [];
//     Map<int, String> amountOfExpensesList =
//         listExpensesCards[event.indexCard].amountOfExpensesList;
//     final Map<int, String> bedrag = listExpensesCards[event.indexCard].bedrag;
//     bool positive = false;
//     bool isPrice = false;
//     double etMaxCostTotal = 0;
//     double etMinCostTotal = 0;
//     double etMaxCost = 0;
//     double etMinCost = 0;
//     final DateTime date = DateTime.parse(
//       timesheetsInfo.timesheet.startDate,
//     );
//     List<int> listDaysNotBlockedCardExpenses = [0, 1, 2, 3, 4, 5, 6];

//     double costPerUnit = double.parse(
//       event.price.isNotEmpty
//           ? event.price
//           : event.dataType != 'costPerUnit'
//               ? listExpensesCards[event.indexCard].price.isNotEmpty
//                   ? listExpensesCards[event.indexCard].price
//                   : '0'
//               : '0',
//     );

//     void _amount(
//       CpcExpenseTypeConfDataModel _cpcExpenseTypeConf,
//       double valueEvent,
//       int indexWeek,
//       int indexCard,
//       double totalAmount,
//     ) {
//       double _valueFromEvent = valueEvent;
//       double _totalAmount = totalAmount;

//       final double etMaxUnitsTotal =
//           _cpcExpenseTypeConf.maximumAmountUnitsPerTp;
//       final double etMinUnitsTotal =
//           _cpcExpenseTypeConf.minimumAmountUnitsPerTp;
//       final String textVal = _valueFromEvent.toString();
//       if (textVal.length > 10) {
//         _valueFromEvent = 0;
//       }
//       final double etMaxAmount = _cpcExpenseTypeConf.maximumAmountUnitsPerDay;
//       final double etMinAmount = _cpcExpenseTypeConf.minimumAmountUnitsPerDay;
//       final int etNumberOfDays = _cpcExpenseTypeConf.allowedNumberOfDays;

//       final double currentNumberOfDays = double.parse(
//         listExpensesCards[indexCard]
//             .amountOfExpensesList
//             .values
//             .reduce((count, amount) {
//           final double amountExpense =
//               double.parse(amount.isNotEmpty ? amount : '0');
//           double countExpense = double.parse(count.isNotEmpty ? count : '0');
//           return ((amountExpense > 0) ? ++countExpense : countExpense)
//               .toString();
//         }),
//       );
//       if (etNumberOfDays == 0 || currentNumberOfDays <= etNumberOfDays) {
//         _valueFromEvent = _valueFromEvent != 0 ? _valueFromEvent : 0;
//         bool isAmountChanged = false;
//         if (etMaxAmount != 0) {
//           amountOfExpensesList[indexWeek] = roundingToHundredths(
//             (_valueFromEvent > etMaxAmount ? etMaxAmount : _valueFromEvent)
//                 .toString(),
//           ).replaceAll(regex, '');
//           if (_valueFromEvent > etMaxAmount) {
//             emit(
//               TimesheetState.hoursError(
//                 hoursError:
//                     '${'registration_timesheets_screen.message_info4'.tr()} ${etMaxAmount.toString().replaceAll(regex, '')}',
//               ),
//             );

//             _valueFromEvent = etMaxAmount;
//             isAmountChanged = true;
//           }
//         }
//         if (etMinAmount != 0 && _valueFromEvent != 0) {
//           amountOfExpensesList[indexWeek] = roundingToHundredths(
//             (_valueFromEvent < etMinAmount ? etMinAmount : _valueFromEvent)
//                 .toString(),
//           ).replaceAll(regex, '');
//           if (_valueFromEvent < etMinAmount) {
//             emit(
//               TimesheetState.hoursError(
//                 hoursError:
//                     '${'registration_timesheets_screen.message_info5'.tr()} ${etMinAmount.toString().replaceAll(regex, '')}',
//               ),
//             );

//             _valueFromEvent = etMinAmount;
//             isAmountChanged = true;
//           }
//         }

//         if (isAmountChanged) {
//           amountOfExpensesList[indexWeek] =
//               roundingToHundredths(_valueFromEvent.toString())
//                   .replaceAll(regex, '');
//           _totalAmount = double.parse(
//             amountOfExpensesList.values.reduce((amountExp, expenseAmount) {
//               final double amount =
//                   double.parse(amountExp.isNotEmpty ? amountExp : '0');
//               final double amountExpense =
//                   double.parse(expenseAmount.isNotEmpty ? expenseAmount : '0');
//               return ((amountExpense > 0) ? (amount + amountExpense) : amount)
//                   .toString();
//             }),
//           );
//           isAmountChanged = false;
//         }
//         if (etMaxUnitsTotal != 0 && etMaxUnitsTotal < _totalAmount) {
//           final double amount =
//               etMaxUnitsTotal - _totalAmount + _valueFromEvent;
//           amountOfExpensesList[indexWeek] =
//               amount.toString().replaceAll(regex, '');
//           _valueFromEvent = double.parse(
//             amountOfExpensesList[indexWeek] ?? '0',
//           );
//           emit(
//             TimesheetState.hoursError(
//               hoursError:
//                   '${'registration_timesheets_screen.message_info8'.tr()} ${etMaxUnitsTotal.toString().replaceAll(regex, '')}',
//             ),
//           );
//           isAmountChanged = true;
//         }
//         if (isAmountChanged) {
//           amountOfExpensesList[indexWeek] =
//               roundingToHundredths(_valueFromEvent.toString())
//                   .replaceAll(regex, '');
//           _totalAmount = double.parse(
//             amountOfExpensesList.values.reduce((amountExp, expenseAmount) {
//               final double amount =
//                   double.parse(amountExp.isNotEmpty ? amountExp : '0');
//               final double amountExpense =
//                   double.parse(expenseAmount.isNotEmpty ? expenseAmount : '0');
//               return ((amountExpense > 0) ? (amount + amountExpense) : amount)
//                   .toString();
//             }),
//           );
//           isAmountChanged = false;
//         }
//         if (etMinUnitsTotal != 0 &&
//             etMinUnitsTotal > _totalAmount &&
//             event.dataType != 'cpcExpenseType') {
//           emit(
//             TimesheetState.hoursError(
//               hoursError:
//                   '${'registration_timesheets_screen.message_info9'.tr()} ${etMinUnitsTotal.toString().replaceAll(regex, '')}',
//             ),
//           );
//         }
//         final double costForUnit = positive ? costPerUnit.abs() : costPerUnit;
//         if (_valueFromEvent != 0 &&
//             etMaxCost != 0 &&
//             _valueFromEvent * costForUnit > etMaxCost) {
//           _valueFromEvent = double.parse(
//             (etMaxCost / costForUnit).toStringAsFixed(2),
//           );
//           isAmountChanged = true;
//           emit(
//             TimesheetState.hoursError(
//               hoursError:
//                   '${'registration_timesheets_screen.message_info4'.tr()} $_valueFromEvent',
//             ),
//           );
//         }
//         if (_valueFromEvent != 0 &&
//             etMinCost != 0 &&
//             costForUnit != 0 &&
//             _valueFromEvent * costForUnit < etMinCost) {
//           _valueFromEvent = double.parse(
//             (etMinCost / costForUnit).toStringAsFixed(2),
//           );
//           isAmountChanged = true;
//           emit(
//             TimesheetState.hoursError(
//               hoursError:
//                   '${'registration_timesheets_screen.message_info5'.tr()} ${_valueFromEvent.toString().replaceAll(regex, '')}',
//             ),
//           );
//         }
//         if (etMaxCostTotal != 0 || etMinCostTotal != 0) {
//           if (isAmountChanged) {
//             amountOfExpensesList[indexWeek] =
//                 roundingToHundredths(_valueFromEvent.toString())
//                     .replaceAll(regex, '');
//             _totalAmount = double.parse(
//               amountOfExpensesList.values.reduce((amountExp, expenseAmount) {
//                 final double amount =
//                     double.parse(amountExp.isNotEmpty ? amountExp : '0');
//                 final double amountExpense = double.parse(
//                   expenseAmount.isNotEmpty ? expenseAmount : '0',
//                 );
//                 return ((amountExpense != 0 && amountExpense > 0)
//                         ? (amount + amountExpense)
//                         : amount)
//                     .toString();
//               }),
//             );
//             isAmountChanged = false;
//           }

//           double totalCostP = _totalAmount * costPerUnit;
//           if (etMaxCostTotal != 0 && totalCostP > etMaxCostTotal) {
//             double allowedCost = 0;
//             if (totalCostP - etMaxCostTotal < costPerUnit * _valueFromEvent) {
//               allowedCost =
//                   costForUnit * _valueFromEvent - (totalCostP - etMaxCostTotal);
//             }

//             _valueFromEvent = double.parse(
//               (allowedCost / costPerUnit).toStringAsFixed(2),
//             );
//             isAmountChanged = true;

//             emit(
//               TimesheetState.hoursError(
//                 hoursError:
//                     '${'registration_timesheets_screen.message_info6'.tr()} ${etMaxCostTotal.toString().replaceAll(regex, '')}',
//               ),
//             );
//             amountOfExpensesList[indexWeek] =
//                 roundingToHundredths(_valueFromEvent.toString())
//                     .replaceAll(regex, '');
//           }
//           if (isAmountChanged) {
//             amountOfExpensesList[indexWeek] =
//                 roundingToHundredths(_valueFromEvent.toString())
//                     .replaceAll(regex, '');
//             _totalAmount = double.parse(
//               amountOfExpensesList.values.reduce((amountExp, expenseAmount) {
//                 final double amount =
//                     double.parse(amountExp.isNotEmpty ? amountExp : '0');
//                 final double amountExpense = double.parse(
//                   expenseAmount.isNotEmpty ? expenseAmount : '0',
//                 );

//                 return ((amountExpense != 0 && amountExpense > 0)
//                         ? (amount + amountExpense)
//                         : amount)
//                     .toString();
//               }),
//             );
//             isAmountChanged = false;
//             totalCostP = _totalAmount * costPerUnit;
//           }
//           if (etMinCostTotal != 0 &&
//               etMinCostTotal > totalCostP &&
//               event.dataType != 'cpcExpenseType') {
//             emit(
//               TimesheetState.hoursError(
//                 hoursError:
//                     '${'registration_timesheets_screen.message_info7'.tr()} ${etMinCostTotal.toString().replaceAll(regex, '')}',
//               ),
//             );
//           }
//         }
//         amountOfExpensesList[indexWeek] =
//             roundingToHundredths(_valueFromEvent.toString())
//                 .replaceAll(regex, '');
//       } else {
//         emit(
//           TimesheetState.hoursError(
//             hoursError:
//                 '${'registration_timesheets_screen.message_info10_1'.tr()} '
//                 '${etNumberOfDays.toString().replaceAll(regex, '')} '
//                 '${'registration_timesheets_screen.message_info10_2'.tr()} ',
//           ),
//         );

//         _valueFromEvent = 0;
//         amountOfExpensesList[indexWeek] = '';
//       }
//       if (event.dataType == 'cpcExpenseType') {
//         for (int index = 0; index < 7; index++) {
//           bedrag.update(
//             index,
//             (value) => _roundingToHundredths(
//               (value == '0' ? 0 : _valueFromEvent * costPerUnit).toString(),
//             ),
//           );
//         }
//       } else {
//         bedrag.update(
//           event.indexWeek,
//           (value) => _roundingToHundredths(
//             (_valueFromEvent == 0 ? 0 : _valueFromEvent * costPerUnit)
//                 .toString(),
//           ),
//           ifAbsent: () => _roundingToHundredths(
//             (_valueFromEvent == 0 ? 0 : _valueFromEvent * costPerUnit)
//                 .toString(),
//           ),
//         );
//       }
//     }

//     if (event.dataType == 'amount') {
//       amountOfExpensesList[event.indexWeek] =
//           event.expense.isNotEmpty ? event.expense : '0';
//     }
//     final totalAmount = double.parse(
//       amountOfExpensesList.isNotEmpty
//           ? amountOfExpensesList.values.reduce((value, element) {
//               value = value.isNotEmpty ? value : '0';
//               element = element.isNotEmpty ? element : '0';
//               return (double.parse(value) + double.parse(element)).toString();
//             })
//           : '0',
//     );

//     if (event.dataType == 'projectType') {
//       projectItem = timesheetsInfo.projects
//           .where(
//             (element) =>
//                 element.id ==
//                 (event.projectId.isNotEmpty
//                     ? event.projectId
//                     : listExpensesCards[event.indexCard].projectId),
//           )
//           .toList();
//       if (listExpensesCards[event.indexCard].cpcExpenseTypeConfigId.isEmpty) {
//         listDaysNotBlockedCardExpenses.clear();
//       }
//     } else {
//       projectItem = timesheetsInfo.projects
//           .where(
//             (item) => item.id == listExpensesCards[event.indexCard].projectId,
//           )
//           .toList();
//     }

//     if (event.dataType == 'cpcExpenseType' &&
//         event.cpcExpenseTypeConfigId.isNotEmpty) {
//       cpcExpenseTypeConf = timesheetsInfo.cpcExpenseTypeConf
//           .where(
//             (item) => item.id == event.cpcExpenseTypeConfigId,
//           )
//           .toList();
//       listExpensesCards[event.indexCard].price =
//           cpcExpenseTypeConf.first.amountCostPerUnit;
//     } else {
//       cpcExpenseTypeConf = timesheetsInfo.cpcExpenseTypeConf
//           .where(
//             (item) =>
//                 item.id ==
//                 listExpensesCards[event.indexCard].cpcExpenseTypeConfigId,
//           )
//           .toList();
//     }
//     amountOfExpensesList.forEach((key, value) {
//       final double expense = double.parse(value.isNotEmpty ? value : '0');
//       value =
//           expense % 1 != 0 ? expense.toStringAsFixed(2) : expense.toString();
//     });

//     double valueFromEvent = costPerUnit;

//     if (event.dataType == 'amount') {
//       valueFromEvent =
//           amountOfExpensesList[event.indexWeek]?.isNotEmpty ?? false
//               ? double.parse(
//                   amountOfExpensesList[event.indexWeek] ?? '0',
//                 )
//               : 0;
//     }

//     if (valueFromEvent < 0 &&
//         event.dataType != 'costPerUnit' &&
//         event.indexWeek != -1) {
//       valueFromEvent *= -1;
//       amountOfExpensesList[event.indexWeek] = valueFromEvent.toString();
//     }

//     if (cpcExpenseTypeConf.isNotEmpty) {
//       positive = cpcExpenseTypeConf.first.positive;
//       final allocation = cpcExpenseTypeConf.first.allocation;
//       final allowedDaysOfWeek = cpcExpenseTypeConf.first.allowedDaysOfWeek;
//       final applyAboveHourrate = cpcExpenseTypeConf.first.applyAboveHourrate;
//       final applyBelowHourrate = cpcExpenseTypeConf.first.applyBelowHourrate;
//       final validFrom = DateTime.parse(
//         cpcExpenseTypeConf.first.validFrom.isNotEmpty
//             ? cpcExpenseTypeConf.first.validFrom
//             : '$date',
//       );
//       final validTo = DateTime.parse(
//         cpcExpenseTypeConf.first.validTo.isNotEmpty
//             ? cpcExpenseTypeConf.first.validTo
//             : '$date',
//       );

//       if (cpcExpenseTypeConf.first.amountCostPerUnit.isNotEmpty ||
//           (allocation.isNotEmpty &&
//               allocation != 'Per Unit' &&
//               allocation != 'Value')) {
//         isPrice = true;
//       }

//       if ((allocation.isNotEmpty &&
//               allocation != 'Per Unit' &&
//               allocation != 'Value') ||
//           allocation == 'Value') {
//         listDaysNotBlockedCardExpenses = [];
//         if (allocation == 'Value') {
//           for (int i = 0; i < 7; i++) {
//             if (i == 0) {
//               amountOfExpensesList.addAll({0: '1'});
//             }
//           }
//         }
//       }

//       for (int i = 0; i < 7; i++) {
//         final itemDate = date.add(Duration(days: i));

//         for (int j = 0; j < (timesheetsInfo.pop.length); j++) {
//           final _popStartDate = DateTime.parse(timesheetsInfo.pop[j].startDate);
//           final _popEndDate = DateTime.parse(timesheetsInfo.pop[j].endDate);
//           final _hourRate = double.parse(timesheetsInfo.pop[j].hourRate);
//           if (_popStartDate == itemDate ||
//               _popEndDate == itemDate ||
//               _popStartDate.isBefore(itemDate) ||
//               _popEndDate.isAfter(itemDate)) {
//             bool workingTimeNorm = true;

//             if (applyAboveHourrate != null && applyBelowHourrate != null) {
//               if (_hourRate < double.parse(applyAboveHourrate) ||
//                   _hourRate > double.parse(applyBelowHourrate)) {
//                 workingTimeNorm = false;
//               }
//             }

//             if (validFrom == itemDate ||
//                 validTo == itemDate ||
//                 validFrom.isBefore(itemDate) ||
//                 validTo.isAfter(itemDate)) {
//               if (workingTimeNorm) {
//                 if (allowedDaysOfWeek == 'Full Week') {
//                 } else if (allowedDaysOfWeek == 'Work Week') {
//                   if (i > 4) {
//                     amountOfExpensesList.update(i, (value) => '');
//                     listDaysNotBlockedCardExpenses.remove(i);
//                   }
//                 } else if (allowedDaysOfWeek == 'Weekend') {
//                   if (i <= 4) {
//                     amountOfExpensesList.update(i, (value) => '');
//                     listDaysNotBlockedCardExpenses.remove(i);
//                   }
//                 }
//               } else {
//                 listDaysNotBlockedCardExpenses = [];
//               }
//             } else {
//               amountOfExpensesList.update(i, (value) => '');
//               listDaysNotBlockedCardExpenses.remove(i);
//             }
//           }
//         }
//       }

//       etMaxCostTotal = positive
//           ? cpcExpenseTypeConf.first.maximumAmountCostPerTp
//           : cpcExpenseTypeConf.first.maximumAmountCostPerTp.abs();
//       etMinCostTotal = positive
//           ? cpcExpenseTypeConf.first.minimumAmountCostPerTp
//           : cpcExpenseTypeConf.first.minimumAmountCostPerTp.abs();
//       etMaxCost = positive
//           ? cpcExpenseTypeConf.first.maximumAmountCostPerUnit
//           : cpcExpenseTypeConf.first.maximumAmountCostPerUnit.abs();
//       etMinCost = positive
//           ? cpcExpenseTypeConf.first.minimumAmountCostPerUnit
//           : cpcExpenseTypeConf.first.minimumAmountCostPerUnit.abs();

//       if (event.dataType == 'cpcExpenseType' &&
//           amountOfExpensesList.isNotEmpty) {
//         amountOfExpensesList.forEach((key, value) {
//           _amount(
//             cpcExpenseTypeConf.first,
//             double.parse(value.isNotEmpty ? value : '0'),
//             key,
//             event.indexCard,
//             totalAmount,
//           );
//         });
//       }
//     }

//     if (event.dataType == 'costPerUnit') {
//       if (etMaxCost != 0 && amountOfExpensesList.isNotEmpty) {
//         final double maximumPossibleCost = double.parse(
//           amountOfExpensesList.values.reduce((cost, amount) {
//             final amountExpense =
//                 double.parse(amount.isNotEmpty ? amount : '0');
//             var costExpense = double.parse(cost.isNotEmpty ? cost : '0');
//             if (amountExpense * valueFromEvent.abs() > etMaxCost) {
//               costExpense = costExpense > 0
//                   ? costExpense < (etMaxCost / amountExpense)
//                       ? (etMaxCost / amountExpense)
//                       : costExpense
//                   : etMaxCost / amountExpense;
//             } else {
//               costExpense = 0;
//             }
//             return costExpense.toString();
//           }),
//         );

//         if (maximumPossibleCost > 0) {
//           valueFromEvent = double.parse(
//             maximumPossibleCost.toStringAsFixed(2),
//           );

//           emit(
//             TimesheetState.hoursError(
//               hoursError:
//                   '${'registration_timesheets_screen.message_info4'.tr()} ${valueFromEvent.toString().replaceAll(regex, '')}',
//             ),
//           );
//         }
//       }

//       if (etMinCost != 0 &&
//           valueFromEvent < etMinCost &&
//           amountOfExpensesList.isNotEmpty) {
//         final double minimumPossibleCost = double.parse(
//           amountOfExpensesList.values.reduce((cost, amount) {
//             final amountExpense =
//                 double.parse(amount.isNotEmpty ? amount : '0');
//             var costExpense = double.parse(cost.isNotEmpty ? cost : '0');
//             if (amountExpense * valueFromEvent.abs() < etMinCost) {
//               costExpense = costExpense > 0
//                   ? costExpense < (etMinCost / amountExpense)
//                       ? costExpense
//                       : (etMinCost / amountExpense)
//                   : etMinCost / amountExpense;
//             } else {
//               costExpense = 0;
//             }
//             return costExpense.toString();
//           }),
//         );
//         if (minimumPossibleCost > 0) {
//           valueFromEvent = double.parse(
//             minimumPossibleCost.toStringAsFixed(2),
//           );

//           emit(
//             TimesheetState.hoursError(
//               hoursError:
//                   '${'registration_timesheets_screen.message_info5'.tr()} ${valueFromEvent.toString().replaceAll(regex, '')}',
//             ),
//           );
//         }
//       }

//       final double totalCost = totalAmount * valueFromEvent;
//       if (etMaxCostTotal != 0 && totalCost > etMaxCostTotal) {
//         valueFromEvent = double.parse(
//           (etMaxCostTotal / totalAmount).toStringAsFixed(2),
//         );
//         emit(
//           TimesheetState.hoursError(
//             hoursError:
//                 '${'registration_timesheets_screen.message_info6'.tr()} ${etMaxCostTotal.toString().replaceAll(regex, '')}',
//           ),
//         );
//       }
//       if (etMinCostTotal != 0 && etMinCostTotal > totalCost && totalCost != 0) {
//         emit(
//           TimesheetState.hoursError(
//             hoursError:
//                 '${'registration_timesheets_screen.message_info7'.tr()} ${etMinCostTotal.toString().replaceAll(regex, '')}',
//           ),
//         );
//       }
//       listExpensesCards[event.indexCard].price = roundingToHundredths(
//         (positive ? valueFromEvent : (-1 * valueFromEvent.abs())).toString(),
//       ).replaceAll(regex, '');

//       costPerUnit = listExpensesCards[event.indexCard].price.isNotEmpty
//           ? double.parse(listExpensesCards[event.indexCard].price)
//           : 0.0;

//       amountOfExpensesList.forEach((key, value) {
//         final double amountExpense =
//             double.parse(value.isNotEmpty ? value : '0');
//         if (amountExpense != 0) {
//           bedrag
//             ..addAll(
//               {
//                 key: (amountExpense * costPerUnit)
//                     .toString()
//                     .replaceAll(regex, '')
//               },
//             );
//         } else {
//           bedrag
//             ..addAll(
//               {key: '0'},
//             );
//         }
//       });
//     }

//     if (event.dataType == 'amount') {
//       _amount(
//         cpcExpenseTypeConf.first,
//         valueFromEvent,
//         event.indexWeek,
//         event.indexCard,
//         totalAmount,
//       );
//     }

//     if (event.cpcExpenseTypeConfigId.isEmpty &&
//         event.dataType == 'cpcExpenseType') {
//       listExpensesCards[event.indexCard].price = '';
//       amountOfExpensesList = {};
//       listDaysNotBlockedCardExpenses = [];
//     }

//     listExpensesCards[event.indexCard] = ExpensesCardDataModel(
//       cardType: listExpensesCards[event.indexCard].cardType,
//       projectItem: event.projectId.isNotEmpty
//           ? projectItem.first.name
//           : listExpensesCards[event.indexCard].projectItem,
//       projectId: event.projectId.isNotEmpty
//           ? projectItem.first.id
//           : listExpensesCards[event.indexCard].projectId,
//       positive:
//           positive ? positive : listExpensesCards[event.indexCard].positive,
//       cpcExpenseTypeConfigId: event.dataType == 'cpcExpenseType'
//           ? event.cpcExpenseTypeConfigId.isNotEmpty
//               ? cpcExpenseTypeConf.first.id
//               : ''
//           : listExpensesCards[event.indexCard].cpcExpenseTypeConfigId,
//       cpcExpenseTypeConfigItem: event.dataType == 'cpcExpenseType'
//           ? event.cpcExpenseTypeConfigId.isNotEmpty
//               ? cpcExpenseTypeConf.first.nameForEmployee
//               : ''
//           : listExpensesCards[event.indexCard].cpcExpenseTypeConfigItem,
//       sfWithdrawalRemainder:
//           listExpensesCards[event.indexCard].sfWithdrawalRemainder,
//       price: listExpensesCards[event.indexCard].price,
//       isPrice: event.cpcExpenseTypeConfigId == ''
//           ? listExpensesCards[event.indexCard].isPrice
//           : isPrice,
//       projects: projects,
//       cpcExpenseType: cpcExpenseType,
//       explanation: event.dataType != 'explanation'
//           ? event.cpcExpenseTypeConfigId.isNotEmpty &&
//                   listExpensesCards[event.indexCard].explanation.isEmpty
//               ? cpcExpenseTypeConf.first.name
//               : listExpensesCards[event.indexCard].explanation
//           : event.explanation,
//       amountOfExpensesList: amountOfExpensesList,
//       listDaysNotBlockedCardExpenses: listDaysNotBlockedCardExpenses,
//       numberExpenses: listExpensesCards[event.indexCard].numberExpenses,
//       blockCard: false,
//       bedrag: bedrag,
//       routeFrom: '',
//       routeTo: '',
//     );

//     if (event.dataType == 'amount') {
//       editExpense(event.indexCard, event.indexWeek);
//     } else {
//       for (int index = 0; index < 7; index++) {
//         editExpense(event.indexCard, index);
//       }
//     }

//     emit(
//       const TimesheetState.update(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         startDateTimesheet: timesheetStartDate,
//         listExpensesCards: listExpensesCards,
//         listReservationCards: listReservationCards,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _updateReservationCard(
//     TimesheetUpdateReservationCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     reservationType = [];
//     if (listReservationCards[event.indexCard].reservationKey.isNotEmpty ||
//         event.reservationKey.isNotEmpty) {
//       if (event.indexWeek.isNegative) {
//         showRowReservation[event.reservationKey] = true;

//         listReservationCards[event.indexCard] = ReservationCardDataModel(
//           cardType: 'Reservation',
//           reservationType: reservationType,
//           reservationKey: event.reservationKey,
//           available: vmTotalReserveringDisplayed[
//               key2nonUsedValuesMap[event.reservationKey]?[0] ?? ''],
//           availableBalance: event.reservationKey != 'VG'
//               ? vmTotalReserveringDisplayed[
//                   key2nonUsedValuesMap[event.reservationKey]?[1] ?? '']
//               : '',
//           reservationItem: key2ValuesMap[event.reservationKey] ?? '',
//           amountOfReservationList: amountOfReservation(
//             vmMapReserveigenDay[key2Map[event.reservationKey]] ?? [],
//           ),
//           isAutoModeReservation:
//               vmIsAutoModeReservation[event.reservationKey] ?? false,
//           isWdc: event.reservationKey == 'WDC',
//           isCardBlocked: listReservationCards[event.indexCard].isCardBlocked,
//         );
//       } else {
//         listReservationCards = [];

//         vmMapReserveigenDay[key2Map[event.reservationKey]]?[event.indexWeek] =
//             event.value;

//         handleBlurHoursReservationNormal(
//           'mapReserveigenDay][${key2Map[event.reservationKey]}][${event.indexWeek}]'
//           '[${key2nonUsedValuesMap[event.reservationKey]?[event.reservationKey != 'VG' ? 1 : 0]}',
//         );

//         showRowReservation.forEach((key, value) {
//           if (value) {
//             listReservationCards.add(
//               ReservationCardDataModel(
//                 cardType: 'Reservation',
//                 reservationType: reservationType,
//                 reservationKey: key,
//                 available: vmTotalReserveringDisplayed[
//                     key2nonUsedValuesMap[key]?[0] ?? ''],
//                 availableBalance: key != 'VG'
//                     ? vmTotalReserveringDisplayed[
//                         key2nonUsedValuesMap[key]?[1] ?? '']
//                     : '',
//                 reservationItem: key2ValuesMap[key] ?? '',
//                 amountOfReservationList: amountOfReservation(
//                   vmMapReserveigenDay[key2Map[key]] ?? [],
//                 ),
//                 isAutoModeReservation: vmIsAutoModeReservation[key] ?? false,
//                 isWdc: key == 'WDC',
//                 isCardBlocked: isEditableTimesheet,
//               ),
//             );
//           }
//         });
//       }
//     } else {
//       emit(
//         TimesheetState.hoursError(
//           hoursError:
//               'registration_timesheets_screen.is_not_select_type_reserv'.tr(),
//         ),
//       );
//     }

//     emit(
//       const TimesheetState.update(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         startDateTimesheet: timesheetStartDate,
//         listReservationCards: listReservationCards,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _updateHoursCard(
//     TimesheetUpdateHoursCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     ProjectsDataModel? projectItem;

//     TarifsDataModel? tarif;
//     double maxUsagePerDay = 0.0;
//     double maxUsagePerWeek = 0.0;

//     final List<ProjectInfoDataModel> listInfoProject = [];
//     List<int> daysNotBlocked = [];
//     bool limit = false;
//     bool dayIsNotBlocked(int indexWeek) {
//       return daysNotBlocked.firstWhere(
//             (element) => element == indexWeek,
//             orElse: () => -1,
//           ) !=
//           -1;
//     }

//     listHoursCards[event.indexCard].amountOfHoursList[event.indexWeek] =
//         event.time;

//     if (event.projectId.isNotEmpty) {
//       projectItem = timesheetsInfo.projects
//           .where((element) => element.id == event.projectId)
//           .first;
//     }

//     if (listHoursCards[event.indexCard].tarifId.isNotEmpty ||
//         event.hourId.isNotEmpty) {
//       tarif = timesheetsInfo.tarifs
//           .where(
//             (item) => event.hourId.isNotEmpty
//                 ? item.id == event.hourId
//                 : item.id == listHoursCards[event.indexCard].tarifId,
//           )
//           .first;
//       maxUsagePerDay = tarif.maxUsagePerDay.isNotEmpty
//           ? double.parse(tarif.maxUsagePerDay)
//           : 24;
//       maxUsagePerWeek = tarif.maxUsagePerWeek.isNotEmpty
//           ? double.parse(tarif.maxUsagePerWeek)
//           : maxUsagePerDay * 7;
//     }
//     final double timeDay =
//         double.parse(event.time.isNotEmpty ? event.time : '0.0');

//     daysNotBlocked = (event.hourId.isNotEmpty ||
//             listHoursCards[event.indexCard].tarifId.isNotEmpty &&
//                 event.projectId.isEmpty)
//         ? getDaysNotBlocked(
//             event.indexCard,
//             tarif,
//             listDaysNotBlocked,
//             emit,
//           )
//         : listDaysNotBlocked;

//     for (int i = 0; i < 7; i++) {
//       //clearing filled cells if they have become blocked

//       final itemDate = timesheetStartDate.add(Duration(days: i));

//       if (!dayIsNotBlocked(i)) {
//         listHoursCards[event.indexCard].amountOfHoursList.remove(
//               itemDate.weekday - 1,
//             );
//       }
//     }

//     if (event.indexWeek == 0 && timeDay > 24) {
//       //filling cells when entering on monday
//       if (timeDay == 38 &&
//           maxUsagePerWeek >= 38 &&
//           timesheetsInfo.agency.first.tigrisSeparating38hoursIntoEqualPartsC ==
//               false) {
//         //filling cells when entering on Monday 38 hours
//         for (int i = 0; i < 5; i++) {
//           final timeDayItem = i != 4 ? 8.0 : 6.0;

//           limit = true;
//           cellEditingByTariff(
//             event,
//             emit,
//             i,
//             timeDayItem,
//             maxUsagePerWeek,
//             maxUsagePerDay,
//             true,
//           );
//         }
//       } else if (24 < timeDay) {
//         limit = true;
//         final timeDayItem = timeDay / 5;
//         if (listHoursCards[event.indexCard].tarifId.isNotEmpty ||
//             event.hourId.isNotEmpty) {
//           tarif = timesheetsInfo.tarifs
//               .where(
//                 (item) => event.hourId.isNotEmpty
//                     ? item.id == event.hourId
//                     : item.id == listHoursCards[event.indexCard].tarifId,
//               )
//               .first;
//           maxUsagePerDay = tarif.maxUsagePerDay.isNotEmpty
//               ? double.parse(tarif.maxUsagePerDay)
//               : 24;
//           maxUsagePerWeek = tarif.maxUsagePerWeek.isNotEmpty
//               ? double.parse(tarif.maxUsagePerWeek)
//               : maxUsagePerDay * 5;
//           if (tarif.maxUsagePerWeek.isNotEmpty) {
//             maxUsagePerDay = maxUsagePerWeek / 5;
//           }
//         }

//         for (int i = 0; i < 5; i++) {
//           cellEditingByTariff(
//             event,
//             emit,
//             i,
//             timeDayItem,
//             maxUsagePerWeek,
//             maxUsagePerDay,
//             true,
//           );
//         }
//         if (maxUsagePerWeek < timeDay) {
//           emit(
//             TimesheetState.hoursError(
//               hoursError:
//                   '${'registration_timesheets_screen.message_info2'.tr()}'
//                   '${maxUsagePerWeek.toStringAsFixed(2).replaceAll(regex, '').replaceAll(regex, '')}${'hours'.tr()[0].toLowerCase()}.',
//             ),
//           );
//         }
//       }
//     } else if (listHoursCards[event.indexCard].tarifId.isNotEmpty ||
//         event.hourId.isNotEmpty) {
//       if (event.hourId.isNotEmpty) {
//         limit = true;
//         listHoursCards[event.indexCard].amountOfHoursList.forEach((key, value) {
//           if (key != -1) {
//             cellEditingByTariff(
//               event,
//               emit,
//               key,
//               value.isNotEmpty ? double.parse(value) : 0,
//               maxUsagePerWeek,
//               maxUsagePerDay,
//               true,
//             );
//           }
//         });
//       } else {
//         limit = true;
//         cellEditingByTariff(
//           event,
//           emit,
//           event.indexWeek,
//           timeDay,
//           maxUsagePerWeek,
//           maxUsagePerDay,
//           false,
//         );
//       }
//     }

//     listHoursCards[event.indexCard] = HoursCardDataModel(
//       cardType: listHoursCards[event.indexCard].cardType,
//       projectItem: event.projectId.isNotEmpty
//           ? projectItem?.name ?? ''
//           : 'registration_timesheets_screen.project_not_selected'.tr(),
//       projectId: event.projectId.isNotEmpty ? projectItem?.id ?? '' : '',
//       tarifId: daysNotBlocked.isEmpty
//           ? ''
//           : event.hourId.isNotEmpty
//               ? tarif?.id ?? ''
//               : listHoursCards[event.indexCard].tarifId,
//       hourItem: daysNotBlocked.isEmpty
//           ? 'registration_timesheets_screen.hour_type_not_selected'.tr()
//           : event.hourId.isNotEmpty
//               ? tarif?.nameTariffLineForce ?? ''
//               : listHoursCards[event.indexCard].hourItem,
//       unraveling: listHoursCards[event.indexCard].unraveling,
//       projects: listHoursCards[event.indexCard].projects,
//       hoursType: listHoursCards[event.indexCard].hoursType,
//       timeWeek: listHoursCards[event.indexCard].timeWeek,
//       listDaysNotBlockedCardHours: daysNotBlocked,
//       amountOfHoursList: event.hourId.isNotEmpty ||
//               event.projectId.isNotEmpty ||
//               limit
//           ? listHoursCards[event.indexCard].amountOfHoursList
//           : (event.time.isNotEmpty
//               ? (listHoursCards[event.indexCard].amountOfHoursList
//                 ..addAll({event.indexWeek: _roundingToHundredths(event.time)}))
//               : event.indexWeek.isNegative
//                   ? listHoursCards[event.indexCard].amountOfHoursList
//                   : (listHoursCards[event.indexCard].amountOfHoursList
//                     ..update(
//                       event.indexWeek,
//                       (value) => _roundingToHundredths(event.time),
//                     ))),
//     );

//     final listInfoProjects = getListInfoProjects(listHoursCards);

//     final listProjectsId =
//         listInfoProjects.map((item) => item.projectId).toSet().toList();

//     for (int i = 0; i < listProjectsId.length; i++) {
//       final projectsInfoList = listInfoProjects
//           .where((element) => element.projectId == listProjectsId[i]);

//       final hours =
//           projectsInfoList.map((item) => double.parse(item.hours)).toList();
//       final costs =
//           projectsInfoList.map((item) => double.parse(item.costs)).toList();

//       listInfoProject.add(
//         ProjectInfoDataModel(
//           projectId: projectsInfoList.first.projectId,
//           projectItem: projectsInfoList.first.projectItem,
//           hours: hours
//               .reduce((a, b) => a + b)
//               .toStringAsFixed(2)
//               .replaceAll(regex, '')
//               .replaceAll(regex, ''),
//           costs: costs
//               .reduce((a, b) => a + b)
//               .toStringAsFixed(2)
//               .replaceAll(regex, '')
//               .replaceAll(regex, ''),
//         ),
//       );
//     }

//     for (int i = 0; i < listInfoProject.length; i++) {
//       if (listInfoProject[i].hours == '0') {
//         listInfoProject.remove(listInfoProject[i]);
//       }
//     }

//     listProjectsInfo = listInfoProject;

//     if (listProjectsInfo.isNotEmpty) {
//       totalCosts = listProjectsInfo
//           .map((item) => double.parse(item.costs))
//           .reduce((a, b) => a + b)
//           .toStringAsFixed(2)
//           .replaceAll(regex, '')
//           .replaceAll(regex, '');

//       totalHours = listProjectsInfo
//           .map((item) => double.parse(item.hours))
//           .reduce((a, b) => a + b)
//           .toStringAsFixed(2)
//           .replaceAll(regex, '')
//           .replaceAll(regex, '');
//     } else {
//       totalCosts = '0';
//       totalHours = '0';
//     }

//     emit(
//       const TimesheetState.update(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         startDateTimesheet: timesheetStartDate,
//         listReservationCards: listReservationCards,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _updateStartStopCard(
//     TimesheetUpdateStartStopCardEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     int groupedByDateIndex = 0;

//     final listTime = (vmHoursForTimeBasedTimesheets[event.indexWeek]
//             ['groupedByDate'] as List<dynamic>)
//         .whereIndexed(
//       (index, element) {
//         element['project'] == event.projectId &&
//                 (element['startTime'] ==
//                         (event.startTime != DateTime(0)
//                             ? event.startTime
//                             : DateTime(0)) ||
//                     element['endTime'] ==
//                         (event.endTime != DateTime(0)
//                             ? event.endTime
//                             : DateTime(0)))
//             ? groupedByDateIndex = index
//             : groupedByDateIndex = groupedByDateIndex;
//         return element['project'] == event.projectId;
//       },
//     ).toList();

//     if (event.status == 'update_time') {
//       if (listTime.isNotEmpty ||
//           vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//                   [groupedByDateIndex]['startTime'] ==
//               null ||
//           vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//                   [groupedByDateIndex]['endTime'] ==
//               null) {
//         vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//             [groupedByDateIndex] = {
//           'numberHour': vmHoursForTimeBasedTimesheets[event.indexWeek]
//               ['groupedByDate'][groupedByDateIndex]['numberHour'],
//           'date': vmHoursForTimeBasedTimesheets[event.indexWeek]
//               ['groupedByDate'][groupedByDateIndex]['date'],
//           'startTime':
//               event.startTime != DateTime(0) ? event.startTime : DateTime(0),
//           'startTimeMS': vmHoursForTimeBasedTimesheets[event.indexWeek]
//               ['groupedByDate'][groupedByDateIndex]['startTimeMS'],
//           'endTime': event.endTime != DateTime(0) ? event.endTime : DateTime(0),
//           'endTimeMS': vmHoursForTimeBasedTimesheets[event.indexWeek]
//               ['groupedByDate'][groupedByDateIndex]['endTimeMS'],
//           'project': event.projectId,
//           'rests': <dynamic>[],
//           'unraveling': event.unravelingId,
//           'workedHour': vmHoursForTimeBasedTimesheets[event.indexWeek]
//               ['groupedByDate'][groupedByDateIndex]['workedHour']
//         };
//       } else {
//         (vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//                 as List<dynamic>)
//             .add({
//           'numberHour': 0,
//           'date': vmHoursForTimeBasedTimesheets[event.indexWeek]
//               ['groupedByDate'][groupedByDateIndex]['date'],
//           'startTime':
//               event.startTime != DateTime(0) ? event.startTime : DateTime(0),
//           'startTimeMS': vmHoursForTimeBasedTimesheets[event.indexWeek]
//               ['groupedByDate'][groupedByDateIndex]['startTimeMS'],
//           'endTime': event.endTime != DateTime(0) ? event.endTime : DateTime(0),
//           'endTimeMS': vmHoursForTimeBasedTimesheets[event.indexWeek]
//               ['groupedByDate'][groupedByDateIndex]['endTimeMS'],
//           'project': event.projectId,
//           'rests': <dynamic>[],
//           'unraveling': 'default',
//           'workedHour': 0
//         });
//       }
//       validateTime(event.indexWeek, groupedByDateIndex, emit);
//     } else if (event.status == 'add_break') {
//       (vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//               [groupedByDateIndex]['rests'] as List<dynamic>)
//           .add({
//         'restEndMS': 0,
//         'restEnd': DateTime(1970),
//         'restStartMS': 0,
//         'restStart': DateTime(1970),
//       });
//     } else if (event.status == 'delete_break') {
//       (vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//               [groupedByDateIndex]['rests'] as List<dynamic>)
//           .removeAt(event.indexRests);
//     } else if (event.status == 'update_break_time') {
//       (vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//                       [groupedByDateIndex]['rests']
//                   as List<dynamic>)[event.indexRests]
//               .toString()
//               .isNotEmpty
//           ? (vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//                   [groupedByDateIndex]['rests']
//               as List<dynamic>)[event.indexRests] = {
//               'restEndMS': (vmHoursForTimeBasedTimesheets[event.indexWeek]
//                       ['groupedByDate'][groupedByDateIndex]['rests']
//                   as List<dynamic>)[event.indexRests]['restEndMS'],
//               'restEnd': event.endTimeBreak != DateTime(0)
//                   ? event.endTimeBreak
//                   : DateTime(1970),
//               'restStartMS': (vmHoursForTimeBasedTimesheets[event.indexWeek]
//                       ['groupedByDate'][groupedByDateIndex]['rests']
//                   as List<dynamic>)[event.indexRests]['restStartMS'],
//               'restStart': event.startTimeBreak != DateTime(0)
//                   ? event.startTimeBreak
//                   : DateTime(1970),
//             }
//           : (vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//                   [groupedByDateIndex]['rests'] as List<dynamic>)
//               .add({
//               'restEndMS': (vmHoursForTimeBasedTimesheets[event.indexWeek]
//                       ['groupedByDate'][groupedByDateIndex]['rests']
//                   as List<dynamic>)[event.indexRests]['restEndMS'],
//               'restEnd': event.endTimeBreak != DateTime(0)
//                   ? event.endTimeBreak
//                   : DateTime(1970),
//               'restStartMS': (vmHoursForTimeBasedTimesheets[event.indexWeek]
//                       ['groupedByDate'][groupedByDateIndex]['rests']
//                   as List<dynamic>)[event.indexRests]['restStartMS'],
//               'restStart': event.startTimeBreak != DateTime(0)
//                   ? event.startTimeBreak
//                   : DateTime(1970),
//             });
//       vmPopulateRestTime(
//         event.indexWeek,
//         groupedByDateIndex,
//         event.indexRests,
//         emit,
//       );
//     } else if (event.status == 'update_project') {
//       listStartStopCard[event.indexCard] = StartStopCardDataModel(
//         cardType: 'StartStop',
//         projectName: projectName(event.projectId),
//         isEditableTimesheet: isEditableTimesheet,
//         projectId: event.projectId,
//         unravelingId: listStartStopCard[event.indexCard].unravelingId,
//         unravelingName: listStartStopCard[event.indexCard].unravelingName,
//         listStartStopTime: updateStartStopProject(
//           listStartStopCard[event.indexCard].listStartStopTime,
//           event.projectId,
//         ),
//       );
//       vmHoursForTimeBasedTimesheets = [];
//       recalculateHoursForTimeBasedTimesheets(listStartStopCard);
//     } else if (event.status == 'update_unraveling') {
//       listStartStopCard[event.indexCard] = StartStopCardDataModel(
//         cardType: 'StartStop',
//         projectName: listStartStopCard[event.indexCard].projectName,
//         isEditableTimesheet: isEditableTimesheet,
//         projectId: listStartStopCard[event.indexCard].projectId,
//         unravelingId: listStartStopCard[event.indexCard].unravelingId,
//         unravelingName: listStartStopCard[event.indexCard].unravelingName,
//         listStartStopTime: updateStartStopUnraveling(
//           listStartStopCard[event.indexCard].listStartStopTime,
//           event.unravelingId,
//         ),
//       );
//       vmHoursForTimeBasedTimesheets = [];
//       recalculateHoursForTimeBasedTimesheets(listStartStopCard);
//     }

//     listStartStopCard = [];
//     listStartStop = {};

//     (vmHoursForTimeBasedTimesheets[event.indexWeek]['groupedByDate']
//             as List<dynamic>)
//         .removeWhere(
//       (element) => element['startTimeMS'] == 0 && element['endTimeMS'] == 0,
//     );

//     for (int i = 0; i < vmHoursForTimeBasedTimesheets.length; i++) {
//       groupedByDate(i);
//     }

//     listStartStop.removeWhere((key, value) => value.listStartStopTime.isEmpty);

//     listStartStopCard = listStartStop.values.toList();

//     emit(
//       const TimesheetState.update(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         startDateTimesheet: timesheetStartDate,
//         listReservationCards: listReservationCards,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _initTimesheets(
//     InitTimesheetEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     final result = await _homeRepository.getJobCompanies();

//     jobCompanies = result.jobCompanies ?? [];
//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         listReservationCards: listReservationCards,
//         startDateTimesheet: timesheetStartDate,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _getTimesheet(
//     GetTimesheetEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     final timesheetInit = TimesheetState.init(
//       jobCompanies: jobCompanies,
//       listHoursCards: listHoursCards,
//       listProjectsInfo: listProjectsInfo,
//       totalHours: totalHours,
//       totalCosts: totalCosts,
//       listDaysNotBlocked: listDaysNotBlocked,
//       listTimesheets: listTimesheets,
//       hideSend: hideSend,
//       isApprovalInfo: isApprovalInfo,
//       listExpensesCards: listExpensesCards,
//       listReservationCards: listReservationCards,
//       startDateTimesheet: timesheetStartDate,
//       isEditableTimesheet: true,
//       isReservationAdd: isReservationAdd(),
//       placementStartDate: placementStartDate,
//       placementEndDate: placementEndDate,
//       listStartStopCard: listStartStopCard,
//       projects: projects,
//       isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//       isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//       unravelingTypes: unravelingTypes,
//       isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//       googleApiKey: googleApiKey,
//     );

//     emit(
//       const TimesheetState.loading(),
//     );

//     emit(
//       timesheetInit,
//     );
//     final result = await _timesheetRepository.postSfServiceCreateTimesheet(
//       event.company.agencyId,
//       event.company.sfRecordId,
//     );

//     if (result.code == 200 && result.message.isEmpty) {
//       emit(
//         TimesheetState.getTimesheet(
//           timesheetid: result.result.isTimesheetExist ?? '',
//           company: event.company,
//         ),
//       );
//       emit(
//         timesheetInit,
//       );
//     } else {
//       emit(
//         TimesheetState.timesheetError(
//           error: result.message,
//         ),
//       );
//       emit(
//         timesheetInit,
//       );
//     }
//   }

//   Future<void> _uploadTimesheets(
//     UploadTimesheetEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     listExpensesCards.clear();
//     listHoursCards.clear();
//     await Future.delayed(const Duration(milliseconds: 100), () {
//       emit(
//         const TimesheetState.loading(),
//       );
//     });
//     toDeleteExpenses.clear();
//     listTimesheets = [];
//     listHoursCards = [];
//     listProjectsInfo = [];
//     projects = [
//       {
//         '': 'registration_timesheets_screen.project_not_selected'.tr(),
//       }
//     ];

//     listDaysNotBlocked = [];
//     listExpensesCards = [];
//     listReservationCards = [];
//     reservationType = [];
//     cpcExpenseType = [
//       {
//         '': 'Costs not selected',
//       }
//     ];
//     totalHours = '0';
//     totalCosts = '0';
//     hideSend = true;
//     isEditableTimesheet = false;
//     final timeNow = DateTime.now();
//     final listtarifs = <TarifDataModel>[];
//     final listProjects = <HoursProjectDataModel>[];
//     final List<ProjectInfoDataModel> listInfoProject = [];
//     unravelingTypes = [];
//     showRowReservation = {};
//     listStartStop = {};

//     final listDaysNotBlockedCard = [0, 1, 2, 3, 4, 5, 6];
//     timesheetHoursType.clear();

//     timesheetsInfo = await _timesheetRepository.getTimesheetsInfo(
//       event.timesheetid,
//       event.placementId,
//     );

//     // Hours start

//     final List<HoursDataModel> hours = timesheetsInfo.hours;

//     timesheetStartDate = DateTime.parse(
//       timesheetsInfo.timesheet.startDate.isNotEmpty
//           ? timesheetsInfo.timesheet.startDate
//           : '2000-12-31',
//     );
//     timesheetEndDate = DateTime.parse(
//       timesheetsInfo.timesheet.endDate.isNotEmpty
//           ? timesheetsInfo.timesheet.endDate
//           : '2100-12-31',
//     );
//     placementStartDate = DateTime.parse(
//       timesheetsInfo.uitzending.startDate.isNotEmpty
//           ? timesheetsInfo.uitzending.startDate
//           : '2000-12-31',
//     );
//     placementEndDate = DateTime.parse(
//       timesheetsInfo.uitzending.endDate.isNotEmpty
//           ? timesheetsInfo.uitzending.endDate
//           : '2100-12-31',
//     );

//     timesheetsInfo.tarifs.forEach((element) {
//       if (element.isActive != false) {
//         if (element.name == 'Pauze uren') {
//         } else if (element.visibilityOnAppFor == 'employee' ||
//             element.visibilityOnAppFor == 'client_and_employee') {
//           timesheetHoursType.add({element.id: element.nameTariffLineForce});
//         } else if (element.visibilityOnAppFor.isEmpty) {
//           if (element.visibilityOnApp) {
//             timesheetHoursType.add({element.id: element.nameTariffLineForce});
//           }
//         } else {
//           timesheetHoursType.add({'': element.nameTariffLineForce});
//         }
//       }
//     });

//     if (timesheetsInfo.timesheet.status == 'Nieuw' ||
//         timesheetsInfo.timesheet.status == 'Terugdraaien' ||
//         timesheetsInfo.timesheet.status == 'Wacht op goedkeuring' ||
//         timesheetsInfo.timesheet.status == 'Corrected' ||
//         timesheetsInfo.timesheet.status == 'Goedgekeurd' ||
//         ((DateTime.parse(timesheetsInfo.timesheet.startDate)
//                     .compareTo(timeNow) >=
//                 0) &&
//             ((timesheetsInfo.agency.isNotEmpty
//                     ? timesheetsInfo.agency.first.tigrisFutureApproveTimesheetC
//                     : false) ==
//                 false))) {
//       hideSend = false;
//     }

//     final tarifsid = hours.map((item) => item.tarifId).toSet().toList();

//     for (int i = 0; i < tarifsid.length; i++) {
//       listtarifs.add(
//         TarifDataModel(
//           cardType: hours.first.cardType,
//           tarifId: tarifsid[i],
//           hours: hours.where((item) => item.tarifId == tarifsid[i]).toList(),
//         ),
//       );
//     }

//     final hoursProjectsId =
//         hours.map((item) => item.projectId).toSet().toList();

//     for (int i = 0; i < listtarifs.length; i++) {
//       for (int j = 0; j < hoursProjectsId.length; j++) {
//         if (listtarifs[i]
//             .hours
//             .where((item) => item.projectId == hoursProjectsId[j])
//             .toList()
//             .isNotEmpty) {
//           listProjects.add(
//             HoursProjectDataModel(
//               cardType: listtarifs[i].cardType,
//               tarifId: listtarifs[i].tarifId,
//               hoursProjectsId: hoursProjectsId[j],
//               hours: listtarifs[i]
//                   .hours
//                   .where((item) => item.projectId == hoursProjectsId[j])
//                   .toList(),
//             ),
//           );
//         }
//       }
//     }

//     final listCardsHours = <HoursCardDataModel>[];

//     final listUnraveling =
//         hours.map((item) => item.unraveling).toSet().toList();

//     timesheetsInfo.projects.forEach((element) {
//       projects.add({element.id: element.name});
//     });

//     getActiveDays(emit);
//     getCurrentTariffs(timesheetHoursType, timesheetStartDate, timesheetEndDate);

//     for (int i = 0; i < listProjects.length; i++) {
//       for (int j = 0; j < listUnraveling.length; j++) {
//         if (listProjects[i]
//             .hours
//             .where((item) => item.unraveling == listUnraveling[j])
//             .toList()
//             .isNotEmpty) {
//           final amountOfHoursList = <int, String>{};
//           final timeWeek = listProjects[i]
//               .hours
//               .where((item) => item.unraveling == listUnraveling[j])
//               .map((element) => element)
//               .toList();

//           timeWeek.forEach((element) {
//             amountOfHoursList.addAll({
//               DateTime.parse(
//                     element.date,
//                   ).weekday -
//                   1: element.amountOfHours.toString().replaceAll(regex, '')
//             });
//           });

//           amountOfHoursList.removeWhere(
//             (key, value) => listDaysNotBlocked.contains(key) == false,
//           );

//           final int tigrisClosedYearC =
//               timesheetsInfo.agency.first.tigrisClosedYearC ?? 0;

//           final timesheetStatus = timesheetsInfo.timesheet.status;

//           final disableEditingTimesheets =
//               timesheetsInfo.uitzending.disableEditingTimesheets;

//           final employeeDisableEditingTimesheets =
//               timesheetsInfo.uitzending.employeeIDAlldisableTimesheetsEdition;

//           if ((disableEditingTimesheets != 'null' &&
//                   disableEditingTimesheets == 'All') ||
//               disableEditingTimesheets == 'Employee' ||
//               timesheetStatus == 'Terugdraaien' ||
//               timesheetStatus == 'Wacht op goedkeuring' ||
//               timesheetStatus == 'Corrected' ||
//               timesheetStatus == 'Goedgekeurd' ||
//               timesheetStartDate.year <= tigrisClosedYearC) {
//             isEditableTimesheet = true;
//           } else if (disableEditingTimesheets == 'null') {
//             if (employeeDisableEditingTimesheets) {
//               isEditableTimesheet = true;
//             }
//           }

//           listCardsHours.add(
//             HoursCardDataModel(
//               cardType: listProjects[i].cardType,
//               projectItem: listProjects[i].hoursProjectsId == ''
//                   ? 'registration_timesheets_screen.project_not_selected'.tr()
//                   : timesheetsInfo.projects
//                       .firstWhere(
//                         (item) => item.id == listProjects[i].hoursProjectsId,
//                       )
//                       .name,
//               projectId: listProjects[i].hoursProjectsId,
//               tarifId: listProjects[i].tarifId,
//               hourItem: timesheetsInfo.tarifs
//                   .firstWhere(
//                     (item) => item.id == listProjects[i].tarifId,
//                   )
//                   .name,
//               unraveling: timeWeek.first.unraveling ||
//                   isEditableTimesheet ||
//                   timesheetsInfo.uitzending.typeHourRegistrationVia ==
//                       'Only by input of start/stop times',
//               projects: projects,
//               hoursType: timesheetHoursType,
//               timeWeek: timeWeek,
//               listDaysNotBlockedCardHours: listDaysNotBlockedCard,
//               amountOfHoursList: amountOfHoursList,
//             ),
//           );
//         }
//       }
//     }

//     // Hours end

//     // Expenses start

//     timesheetsInfo.cpcExpenseTypeConf.forEach((element) {
//       if (element.visibilityForEmployee != 'Hide') {
//         cpcExpenseType.add({element.id: element.nameForEmployee});
//       }
//     });

//     final List<ExpenseDataModel> expenses = timesheetsInfo.expenses;
//     final Map<String, ExpensesCardDataModel> listExpenses = {};

//     final expenseList = expenses
//         .where(
//           (element) => cpcExpenseType.any(
//             (item) =>
//                 item.keys.single == element.cpcExpenseTypeConfigId &&
//                 element.cpcExpenseTypeConfigId.isNotEmpty,
//           ),
//         )
//         .toList();

//     List<CpcExpenseTypeConfDataModel> cpcExpenseTypeConfigItem(
//       String expenseTypeId,
//     ) {
//       final cpcExpenseType = timesheetsInfo.cpcExpenseTypeConf
//           .where((element) => element.id == expenseTypeId)
//           .toList();
//       if (cpcExpenseType.isNotEmpty) {
//         return cpcExpenseType;
//       } else {
//         return [];
//       }
//     }

//     bool isPriceExpense(String amountCostPerUnit, String allocation) {
//       if (amountCostPerUnit.isNotEmpty ||
//           (allocation.isNotEmpty &&
//               allocation != 'Per Unit' &&
//               allocation != 'Value')) {
//         return true;
//       } else {
//         return false;
//       }
//     }

//     for (int i = 0; i < expenseList.length; i++) {
//       final key = expenseList[i].projectId +
//           expenseList[i].cpcExpenseTypeConfigId +
//           expenseList[i].explanation;
//       final Map<int, String> bedrag = listExpenses[key]?.bedrag ??
//           {0: '0', 1: '0', 2: '0', 3: '0', 4: '0', 5: '0', 6: '0'};
//       final Map<int, String> amountOfExpensesList =
//           listExpenses[key]?.amountOfExpensesList ??
//               {0: '', 1: '', 2: '', 3: '', 4: '', 5: '', 6: ''};
//       amountOfExpensesList.update(
//         DateTime.parse(
//               expenseList[i].date,
//             ).weekday -
//             1,
//         (value) => expenseList[i]
//             .numberOfUnits
//             .toString()
//             .replaceAll(regex, '')
//             .replaceAll(RegExp('(^0)'), ''),
//       );
//       final indexWeek = DateTime.parse(expenseList[i].date).weekday - 1;
//       bedrag.update(
//         indexWeek,
//         (value) => _roundingToHundredths(
//           expenseList[i].price,
//         ),
//         ifAbsent: () => _roundingToHundredths(
//           expenseList[i].price,
//         ),
//       );

//       if (expenseList[i].cpcExpenseTypeConfigId.isNotEmpty) {
//         if (listExpenses.containsKey(key)) {
//           listExpenses.update(
//             key,
//             (value) => ExpensesCardDataModel(
//               cardType: expenseList[i].cardType,
//               projectItem: expenseList[i].projectId == ''
//                   ? 'registration_timesheets_screen.project_not_selected'.tr()
//                   : timesheetsInfo.projects
//                       .firstWhere(
//                         (item) => item.id == expenseList[i].projectId,
//                       )
//                       .name,
//               projectId: expenseList[i].projectId,
//               positive: listExpenses[key]?.positive ?? false,
//               cpcExpenseTypeConfigId: expenseList[i].cpcExpenseTypeConfigId,
//               cpcExpenseTypeConfigItem:
//                   listExpenses[key]?.cpcExpenseTypeConfigItem ?? '',
//               sfWithdrawalRemainder:
//                   listExpenses[key]?.sfWithdrawalRemainder ?? '',
//               isPrice: listExpenses[key]?.isPrice ?? false,
//               price: listExpenses[key]?.price ?? '',
//               projects: projects,
//               cpcExpenseType: cpcExpenseType,
//               explanation: expenseList[i].explanation,
//               amountOfExpensesList: amountOfExpensesList,
//               listDaysNotBlockedCardExpenses:
//                   listExpenses[key]?.listDaysNotBlockedCardExpenses ?? [],
//               numberExpenses: listExpenses[key]?.numberExpenses ?? []
//                 ..add(expenseList[i]),
//               blockCard: listExpenses[key]?.blockCard ?? false,
//               bedrag: bedrag,
//               routeFrom: '',
//               routeTo: '',
//             ),
//           );
//         } else {
//           final expenseTypeConfig = cpcExpenseTypeConfigItem(
//             expenseList[i].cpcExpenseTypeConfigId,
//           ).first;

//           final isPrice = isPriceExpense(
//             expenseTypeConfig.amountCostPerUnit,
//             expenseTypeConfig.allocation,
//           );
//           listExpenses.addAll({
//             key: ExpensesCardDataModel(
//               cardType: expenseList[i].cardType,
//               projectItem: expenseList[i].projectId == ''
//                   ? 'registration_timesheets_screen.project_not_selected'.tr()
//                   : timesheetsInfo.projects
//                       .firstWhere(
//                         (item) => item.id == expenseList[i].projectId,
//                       )
//                       .name,
//               projectId: expenseList[i].projectId,
//               positive: expenseTypeConfig.positive,
//               cpcExpenseTypeConfigId: expenseList[i].cpcExpenseTypeConfigId,
//               cpcExpenseTypeConfigItem: expenseTypeConfig.nameForEmployee,
//               sfWithdrawalRemainder:
//                   listExpenses[key]?.sfWithdrawalRemainder ?? '',
//               isPrice: isPrice,
//               price: expenseList[i].amountCostPerUnit,
//               projects: projects,
//               cpcExpenseType: cpcExpenseType,
//               explanation: expenseList[i].explanation,
//               amountOfExpensesList: amountOfExpensesList,
//               listDaysNotBlockedCardExpenses:
//                   daysNotBlockedCardExpenses(expenseTypeConfig),
//               numberExpenses: [expenseList[i]],
//               blockCard: expenseTypeConfig.id.isEmpty,
//               bedrag: bedrag,
//               routeFrom: '',
//               routeTo: '',
//             ),
//           });
//         }
//       }
//     }

//     listExpensesCards = listExpenses.values.toList();

//     // Expenses end

//     // Reservation start

//     final totalReservering = timesheetsInfo.totalReservation.toJson();

//     urenAndOnkostenregels = {
//       'urenregels': timesheetsInfo.reservationHours,
//       'onkostenregels': timesheetsInfo.onkostenregels,
//       'wdcOnkostenregel': timesheetsInfo.wdcOnkostenregel,
//     };

//     if (timesheetsInfo.code == 200) {
//       calldoInitReservation(
//         totalReservering,
//         urenAndOnkostenregels,
//         emit,
//       );
//     }

//     checkBlockedReservationsForEmployee();

//     showRow.forEach((key, value) {
//       if (value && isAmountOfHours(vmMapReserveigenDay[key2Map[key]] ?? [])) {
//         showRowReservation[key] = value;
//       }
//     });

//     showRow.forEach((key, value) {
//       if (value && isAmountOfHours(vmMapReserveigenDay[key2Map[key]] ?? [])) {
//         listReservationCards.add(
//           ReservationCardDataModel(
//             cardType: 'Reservation',
//             reservationType: [],
//             reservationKey: key,
//             available: vmTotalReserveringDisplayed[
//                 key2nonUsedValuesMap[key]?[0] ?? ''],
//             availableBalance: vmTotalReserveringDisplayed[
//                 key2nonUsedValuesMap[key]?[1] ?? ''],
//             reservationItem: key2ValuesMap[key] ?? '',
//             amountOfReservationList:
//                 amountOfReservation(vmMapReserveigenDay[key2Map[key]] ?? []),
//             isAutoModeReservation: vmIsAutoModeReservation[key] ?? false,
//             isCardBlocked: isEditableTimesheet,
//             isWdc: key == 'WDC',
//           ),
//         );
//       }
//     });

//     // Reservation end

//     // StartStop

//     vmAllUnravelingRecords = timesheetsInfo.tariffAssignmentRules;
//     List<dynamic> usedUnravelingTypes = [];
//     if (vmAllUnravelingRecords.isNotEmpty) {
//       final startDate = timesheetsInfo.uitzending.id.isNotEmpty &&
//               DateTime.parse(timesheetsInfo.uitzending.startDate)
//                       .millisecondsSinceEpoch >
//                   DateTime.parse(timesheetsInfo.timesheet.startDate)
//                       .millisecondsSinceEpoch
//           ? timesheetsInfo.uitzending.startDate
//           : timesheetsInfo.timesheet.startDate;
//       for (int i = 0; i < vmAllUnravelingRecords.length; i++) {
//         if (DateTime.parse(startDate).millisecondsSinceEpoch >=
//             DateTime.parse(vmAllUnravelingRecords[i].validFrom)
//                 .millisecondsSinceEpoch) {
//           try {
//             usedUnravelingTypes = vmAllUnravelingRecords[i].usedUnravelingTypes;
//           } catch (e) {
//             // Do nothing;
//           }
//           break;
//         }
//       }
//     } else if (timesheetsInfo.uitzending.id.isNotEmpty &&
//         timesheetsInfo
//             .uitzending.tariffPackIdAlUsedUnravelingTypes.isNotEmpty) {
//       usedUnravelingTypes =
//           timesheetsInfo.uitzending.tariffPackIdAlUsedUnravelingTypes;
//     }

//     vmUsedUnravelingTypes = usedUnravelingTypes;
//     vmIisUnravelingTypesInUse = vmUsedUnravelingTypes.length > 1;

//     vmUsedUnravelingTypes.forEach((element) {
//       unravelingTypes.add({element: element});
//     });

//     if (timesheetsInfo.uitzending.id.isNotEmpty) {
//       typeHourRegistrationVia =
//           timesheetsInfo.uitzending.typeHourRegistrationVia.isNotEmpty;
//       vmIsFillByStartStopTimes = !!typeHourRegistrationVia &&
//           timesheetsInfo.uitzending.typeHourRegistrationVia !=
//               'Only by input of hours';
//       vmIsFillInHourDisabled =
//           timesheetsInfo.uitzending.typeHourRegistrationVia ==
//               'Only by input of start/stop times';
//     }

//     timesheetTimeBasedHours = timesheetsInfo.timesheet.timeBasedHours;

//     if (vmIsFillByStartStopTimes &&
//         timesheetsInfo.timesheet.timeBasedHours.isEmpty) {
//       vmGetHoursForTimeBasedTimesheets();
//     } else if (vmIsFillByStartStopTimes &&
//         timesheetsInfo.timesheet.timeBasedHours.isNotEmpty) {
//       // replace Project ids from sf to app

//       for (int i = 0; i < timesheetsInfo.projects.length; i++) {
//         timesheetTimeBasedHours = timesheetTimeBasedHours.replaceAll(
//           timesheetsInfo.projects[i].sfRecordId,
//           timesheetsInfo.projects[i].id,
//         );
//       }
//       vmGetHoursForTimeBasedTimesheetsFromHistory(
//         timesheetStartDate.toString(),
//         timesheetTimeBasedHours,
//         emit,
//       );
//     }

//     for (int i = 0; i < vmHoursForTimeBasedTimesheets.length; i++) {
//       groupedByDate(i);
//     }

//     listStartStop.removeWhere((key, value) => value.listStartStopTime.isEmpty);

//     listStartStopCard = listStartStop.values.toList();

//     // StartStop end

//     final listInfoProjects = getListInfoProjects(listCardsHours);

//     final listProjectsId =
//         listInfoProjects.map((item) => item.projectId).toSet().toList();

//     googleApiKey = timesheetsInfo.agency.first.googlePlacesApiKey ?? '';

//     for (int i = 0; i < listProjectsId.length; i++) {
//       final projectsInfoList = listInfoProjects
//           .where((element) => element.projectId == listProjectsId[i]);

//       final hours =
//           projectsInfoList.map((item) => double.parse(item.hours)).toList();
//       final costs =
//           projectsInfoList.map((item) => double.parse(item.costs)).toList();

//       listInfoProject.add(
//         ProjectInfoDataModel(
//           projectId: projectsInfoList.first.projectId,
//           projectItem: projectsInfoList.first.projectItem,
//           hours: hours
//               .reduce((a, b) => a + b)
//               .toStringAsFixed(2)
//               .replaceAll(regex, '')
//               .replaceAll(regex, ''),
//           costs: costs
//               .reduce((a, b) => a + b)
//               .toStringAsFixed(2)
//               .replaceAll(regex, '')
//               .replaceAll(regex, ''),
//         ),
//       );
//     }

//     listProjectsInfo = listInfoProject;

//     if (listProjectsInfo.isNotEmpty) {
//       totalCosts = listProjectsInfo
//           .map((item) => double.parse(item.costs))
//           .reduce((a, b) => a + b)
//           .toStringAsFixed(2)
//           .replaceAll(regex, '')
//           .replaceAll(regex, '');

//       totalHours = listProjectsInfo
//           .map((item) => double.parse(item.hours))
//           .reduce((a, b) => a + b)
//           .toStringAsFixed(2)
//           .replaceAll(regex, '')
//           .replaceAll(regex, '');
//     }

//     listCardsHours.sort((a, b) {
//       if (a.unraveling) {
//         return 1;
//       }
//       return -1;
//     });

//     isApprovalInfo = timesheetsInfo.approvalInfo.status == 'Pending approval';

//     listHoursCards = listCardsHours;

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         listReservationCards: listReservationCards,
//         startDateTimesheet: timesheetStartDate,
//         isEditableTimesheet: !isEditableTimesheet,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _getTimesheetsForCurrentPeriod(
//     GetTimesheetsForCurrentPeriodEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     String nameIcon = '';
//     final result = await _timesheetRepository.getTimesheetsForCurrentPeriod(
//       event.year,
//       event.month,
//       event.placementId,
//     );

//     result.forEach((element) {
//       final startDateTimesheet = DateTime.parse(
//         element.startDate.isNotEmpty ? element.startDate : '2000-12-31',
//       );
//       if (placementStartDate == startDateTimesheet ||
//           placementEndDate == startDateTimesheet ||
//           placementStartDate.isBefore(startDateTimesheet) ||
//           placementEndDate.isAfter(startDateTimesheet)) {
//         if (element.status == 'Goedgekeurd') {
//           nameIcon = TigrisImages.check;
//           listTimesheets
//               .add({DateService().isoWeekNumber(startDateTimesheet): nameIcon});
//         } else {
//           nameIcon = TigrisImages.hourglass;
//           listTimesheets
//               .add({DateService().isoWeekNumber(startDateTimesheet): nameIcon});
//         }
//       }
//     });

//     emit(
//       const TimesheetState.loadingCalendar(),
//     );

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         listReservationCards: listReservationCards,
//         startDateTimesheet: timesheetStartDate,
//         isEditableTimesheet: true,
//         isReservationAdd: isReservationAdd(),
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   Future<void> _updateTimesheetdata(
//     SaveTimesheetEvent event,
//     Emitter<TimesheetState> emit,
//   ) async {
//     emit(
//       const TimesheetState.loading(),
//     );

//     final timeBasedHours = saveStartStopTimesheet();

//     bool error = false;
//     bool submitToApprove = event.toApprove;
//     final _vmshowRow = vmShowRow;
//     double reservationHours = 0;
//     final Map<String, List<dynamic>> reservatins = {};
//     TimesheetInfoDataModel timesheet = timesheetsInfo.timesheet;
//     vmMapReserveigenDay.forEach((key, value) {
//       if (key == 'vakantId' ||
//           _vmshowRow['VDt'] == false && key == 'vakantDag' ||
//           _vmshowRow['VDt'] == true &&
//               (key == 'vakantBoven' || key == 'vakantWet')) {
//         vmMapReserveigenDay[key]?.forEach((item) {
//           if (!reservatins.containsKey(key)) {
//             reservatins[key] = <dynamic>[];
//           }
//           reservatins[key]?.add(item.isNotEmpty ? double.parse(item) : null);
//         });
//         return;
//       }
//       vmMapReserveigenDay[key]?.forEach((item) {
//         if (!reservatins.containsKey(key)) {
//           reservatins[key] = <dynamic>[];
//         }
//         reservatins[key]?.add(item.isNotEmpty ? double.parse(item) : null);

//         reservationHours =
//             reservationHours + double.parse(item.isNotEmpty ? item : '0');
//       });
//     });

//     final _totalHours = double.parse(totalHours) + reservationHours;

//     if (timesheetsInfo.contracts.isNotEmpty &&
//         timesheetsInfo.contracts[timesheetsInfo.contracts.length - 1].validation
//             .isNotEmpty &&
//         (_totalHours < timesheetsInfo.uitzending.hoursPerWeek)) {
//       if (timesheetsInfo
//               .contracts[timesheetsInfo.contracts.length - 1].validation ==
//           'Block') {
//         submitToApprove = false;
//       }
//       emit(
//         TimesheetState.hoursError(
//           hoursError:
//               '${'registration_timesheets_screen.message_required_hours'.tr()}(${timesheetsInfo.uitzending.hoursPerWeek})',
//         ),
//       );
//       error = true;
//     }

//     if (submitToApprove) {
//       final _employeeId = timesheetsInfo.uitzending.employeeId;
//       final _record = _profileRepository.model.recordsData
//           ?.firstWhere((record) => record.id == _employeeId);
//       final sfRecordId = _record?.sfRecordId ?? '';
//       timesheet = timesheet.copyWith(
//         status: 'Wacht op goedkeuring',
//         submitedById: sfRecordId,
//       );
//     }

//     final finalList = <Map<String, Object>>[];

//     bool isFoundEmpyProject = false;
//     for (int i = 0; i < listHoursCards.length; i++) {
//       if (listHoursCards[i].tarifId.isNotEmpty &&
//           !listHoursCards[i].unraveling) {
//         if (listHoursCards[i].projectId.isEmpty && !isFoundEmpyProject) {
//           isFoundEmpyProject = true;
//           emit(
//             TimesheetState.hoursError(
//               hoursError:
//                   'registration_timesheets_screen.project_required'.tr(),
//             ),
//           );
//         }
//         double _totalAmount = 0;

//         listHoursCards[i].amountOfHoursList.values.forEach((e) {
//           _totalAmount = _totalAmount + double.parse(e.isNotEmpty ? e : '0');
//         });
//         if (_totalAmount == 0) {
//           emit(
//             TimesheetState.hoursError(
//               hoursError: 'registration_timesheets_screen.empty_hours'.tr(),
//             ),
//           );
//           error = true;
//         }

//         double getAmount(int _key) {
//           double result = 0;
//           final value = listHoursCards[i].amountOfHoursList[_key].toString();

//           result = double.parse(value != '' && value != 'null' ? value : '0');

//           return result;
//         }

//         if (listHoursCards[i].tarifId.isNotEmpty) {
//           final tarief = listHoursCards[i].tarifId;
//           final proj = listHoursCards[i].projectId;
//           final monday = getAmount(0);
//           final tuesday = getAmount(1);
//           final wednesday = getAmount(2);
//           final thursday = getAmount(3);
//           final friday = getAmount(4);
//           final saturday = getAmount(5);
//           final sunday = getAmount(6);

//           final item = {
//             'tariefc': tarief,
//             'projc': proj,
//             'mondayc': monday,
//             'tuesdayc': tuesday,
//             'wednesdayc': wednesday,
//             'thursdayc': thursday,
//             'fridayc': friday,
//             'saturdayc': saturday,
//             'sundayc': sunday
//           };

//           finalList.add(item);

//           if (tarief.isEmpty && listHoursCards[i].amountOfHoursList.isEmpty) {
//             emit(
//               TimesheetState.hoursError(
//                 hoursError:
//                     'registration_timesheets_screen.message_info19'.tr(),
//               ),
//             );
//             error = true;
//             return;
//           }
//         }
//       }
//     }
//     bool _isEmptyExpensesTarifs = false;
//     listExpensesCards.forEach((element) {
//       if (element.cpcExpenseTypeConfigId.isEmpty) {
//         _isEmptyExpensesTarifs = true;
//       }
//     });
//     if (_isEmptyExpensesTarifs) {
//       emit(
//         TimesheetState.hoursError(
//           hoursError: 'registration_timesheets_screen.message_info20'.tr(),
//         ),
//       );
//       error = true;
//     }

//     final expenseData = error
//         ? DoSaveExpensesModel(
//             sortedExpensesMap: const ExpensesSortedMapModel(
//               toDelete: [],
//               toInsert: [],
//               toUpdate: [],
//             ),
//             sortedExpensesMapAsJSON: '',
//           )
//         : doSaveExpenses();

//     final parseExpenseData = expenseData.sortedExpensesMap;
//     if (!error) {
//       parseExpenseData.toInsert.forEach((element) {
//         final et = (element.et ?? '').isNotEmpty;
//         final pr = (element.pr ?? '').isNotEmpty;
//         final facturatie = element.facturatie ?? false;
//         if (et) {
//           if (!pr && facturatie && !isFoundEmpyProject) {
//             isFoundEmpyProject = true;
//             emit(
//               TimesheetState.hoursError(
//                 hoursError:
//                     'registration_timesheets_screen.project_required'.tr(),
//               ),
//             );
//           }
//         }
//       });
//       parseExpenseData.toUpdate.forEach((element) {
//         final et = (element.et ?? '').isNotEmpty;
//         final pr = (element.pr ?? '').isNotEmpty;
//         final facturatie = element.facturatie ?? false;
//         if (et) {
//           if (!pr && facturatie && !isFoundEmpyProject) {
//             isFoundEmpyProject = true;
//             emit(
//               TimesheetState.hoursError(
//                 hoursError:
//                     'registration_timesheets_screen.project_required'.tr(),
//               ),
//             );
//           }
//         }
//       });
//     }

//     if (!error) {
//       final saveResult = await _timesheetRepository.postUpdateTimesheetNew(
//         finalList,
//         timesheet,
//         reservatins,
//         listReservationCards.isNotEmpty,
//         expenseData,
//         submitToApprove,
//         timeBasedHours,
//       );
//       toDeleteExpenses.clear();
//       if (saveResult.code == 200) {
//         final isTimesheetExist = saveResult.result.isTimesheetExist ?? '';
//         if (isTimesheetExist.isNotEmpty) {
//           emit(
//             TimesheetState.message(
//               message: 'registration_timesheets_screen.successfully_saved'.tr(),
//             ),
//           );
//         } else {
//           emit(
//             TimesheetState.hoursError(
//               hoursError: 'registration_timesheets_screen.error_saved'.tr(),
//             ),
//           );
//         }
//       } else {
//         emit(
//           TimesheetState.hoursError(
//             hoursError: 'registration_timesheets_screen.error_saved'.tr(),
//           ),
//         );
//       }
//     }

//     emit(
//       TimesheetState.init(
//         jobCompanies: jobCompanies,
//         listHoursCards: listHoursCards,
//         listProjectsInfo: listProjectsInfo,
//         totalHours: totalHours,
//         totalCosts: totalCosts,
//         listDaysNotBlocked: listDaysNotBlocked,
//         listTimesheets: listTimesheets,
//         hideSend: hideSend,
//         isApprovalInfo: isApprovalInfo,
//         listExpensesCards: listExpensesCards,
//         startDateTimesheet: timesheetStartDate,
//         isEditableTimesheet: true,
//         placementStartDate: placementStartDate,
//         placementEndDate: placementEndDate,
//         isReservationAdd: isReservationAdd(),
//         listReservationCards: listReservationCards,
//         listStartStopCard: listStartStopCard,
//         projects: projects,
//         isActiveStartStopTimesheetButoon: vmIsFillByStartStopTimes,
//         isActiveHoursTimesheetButoon: !vmIsFillInHourDisabled,
//         unravelingTypes: unravelingTypes,
//         isUnravelingTypesInUse: vmIisUnravelingTypesInUse,
//         googleApiKey: googleApiKey,
//       ),
//     );
//   }

//   DoSaveExpensesModel doSaveExpenses() {
//     final wrappersMap = listExpensesCards;
//     final toInsert = <ExpensesDayModel>[];
//     final toUpdate = <ExpensesDayModel>[];
//     final toDelete = toDeleteExpenses;

//     wrappersMap.forEach((card) {
//       final expTarif = timesheetsInfo.cpcExpenseTypeConf.firstWhere(
//         (element) => element.id == card.cpcExpenseTypeConfigId,
//       );
//       final validFromEtDate =
//           DateTime.parse(expTarif.validFrom).millisecondsSinceEpoch;
//       final validToEtDate =
//           DateTime.parse(expTarif.validTo).millisecondsSinceEpoch;

//       card.numberExpenses.forEach((itemExpense) {
//         final storageKey = itemExpense.id.isNotEmpty ? 'toUpdate' : 'toInsert';
//         final expDate = DateTime.parse(
//           itemExpense.date.isNotEmpty ? itemExpense.date : '0',
//         );
//         if ((itemExpense.numberOfUnits != 0 || expTarif.id.isNotEmpty) &&
//             (validFromEtDate <= expDate.millisecondsSinceEpoch) &&
//             (validToEtDate >= expDate.millisecondsSinceEpoch)) {
//           final expense = ExpensesDayModel(
//             Id: itemExpense.id.isNotEmpty ? itemExpense.id : null,
//             et: card.cpcExpenseTypeConfigId,
//             facturatie: expTarif.invoicePercentage.isNotEmpty,
//             pr: card.projectId,
//             dayNumber: expDate.weekday - 1,
//             amount: itemExpense.numberOfUnits,
//             comment: card.explanation,
//             isDividedPerDays: true,
//             costPerUnit: double.parse(card.price.isNotEmpty ? card.price : '0'),
//             bedrag: double.parse(
//               itemExpense.price.isNotEmpty ? itemExpense.price : '0',
//             ),
//             allocation: expTarif.allocation,
//             wr: itemExpense.sfWithdrawalRemainder,
//             routeFrom: '',
//             routeTo: '',
//             doubleD: false,
//           );

//           if (storageKey == 'toInsert') {
//             toInsert.add(expense);
//           } else {
//             toUpdate.add(expense);
//           }
//         }
//       });
//     });

//     final sortedMap = ExpensesSortedMapModel(
//       toInsert: toInsert,
//       toUpdate: toUpdate,
//       toDelete: toDelete,
//     );

//     return DoSaveExpensesModel(
//       sortedExpensesMapAsJSON: jsonEncode(sortedMap),
//       sortedExpensesMap: sortedMap,
//     );
//   }

//   void editExpense(
//     int indexCard,
//     int indexWeek,
//   ) {
//     final date = timesheetStartDate.add(Duration(days: indexWeek));
//     final numberOfUnits =
//         listExpensesCards[indexCard].amountOfExpensesList[indexWeek].toString();
//     final price = listExpensesCards[indexCard].bedrag[indexWeek] ?? '0';
//     bool expenseExists = false;

//     for (int i = 0;
//         i < listExpensesCards[indexCard].numberExpenses.length;
//         i++) {
//       final oldExpense = listExpensesCards[indexCard].numberExpenses[i];
//       final itemDate = DateTime.parse(
//         oldExpense.date.isNotEmpty ? oldExpense.date : '0',
//       );
//       if (itemDate == date ||
//           itemDate.isAfter(timesheetEndDate) ||
//           timesheetStartDate.isAfter(itemDate)) {
//         expenseExists = true;
//         final newExpense = oldExpense.copyWith(
//           date: timesheetStartDate
//               .add(Duration(days: indexWeek))
//               .toString()
//               .substring(
//                 0,
//                 timesheetStartDate.toString().indexOf(' '),
//               ),
//           price: price,
//           numberOfUnits: double.parse(
//             numberOfUnits.isNotEmpty && numberOfUnits != 'null'
//                 ? numberOfUnits
//                 : '0',
//           ),
//           amountCostPerUnit: listExpensesCards[indexCard].price,
//           cpcExpenseTypeConfigId:
//               listExpensesCards[indexCard].cpcExpenseTypeConfigId,
//           projectId: listExpensesCards[indexCard].projectId,
//         );
//         listExpensesCards[indexCard].numberExpenses.remove(oldExpense);
//         listExpensesCards[indexCard].numberExpenses.add(newExpense);
//         return;
//       }
//     }

//     if (!expenseExists) {
//       listExpensesCards[indexCard].numberExpenses.add(
//             ExpenseDataModel(
//               id: '',
//               name: '',
//               date: timesheetStartDate
//                   .add(Duration(days: indexWeek))
//                   .toString()
//                   .substring(
//                     0,
//                     timesheetStartDate.toString().indexOf(' '),
//                   ),
//               price: price,
//               cardType: 'Expense',
//               numberOfUnits: double.parse(
//                 numberOfUnits.isNotEmpty && numberOfUnits != 'null'
//                     ? numberOfUnits
//                     : '0',
//               ),
//               pricePerPaymentFrequency: 0.0,
//               explanation: listExpensesCards[indexCard].explanation,
//               amountCostPerUnit: listExpensesCards[indexCard].price,
//               createdAt: '',
//               cpcExpenseTypeConfigId:
//                   listExpensesCards[indexCard].cpcExpenseTypeConfigId,
//               projectId: listExpensesCards[indexCard].projectId,
//               timesheetId: timesheetsInfo.timesheet.id,
//               sfWithdrawalRemainder: '',
//             ),
//           );
//     }
//   }

//   List<Map<dynamic, dynamic>> saveStartStopTimesheet() {
//     final timeBasedHours = <Map<dynamic, dynamic>>[];

//     for (int i = 0; i < vmHoursForTimeBasedTimesheets.length; i++) {
//       if (vmHoursForTimeBasedTimesheets[i]['groupedByDate'] != null) {}
//       (vmHoursForTimeBasedTimesheets[i]['groupedByDate'] as List<dynamic>)
//           .forEach((interval) {
//         if (interval['endTime'] != null && interval['startTime'] != null) {
//           final uren = {
//             'startTime': interval['startTimeMS'],
//             'endTime': interval['endTimeMS'],
//             'unraveling': interval['unraveling'],
//             'dateIndex': i,
//             'rests': <dynamic>[]
//           };

//           if ((interval['rests'] as List<dynamic>).isEmpty) {
//             (uren['rests'] as List<dynamic>).add({
//               'restStart': '',
//               'restStartMS': '',
//               'restEnd': '',
//               'restEndMS': '',
//             });
//           }

//           (interval['rests'] as List<dynamic>).forEach((itemRest) {
//             final rest = {
//               'restStart': 0,
//               'restStartMS': 0,
//               'restEnd': 0,
//               'restEndMS': 0,
//             };

//             if (itemRest['restStart'] != null && itemRest['restEnd'] != null) {
//               rest['restStart'] = itemRest['restStartMS'];
//               rest['restEnd'] = itemRest['restEndMS'];
//               rest['restStartMS'] = itemRest['restStartMS'];
//               rest['restEndMS'] = itemRest['restEndMS'];
//             }
//             (uren['rests'] as List<dynamic>).add(rest);
//           });

//           uren['workedHour'] = interval['workedHour'];
//           uren['project'] = interval['project'] !=
//                   'registration_timesheets_screen.project_not_selected'.tr()
//               ? interval['project']
//               : null;
//           timeBasedHours.add(uren);
//         }
//       });
//     }

//     return timeBasedHours;
//   }
// }

import 'package:api_services/api_services.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

class CalendarRepository {
  final CalendarService _calendarService;
  final ProfileRepository _profileRepository;
  final AgencyService _agencyService;

  CalendarRepository(
    this._calendarService,
    this._profileRepository,
    this._agencyService,
  );

  Future<CalendarShiftsResponseModel> getShifts(
    DateTime date,
  ) async {
    final info = _profileRepository.model;
    CalendarShiftsResponseModel result;
    List<CalendarShiftsModel> listShifts = [];
    final String startDate = '${date.year}-${date.month}-01';
    final String endDate =
        '${date.year}-${date.month}-${DateTime(date.year, date.month + 1, 0).day}';

    final response = await _calendarService.getShifts(startDate, endDate);

    listShifts = List<CalendarShiftsModel>.from(
      response.shifts.map(
        (shift) => CalendarShiftsModel(
          id: shift.id ?? '',
          companyName: shift.companyName ?? '',
          title: shift.title ?? '',
          description: shift.description ?? '',
          startDate: parseDate(shift.startDate.toString()),
          endDate: parseDate(shift.endDate.toString()),
          isAllDay: shift.isAllDay ?? false,
          location: shift.location ?? '',
          agencyId: shift.agencyId ?? '',
          status: shift.status ?? '',
          beginningOfWork: shift.beginningOfWork ?? '',
          street: shift.street ?? '',
          mailingCity: shift.mailingCity ?? '',
          postalCode: shift.postalCode ?? '',
          country: shift.country ?? '',
          restStartTime: formatTime(shift.restStartTime.toString()),
          restEndTime: formatTime(shift.restEndTime.toString()),
          startTime: formatTime(shift.startTime.toString()),
          endTime: formatTime(shift.endTime.toString()),
          extraShiftInformationPdf: shift.extraShiftInformationPdf ?? '',
          logoAgency:
              _agencyService.getAgencyLogo(shift.agencyId.toString(), info),
        ),
      ),
    );

    result = CalendarShiftsResponseModel(
      code: response.code ?? 400,
      message: response.message ?? '',
      shifts: listShifts,
    );

    return result;
  }

  Future<int> acceptEvent(String id) async {
    final response = await _calendarService.putAcceptEvent(id);
    return response;
  }

  Future<int> rejectEvent(String id) async {
    final response = await _calendarService.putRejectEvent(id);
    return response;
  }

  String formatTime(String time) {
    final result =
        time != 'null' ? time.substring(0, time.lastIndexOf(':')) : '';
    return result;
  }

  DateTime parseDate(String date) {
    final dayNumber = date.substring(date.lastIndexOf('-') + 1);
    final year = date.substring(0, date.indexOf('-'));
    final month = date.substring(date.indexOf('-') + 1, date.lastIndexOf('-'));

    return DateTime(int.parse(year), int.parse(month), int.parse(dayNumber));
  }
}

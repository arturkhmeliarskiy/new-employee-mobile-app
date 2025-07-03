import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_shifts_model.freezed.dart';

@freezed
class CalendarShiftsModel with _$CalendarShiftsModel {
  const factory CalendarShiftsModel({
    required String id,
    required String companyName,
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required bool isAllDay,
    required String location,
    required String agencyId,
    required String status,
    required String beginningOfWork,
    required String street,
    required String mailingCity,
    required String postalCode,
    required String country,
    required String restStartTime,
    required String restEndTime,
    required String startTime,
    required String endTime,
    required String extraShiftInformationPdf,
    required String logoAgency,
  }) = _CalendarShiftsModel;
}

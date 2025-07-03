import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:view_models/view_models.dart';

part 'calendar_bloc.freezed.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

@injectable
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final CalendarRepository _calendarRepository;
  CalendarBloc(this._calendarRepository) : super(const CalendarState.init()) {
    on<ShowMonthEvent>(_showMonth);
    on<SelectDateEvent>(_selectDate);
    on<PressedAcceptEvent>(_acceptEvent);
    on<PressedRejectEvent>(_rejectEvent);
  }
  final shifts = <DateTime, List<CalendarShiftsModel>>{};
  final String error = 'calendar_screen.error'.tr();

  Future<void> _acceptEvent(
    PressedAcceptEvent event,
    Emitter<CalendarState> emit,
  ) async {
    final responseCode = await _calendarRepository.acceptEvent(event.id);
    if (responseCode == 200) {
      shifts.removeWhere(
        (key, value) => key == DateTime(event.date.year, event.date.month),
      );

      emit(
        const CalendarState.shiftStatusChanged(),
      );
    } else {
      emit(
        CalendarState.error(message: error),
      );
    }
  }

  Future<void> _rejectEvent(
    PressedRejectEvent event,
    Emitter<CalendarState> emit,
  ) async {
    final responseCode = await _calendarRepository.rejectEvent(event.id);
    if (responseCode == 200) {
      final allShiftsToMonth =
          shifts[DateTime(event.date.year, event.date.month)] ?? [];
      final newShifts = <CalendarShiftsModel>[];
      allShiftsToMonth.forEach((element) {
        if (element.id != event.id) newShifts.add(element);
      });
      shifts[DateTime(event.date.year, event.date.month)] = newShifts;
      emit(
        const CalendarState.shiftStatusChanged(),
      );
    } else {
      emit(
        CalendarState.error(message: error),
      );
    }
  }

  Future<void> _selectDate(
    SelectDateEvent event,
    Emitter<CalendarState> emit,
  ) async {
    final shiftDays = <int>[];
    final allShiftsToMonth =
        shifts[DateTime(event.date.year, event.date.month)] ?? [];
    final plannedShifts = <CalendarShiftsModel>[];
    final availableShifts = <CalendarShiftsModel>[];
    allShiftsToMonth.forEach((element) {
      final bool selectDate = event.date.isAfter(
                element.startDate,
              ) &&
              element.endDate.isAfter(event.date) ||
          event.date == element.endDate ||
          event.date == element.startDate;
      if (selectDate) {
        element.status == 'Accepted'
            ? plannedShifts.add(element)
            : availableShifts.add(element);
      }

      if (element.endDate.day != element.startDate.day) {
        for (int i = element.startDate.day; i < element.endDate.day; i++) {
          shiftDays.add(i);
        }
      }
      shiftDays.add(element.endDate.day);
    });

    emit(
      CalendarState.request(
        date: event.date,
        planned: plannedShifts,
        available: availableShifts,
        shiftDays: shiftDays,
      ),
    );
  }

  Future<void> _showMonth(
    ShowMonthEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(
      const CalendarState.init(),
    );

    if (!shifts.containsKey(DateTime(event.date.year, event.date.month))) {
      final newShifts = <CalendarShiftsModel>[];

      final response = await _calendarRepository.getShifts(event.date);
      if (response.code == 200) {
        response.shifts.forEach(newShifts.add);

        shifts[DateTime(event.date.year, event.date.month)] = newShifts;

        emit(
          const CalendarState.loading(),
        );
      } else {
        emit(CalendarState.error(message: response.message));
        emit(
          const CalendarState.loading(),
        );
      }
    } else {
      emit(
        const CalendarState.loading(),
      );
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

part 'work_preferences_bloc.freezed.dart';
part 'work_preferences_event.dart';
part 'work_preferences_state.dart';

@injectable
class WorkPreferencesBloc
    extends Bloc<WorkPreferencesEvent, WorkPreferencesState> {
  final ProfileRepository _profileRepository;
  final UpdateDataService _updateDataService;

  WorkPreferencesBloc(
    this._profileRepository,
    this._updateDataService,
  ) : super(const WorkPreferencesState.loading()) {
    on<UpdateWorkPreferencesProfileDataEvent>(
      _updateWorkPreferencesProfileData,
    );
  }

  Future<void> _updateWorkPreferencesProfileData(
    UpdateWorkPreferencesProfileDataEvent event,
    Emitter<WorkPreferencesState> emit,
  ) async {
    emit(const WorkPreferencesState.loading());
    final result = await _profileRepository.putPereferencesContactPersonalInfo(
      event.desiredSalary,
      event.desiredFunction,
      event.maxTravelTimeMinutes,
    );

    if (result.code == 200) {
      _updateDataService.desiredSalary = event.desiredSalary;
      _updateDataService.desiredFunction = event.desiredFunction;
      _updateDataService.maxTravelTimeMinutes = event.maxTravelTimeMinutes;
      emit(WorkPreferencesState.saveInformationSuccess(model: result));
    } else {
      emit(WorkPreferencesState.saveInformationlogInFailure(model: result));
    }
  }
}

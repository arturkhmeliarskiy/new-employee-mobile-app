import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

part 'repeat_reg_pin_code_bloc.freezed.dart';
part 'repeat_reg_pin_code_event.dart';
part 'repeat_reg_pin_code_state.dart';

@injectable
class RepeatRegPinCodeBloc
    extends Bloc<RepeatRegPinCodeEvent, RepeatRegPinCodeState> {
  final SharedPreferencesService _preferencesService;

  RepeatRegPinCodeBloc(
    this._preferencesService,
  ) : super(
          RepeatRegPinCodeState.repeatRegPinCodeInitial(),
        ) {
    on<RepeatRegPinCodeRequestedEvent>(
      _handleRepeatRegPinCodeRequestedEvent,
    );
    on<InitRepeatRegPinCodeEvent>(_initRepeatRegPinCode);
  }

  Future<void> _initRepeatRegPinCode(
    InitRepeatRegPinCodeEvent event,
    Emitter<RepeatRegPinCodeState> emit,
  ) async {
    emit(RepeatRegPinCodeState.repeatRegPinCodeInitial());
  }

  Future<void> _handleRepeatRegPinCodeRequestedEvent(
    RepeatRegPinCodeRequestedEvent event,
    Emitter<RepeatRegPinCodeState> emit,
  ) async {
    await _preferencesService.remove(SharedPrefKeys.regPinCodeKey);
    await _preferencesService.setBool(
      key: SharedPrefKeys.switchPinCodeKey,
      value: true,
    );
    if (event.pinCode == event.repeatPinCode) {
      emit(RepeatRegPinCodeState.successRepeatPinCode());
      await _preferencesService.setString(
        key: SharedPrefKeys.regPinCodeKey,
        value: event.pinCode,
      );
      await _preferencesService.setBool(
        key: SharedPrefKeys.switchPinCodeKey,
        value: true,
      );
    } else {
      emit(RepeatRegPinCodeState.failRepeatPinCode());
    }
  }
}

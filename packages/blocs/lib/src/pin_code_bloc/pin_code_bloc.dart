import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'pin_code_bloc.freezed.dart';
part 'pin_code_event.dart';
part 'pin_code_state.dart';

@injectable
class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  final AuthRepository _authRepository;
  final SharedPreferencesService _preferencesService;
  final UpdateDataService _updateDataService;

  PinCodeBloc(
    this._authRepository,
    this._preferencesService,
    this._updateDataService,
  ) : super(
          const PinCodeState.loading(),
        ) {
    on<PinCodeRequestedEvent>(_handlePinCodeRequestedEvent);
    on<BiometricRequestEvent>(_handleBiometricRequestEvent);
    on<ForgotPinCodeEvent>(_forgotPinCode);
  }

  Future<void> _forgotPinCode(
    ForgotPinCodeEvent event,
    Emitter<PinCodeState> emit,
  ) async {
    _updateDataService.message = 'pin_code_screen.pin_code_disabled'.tr();
    emit(const PinCodeState.forgotPinCode());
  }

  Future<void> _handleBiometricRequestEvent(
    BiometricRequestEvent event,
    Emitter<PinCodeState> emit,
  ) async {
    var isBiometric = false;
    const isActiveBiometric = true;
    if (isActiveBiometric) {
      isBiometric = await _authRepository.authenticateWithBiometrics();
    }
    emit(const PinCodeState.init());
    if (isBiometric) {
      emit(const PinCodeState.successPinCode());
    }
  }

  Future<void> _handlePinCodeRequestedEvent(
    PinCodeRequestedEvent event,
    Emitter<PinCodeState> emit,
  ) async {
    final getPinCode =
        _preferencesService.getString(key: SharedPrefKeys.regPinCodeKey);

    emit(const PinCodeState.init());
    if (event.pinCode == getPinCode) {
      emit(const PinCodeState.successPinCode());
    } else {
      emit(const PinCodeState.failPinCode());
    }
  }
}

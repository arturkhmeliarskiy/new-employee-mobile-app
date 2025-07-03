import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blocs/src/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

part 'security_bloc.freezed.dart';
part 'security_event.dart';
part 'security_state.dart';

class SecurityBloc extends Bloc<SecurityEvent, SecurityState> {
  final ProfileRepository _profileRepository;
  final RepeatRegPinCodeBloc repeatRegPinCodeBloc;
  StreamSubscription<dynamic>? otherBlocSubscription;
  final SharedPreferencesService _preferencesService;
  SecurityBloc(
    this._profileRepository,
    this._preferencesService,
    this.repeatRegPinCodeBloc,
  ) : super(
          SecurityState.init(
            isPinCode: _preferencesService.getBool(
                  key: SharedPrefKeys.switchPinCodeKey,
                ) ??
                false,
          ),
        ) {
    on<UpdateUserPasswordSecurityEvent>(_updateUserPasswordSecurity);
    on<UpdateIsPinCodeSecurityEvent>(_updateIsPinCodeSecurity);
    repeatRegistrationPinCodeState();
  }

  StreamSubscription<dynamic>? repeatRegistrationPinCodeState() {
    otherBlocSubscription = repeatRegPinCodeBloc.stream.listen((state) {
      state.maybeMap(
        successRepeatPinCode: (success) {
          add(
            SecurityEvent.updateIsPinCode(
              _preferencesService.getBool(
                    key: SharedPrefKeys.switchPinCodeKey,
                  ) ??
                  false,
            ),
          );
        },
        orElse: () => null,
      );
    });
    return null;
  }

  @override
  Future<void> close() {
    otherBlocSubscription?.cancel();
    return super.close();
  }

  Future<void> _updateUserPasswordSecurity(
    UpdateUserPasswordSecurityEvent event,
    Emitter<SecurityState> emit,
  ) async {
    emit(
      const SecurityState.savePasswordInProgress(),
    );
    final result = await _profileRepository.putChangePassword(
      event.oldPassword,
      event.newPassword,
      event.confirmPassword,
    );

    if (result.code == 200) {
      emit(SecurityState.savePasswordSuccess(model: result));
    } else {
      emit(SecurityState.savePasswordFailure(model: result));
    }
  }

  Future<void> _updateIsPinCodeSecurity(
    UpdateIsPinCodeSecurityEvent event,
    Emitter<SecurityState> emit,
  ) async {
    await _preferencesService.setBool(
      key: SharedPrefKeys.switchPinCodeKey,
      value: event.isPinCode,
    );
    emit(
      SecurityState.init(
        isPinCode:
            _preferencesService.getBool(key: SharedPrefKeys.switchPinCodeKey) ??
                false,
      ),
    );
  }
}

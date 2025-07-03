import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;
  final SharedPreferencesService _preferencesService;
  final ProfileRepository _profileRepository;
  final UpdateDataService _updateDataService;

  LoginBloc(
    this._authRepository,
    this._preferencesService,
    this._profileRepository,
    this._updateDataService,
  ) : super(const LoginState.init()) {
    on<LogInEvent>(_logIn);
  }

  Future<void> _logIn(
    LogInEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.logInInProgress());
    final result =
        await _authRepository.getAccessCookie(event.email, event.password);
    if (result.code == 1009) {
      emit(
        LoginState.logInFailure(
          model: result,
        ),
      );
      return;
    }

    final resultNotificationTokens =
        await _profileRepository.postNotificationTokens();

    if (result.code == 200 && resultNotificationTokens.code == 200) {
      await _preferencesService.setString(
        key: SharedPrefKeys.userNameKey,
        value: result.userDataModel?.firstName ?? '',
      );
      await _preferencesService.setString(
        key: SharedPrefKeys.userIdKey,
        value: result.userDataModel?.id ?? '',
      );
      emit(
        LoginState.logInSuccess(
          model: result,
          message: _updateDataService.message,
        ),
      );
    } else {
      emit(
        LoginState.logInFailure(
          model: result,
        ),
      );
    }
  }
}

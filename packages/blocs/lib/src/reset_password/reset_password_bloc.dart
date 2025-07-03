import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repositories/repositories.dart';

part 'reset_password_bloc.freezed.dart';
part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final ResetPasswordRepository _resetPasswordRepository;
  String email = '';
  String resetPasswordToken = '';
  final AppLinks _appLinks = AppLinks();

  ResetPasswordBloc(
    this._resetPasswordRepository,
  ) : super(const ResetPasswordState.openResetPasswordScreen()) {
    on<SendRecoveryInstructionsEvent>(messageSend);
    on<OpenResetPasswordScreenEvent>(openScreen);
    on<GetPasswordResetLinkEvent>(getPasswordResetLink);
    on<SaveNewPasswordEvent>(saveNewPassword);
  }

  Future<void> saveNewPassword(
    SaveNewPasswordEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(const ResetPasswordState.loading());
    final response = await _resetPasswordRepository.putResetPassword(
      resetPasswordToken,
      event.password,
      event.repeatPassword,
    );
    if (response.code == 200) {
      emit(
        ResetPasswordState.success(
          email: email,
          password: event.password,
        ),
      );
      emit(const ResetPasswordState.openResetPasswordScreen());
    } else {
      emit(ResetPasswordState.error(message: response.message));
      emit(ResetPasswordState.getPasswordResetLink(email: email));
    }
  }

  Future<void> getPasswordResetLink(
    GetPasswordResetLinkEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    final initialURI = await _appLinks.getInitialLinkString();

    if (initialURI != null) {
      resetPasswordToken = initialURI.substring(
        initialURI.indexOf('/resetpassword/') + 15,
      );
      emit(ResetPasswordState.getPasswordResetLink(email: email));
    }
  }

  Future<void> openScreen(
    OpenResetPasswordScreenEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(const ResetPasswordState.openResetPasswordScreen());
  }

  Future<void> messageSend(
    SendRecoveryInstructionsEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(const ResetPasswordState.loading());
    email = event.email;
    if (event.email.isNotEmpty) {
      final response = await _resetPasswordRepository.sendMessageToEmail(
        email,
      );
      if (response.code == 200) {
        emit(
          const ResetPasswordState.messageSend(),
        );
      } else {
        emit(
          ResetPasswordState.error(
            message: response.message,
          ),
        );
        emit(const ResetPasswordState.openResetPasswordScreen());
      }
    } else {
      emit(
        ResetPasswordState.error(
          message: 'reset_password_screen.input_error_message_mail'.tr(),
        ),
      );
      emit(const ResetPasswordState.openResetPasswordScreen());
    }
  }
}

// import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repositories/repositories.dart';

part 'registration_bloc.freezed.dart';
part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationRepository _registrationRepository;
  String fieldsAreNotFilled = 'registration_screen.fields_are_not_filled'.tr();
  String passwordsDoNotMatch =
      'registration_screen.passwords_do_not_match'.tr();
  String email = '';
  String firstName = '';
  String lastName = '';
  String phone = '';
  String password = '';
  String confirmedPassword = '';
  RegistrationBloc(this._registrationRepository)
      : super(const RegistrationState.init()) {
    on<EnteredEmailEvent>(getEmail);
    on<EnteredUserInfoEvent>(getUserInfo);
    on<EnteredPasswordEvent>(sendARequest);
    on<UpdateInformationEvent>(updateInformation);
  }

  Future<void> updateInformation(
    UpdateInformationEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(const RegistrationState.init());
    emit(
      RegistrationState.fieldValues(
        email: email,
        firstName: firstName,
        lastName: lastName,
        phoneNamber: phone,
        password: password,
        confirmedPassword: confirmedPassword,
      ),
    );
  }

  Future<void> getEmail(
    EnteredEmailEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    if (event.email.isNotEmpty) {
      email = event.email;
    } else {
      emit(const RegistrationState.init());
      emit(
        RegistrationState.error(
          message: fieldsAreNotFilled,
          page: 'emailPage',
        ),
      );
    }
  }

  Future<void> getUserInfo(
    EnteredUserInfoEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    if (event.firstName.isNotEmpty &
            event.lastName.isNotEmpty &
            event.phoneNamber.isNotEmpty &&
        event.phoneNamber != '+') {
      firstName = event.firstName;
      lastName = event.lastName;
      phone = event.phoneNamber;
    } else {
      emit(const RegistrationState.init());
      emit(
        RegistrationState.error(
          message: fieldsAreNotFilled,
          page: 'userInfoPage',
        ),
      );
    }
  }

  Future<void> sendARequest(
    EnteredPasswordEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(const RegistrationState.loading());
    if (event.password.isNotEmpty & event.confirmedPassword.isNotEmpty) {
      password = event.password;
      confirmedPassword = event.confirmedPassword;
      if (event.password == event.confirmedPassword) {
        final response = await _registrationRepository.postRegistration(
          email,
          firstName,
          lastName,
          phone,
          event.password,
          event.confirmedPassword,
        );
        if (response.code == 201) {
          emit(
            RegistrationState.success(
              email: email,
              password: event.password,
            ),
          );
        } else {
          emit(RegistrationState.errorResponse(message: response.message));
          emit(
            RegistrationState.fieldValues(
              email: email,
              firstName: firstName,
              lastName: lastName,
              phoneNamber: phone,
              password: password,
              confirmedPassword: confirmedPassword,
            ),
          );
        }
      } else {
        emit(const RegistrationState.init());
        emit(RegistrationState.errorResponse(message: passwordsDoNotMatch));
        emit(
          RegistrationState.fieldValues(
            email: email,
            firstName: firstName,
            lastName: lastName,
            phoneNamber: phone,
            password: password,
            confirmedPassword: confirmedPassword,
          ),
        );
      }
    } else {
      emit(const RegistrationState.init());
      emit(RegistrationState.errorResponse(message: fieldsAreNotFilled));
      emit(
        RegistrationState.fieldValues(
          email: email,
          firstName: firstName,
          lastName: lastName,
          phoneNamber: phone,
          password: password,
          confirmedPassword: confirmedPassword,
        ),
      );
    }
  }
}

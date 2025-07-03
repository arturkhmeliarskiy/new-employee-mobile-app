import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:view_models/view_models.dart';

class RegistrationRepository {
  final RegistrationService _registrationService;
  final PushNotificationsService _pushNotificationsService;

  RegistrationRepository(
    this._registrationService,
    this._pushNotificationsService,
  );

  Future<MessagesInfoDataModel> postRegistration(
    String email,
    String firstName,
    String lastName,
    String phoneNumber,
    String password,
    String confirmedPassword,
  ) async {
    final deviceId = await _pushNotificationsService.getToken();

    final body = json.encode({
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'password': password,
      'confirmedPassword': confirmedPassword,
      'deviceId': deviceId,
      'type': 'Employee'
    });

    final response = await _registrationService.putRegistration(body);

    return MessagesInfoDataModel(
      code: response.code ?? 400,
      message: response.message.toString(),
    );
  }
}

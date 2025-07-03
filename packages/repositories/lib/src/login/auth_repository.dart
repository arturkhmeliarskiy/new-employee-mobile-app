import 'dart:async';
import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

class AuthRepository {
  final AuthService _authService;
  final AuthLocalApi _authLocalApi;

  AuthRepository(
    this._authService,
    this._authLocalApi,
  );

  Future<LoginStateDataModel> getAccessCookie(
    String userName,
    String password,
  ) async {
    final body = json.encode({
      'username': userName,
      'password': password,
    });

    final response = await _authService.getAuthResponse(body);

    final result = response.toModel();

    return result;
  }

  Future<bool> hasBiometrics() async {
    return _authLocalApi.hasBiometrics();
  }

  Future<List<BiometricType>> getBiometrics() async {
    return _authLocalApi.getBiometrics();
  }

  Future<bool> authenticateWithBiometrics() async {
    return _authLocalApi.authenticateWithBiometrics();
  }
}

extension on AuthResponseModel {
  LoginStateDataModel toModel() {
    final userModel = UserDataModel(
      id: user?.id ?? '',
      email: user?.email ?? '',
      firstName: user?.firstName ?? '',
      lastName: user?.lastName ?? '',
      type: user?.type ?? '',
      activated: user?.activated ?? false,
      googleId: user?.googleId ?? '',
      googleName: user?.googleName ?? '',
      googleEmail: user?.googleEmail ?? '',
      linkedinId: user?.linkedinId ?? '',
      linkedinName: user?.linkedinName ?? '',
      linkedinEmail: user?.linkedinEmail ?? '',
      facebookId: user?.facebookName ?? '',
      facebookName: user?.facebookName ?? '',
      facebookEmail: user?.facebookEmail ?? '',
      profilePhotoName: user?.profilePhotoName ?? '',
      createdAt: user?.createdAt ?? '',
      updatedAt: user?.updatedAt ?? '',
      currentAgencyId: user?.currentAgencyId ?? '',
      preferredLanguage: user?.preferredLanguage ?? '',
      username: user?.username ?? '',
      cookieconsent: user?.cookieconsent ?? '',
      lastSeenInApp: user?.lastSeenInApp ?? '',
      viewModeEC: user?.viewModeEC ?? '',
      activeCompanies: user?.activeCompanies ?? '',
      allowedTabs: user?.allowedTabs ?? '',
      isRoot: user?.isRoot ?? false,
      is2FA: user?.is2FA ?? false,
      resetAttempt: user?.resetAttempt ?? '',
      appErrorInfo: user?.appErrorInfo ?? '',
    );
    return LoginStateDataModel(
      code: code ?? 400,
      message: message ?? 'No message',
      userDataModel: userModel,
    );
  }
}

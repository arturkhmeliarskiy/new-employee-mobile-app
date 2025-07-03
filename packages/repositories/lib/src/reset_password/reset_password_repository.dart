import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:view_models/view_models.dart';

class ResetPasswordRepository {
  final ResetPasswordService _resetPasswordService;

  ResetPasswordRepository(this._resetPasswordService);

  Future<MessagesInfoDataModel> sendMessageToEmail(
    String email,
  ) async {
    final body = json.encode({'username': email});

    final response = await _resetPasswordService.sendMessageToEmail(body);

    return MessagesInfoDataModel(
      code: response.code ?? 400,
      message: response.message.toString(),
    );
  }

  Future<MessagesInfoDataModel> putResetPassword(
    String token,
    String newPassword,
    String confirmPassword,
  ) async {
    final body = json.encode({
      'resetPasswordToken': token,
      'newPassword': newPassword,
      'confirmPassword': confirmPassword
    });

    final response = await _resetPasswordService.putResetPassword(body);

    return MessagesInfoDataModel(
      code: response.code ?? 400,
      message: response.message.toString(),
    );
  }
}

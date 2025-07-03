import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

class JobApplicationFormRepository {
  final PushNotificationsService _pushNotificationsService;
  final CVFileUploadService _cvFileUploadService;
  final SearchService _searchService;
  final SocketService _socketService;
  String deviceId = '';

  JobApplicationFormRepository(
    this._pushNotificationsService,
    this._cvFileUploadService,
    this._searchService,
    this._socketService,
  );

  Future<ResponseJobApplicationFormModel> uploadResume(
    FileInfoDataModel file,
  ) async {
    ResponseJobApplicationFormModel response;

    deviceId = await _pushNotificationsService.getToken() ?? '';
    final body = json.encode({
      'fileName': "",
      'deviceId': deviceId,
    });
    final getUrl = await _cvFileUploadService.getUrl(
      body,
    );
    if (getUrl.code == 200) {
      final bodyUploadFile = file.uint8list;
      final putFile =
          await _cvFileUploadService.uploadFile(getUrl.url, bodyUploadFile);
      if (putFile.code == 200) {
        _socketService.parseCVFile(getUrl.userId);

        final startParseFile =
            await _cvFileUploadService.startParseFile(getUrl.token);

        response = ResponseJobApplicationFormModel(
          code: startParseFile.code,
          message: startParseFile.message,
          userId: getUrl.userId,
        );
      } else {
        response = ResponseJobApplicationFormModel(
          code: putFile.code,
          message: putFile.message,
          userId: getUrl.userId,
        );
      }
    } else {
      response = ResponseJobApplicationFormModel(
        code: getUrl.code,
        message: getUrl.message,
        userId: getUrl.userId,
      );
    }

    return response;
  }

  Future<ResponseJobApplicationFormModel> getUserInfo(
    String resumeId,
    String _userId,
  ) async {
    final body = json.encode({'resumeId': resumeId, 'userId': _userId});
    final response = await _cvFileUploadService.getUserInfo(body);

    return ResponseJobApplicationFormModel(
      code: response.code,
      message: response.message,
      firstName: response.firstName,
      lastName: response.lastName,
      email: response.email,
      phone: response.phone,
    );
  }

  Future<List<SearchInputModel>> getSuitableOptions(
    String text,
    String currentLang,
  ) async {
    List<SearchInputModel> result = [];
    final response = await _searchService.getSuitableOptions(text, currentLang);

    result = List<SearchInputModel>.from(
      response.data.result.map(
        (text) => SearchInputModel(
          id: text.id ?? '',
          name: text.name ?? '',
          altLabels: text.altLabels ?? '',
          code: text.code ?? '',
          iscoGroup: text.iscoGroup ?? 0,
        ),
      ),
    );

    return result;
  }

  Future<ResponseJobApplicationFormModel> userIsExists(
    String email,
  ) async {
    if (deviceId.isEmpty) {
      deviceId = await _pushNotificationsService.getToken() ?? '';
    }
    final body = json.encode({'email': email, 'deviceId': deviceId});

    final response = await _cvFileUploadService.userIsExists(body);

    return ResponseJobApplicationFormModel(
      code: response.code,
      message: response.message,
      firstName: response.firstName,
      lastName: response.lastName,
      email: response.email,
      phone: response.phone,
    );
  }

  Future<ResponseJobApplicationFormModel> sendCode(
    String code,
    String firstName,
    String lastName,
    String email,
    String phone,
  ) async {
    final body = json.encode({
      'code': code,
      'deviceId': deviceId,
      'userInfo': {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'phone': phone
      }
    });

    final response = await _cvFileUploadService.sendCode(body);

    return ResponseJobApplicationFormModel(
      code: response.code,
      message: response.message,
      password: response.password,
    );
  }

  Future<ResponseJobApplicationFormModel> sendingListOfProfessions(
    String userId,
    String resumeId,
    List<String> professions,
    List<String> codeOccupation,
  ) async {
    final List<OccupationsModel> occupations = [];
    for (int item = 0; item < professions.length; item++) {
      occupations.add(
        OccupationsModel(id: codeOccupation[item], name: professions[item]),
      );
    }
    final body = json.encode(
      {'userId': userId, 'resumeId': resumeId, 'occupations': occupations},
    );

    final response = await _cvFileUploadService.sendingListOfProfessions(body);

    return ResponseJobApplicationFormModel(
      code: response.code,
      message: response.message,
    );
  }
}

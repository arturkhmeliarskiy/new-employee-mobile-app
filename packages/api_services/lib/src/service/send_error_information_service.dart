import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:api_services/api_services.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:yaml/yaml.dart';

class SendErrorInformationService {
  final BaseHttpClient _baseHttpClient;
  final ProfileRepository _profileRepository;

  SendErrorInformationService(this._baseHttpClient, this._profileRepository);

  Future<void> putSendError(
    String error,
    String stack,
  ) async {
    final dateTime = DateTime.now().toString();
    final userId = _profileRepository.model.user?.id;
    final platform = Platform.operatingSystem.toString();
    final fileInfo = loadYaml(await rootBundle.loadString('pubspec.yaml'));
    final version = fileInfo['version'].toString();

    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/apperrorinfo',
    );

    final body = json.encode(
      {
        'error': error,
        'date': dateTime,
        'userId': userId,
        'platform': platform,
        'version': version,
        'stack': stack
      },
    );

    log(body);
    await _baseHttpClient.put(
      url,
      body: body,
    );
    final appBloc = GetIt.instance.get<AppBloc>();
    appBloc.add(const AppEvent.exeptionMessage());
  }
}

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:api_services/api_services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

class ProfileRepository {
  final ProfileService _profileService;
  final PushNotificationsService _pushNotificationsService;
  final SharedPreferencesService _sharedPreferencesService;
  final AccessCookieService _accessCookieService;
  final UpdateDataService _updateDataService;
  final SocketService _socketService;

  ProfileRepository(
    this._profileService,
    this._pushNotificationsService,
    this._sharedPreferencesService,
    this._accessCookieService,
    this._updateDataService,
    this._socketService,
  );

  InfoUserDataModel? _model;

  InfoUserDataModel get model {
    return _model ?? const InfoUserDataModel();
  }

  bool? _onPostFile;

  bool get onPostFile {
    return _onPostFile ?? true;
  }

  Future<NotificationMessagesDataModel> getNotificationMessages() async {
    final response = await _profileService.getNotificationMessages();
    final result =
        response.toNotificationMessages(_model ?? const InfoUserDataModel());

    return result;
  }

  Future<MessagesInfoDataModel> putNotificationMessagesId(
    String id,
  ) async {
    final response = await _profileService.putNotificationMessagesId(id);
    final result = response.toMessagesInfo();

    return result;
  }

  Future<NotificationMessagesReadAllDataModel>
      postNotificationMessagesReadAll() async {
    final response = await _profileService.postNotificationMessagesReadAll();
    final result = response.toNotificationMessagesReadAll();
    return result;
  }

  Future<MessagesInfoDataModel> postNotificationTokens() async {
    final token = await _pushNotificationsService.getToken() ?? '';
    final body = json.encode({
      'token': token,
    });
    log(token);
    final response = await _profileService.postNotificationTokens(body);
    final result = response.toMessagesInfo();
    return result;
  }

  Future<void> getInitFirebaseApp() async {
    await _profileService.getInitFirebaseApp();
  }

  Future<void> getNotificationTokens() async {
    final token = await _pushNotificationsService.getToken() ?? '';
    await _profileService.getNotificationTokens(token);
  }

  Future<void> putNotificationTokens() async {
    final token = await _pushNotificationsService.getToken() ?? '';
    await _profileService.putNotificationTokens(token);
  }

  Future<void> deleteNotificationTokens() async {
    final token = await _pushNotificationsService.getToken() ?? '';
    await _profileService.deleteNotificationTokens(token);
  }

  Future<Base64ImageDataModel> getBase64Image(String fileName) async {
    final response = await _profileService.getBase64Image(fileName);
    final result = response.toBase64Image();
    return result;
  }

  Future<Base64ImageDataModel> getBase64MyFiles(String id) async {
    final response = await _profileService.getBase64MyFiles(id);
    final result = response.toBase64Image();
    return result;
  }

  Future<Base64ImageDataModel> getBase64AgencyFile(String idAgency) async {
    final response = await _profileService.getBase64AgencyFile(idAgency);
    final result = response.toBase64Image();
    return result;
  }

  Future<FilesDataModel> getMyFiles() async {
    final response = await _profileService.getMyFiles();
    final result = response.toMyFiles(model);
    return result;
  }

  Future<FileDataModel> getMyFileId(String id, String fileName) async {
    final response = await _profileService.getMyFileId(id, fileName);
    final result = FileDataModel.fromJson(jsonDecode(response.body));
    return result;
  }

  Future<MessagesInfoDataModel> deleteMyFileId(String name, String id) async {
    final response = await _profileService.deleteMyFileId(name, id);
    final result = response.toMessagesInfo();
    return result;
  }

  Future<MessagesInfoDataModel> shareFile(
    String idFile,
    String idAgency,
  ) async {
    final body = json.encode({'id': idFile, 'agencyId': idAgency});
    final response = await _profileService.shareFile(body);
    final result = response.toMessagesInfo();
    return result;
  }

  Future<Uint8List> addFile() async {
    return Uint8List(0);
  }

  Future<FileInfoDataModel> formatFile() async {
    _onPostFile = false;
    dynamic filePicker;

    try {
      // filePicker = await FilePicker.platform.pickFiles();
    } catch (e) {
      filePicker = null;
    }
    _onPostFile = true;
    Uint8List? bytes;
    double? sizeInMb;
    if (filePicker != null) {
      bytes = File(filePicker.files.single.path ?? '').readAsBytesSync();
      sizeInMb = filePicker.files.single.size / (1024 * 1024);
    }

    final result = FileInfoDataModel(
      uint8list: bytes ?? Uint8List(0),
      sizeInMb: sizeInMb ?? 0.0,
    );

    return result;
  }

  Future<MessagesInfoAddFileDataModel> postMyFile(
    String expirationDate,
    String typeDocument,
    bool shareWithAgency,
  ) async {
    final filePicker = await formatFile();

    String? body;
    MessagesInfoAddFileResponseModel? response;
    MessagesInfoAddFileDataModel? result;
    if (filePicker.sizeInMb != 0.0) {
      if (filePicker.sizeInMb < 3) {
        body = json.encode({
          'content': base64Encode(filePicker.uint8list),
          'expirationDate': expirationDate,
          'typeDocument': typeDocument,
          'shareWithAgency': shareWithAgency
        });

        response = await _profileService.postMyFile(body);
      } else {
        response = MessagesInfoAddFileResponseModel(
          400,
          [],
          'The selected file is too large. Maximum size 3Mb',
        );
      }

      result = response.toAddMyFileMessagesInfo();
    } else {
      result = MessagesInfoAddFileDataModel(
        code: 400,
        message: 'no_file_selected'.tr(),
        added: [],
      );
    }

    return result;
  }

  Future<UpdateProfilePhotoDataModel> postProfilePhoto() async {
    final userId =
        _sharedPreferencesService.getString(key: SharedPrefKeys.userIdKey);
    final filePicker = await formatFile();
    String? body;
    MessagesInfoResponseModel? response;
    UpdateProfilePhotoDataModel? result;
    if (filePicker.sizeInMb != 0.0) {
      if (filePicker.sizeInMb < 3) {
        body = json.encode({
          'fileBase64Body': base64Encode(filePicker.uint8list),
        });

        response = await _profileService.postProfilePhoto(body);
      } else {
        response = MessagesInfoResponseModel(
          400,
          'The selected file is too large. Maximum size 3Mb',
        );
      }

      result = response.toProfilePhoto(filePicker.uint8list);
    } else {
      result = UpdateProfilePhotoDataModel(
        code: 400,
        message: 'No image selected',
        uint8list: Uint8List(0),
      );
    }

    return result;
  }

  Future<InfoUserDataModel> getInfo() async {
    final response = await _profileService.getInfo();
    _model = response.toGetInfoUser(_updateDataService);

    return _model ?? const InfoUserDataModel();
  }

  Future<MessagesInfoDataModel> putChangePassword(
    String oldPassword,
    String newPassword,
    String confirmPassword,
  ) async {
    final userId =
        _sharedPreferencesService.getString(key: SharedPrefKeys.userIdKey);
    final body = json.encode({
      'userId': userId,
      'passwords': {
        'oldPassword': oldPassword,
        'newPassword': newPassword,
        'confirmPassword': confirmPassword,
      }
    });

    final response = await _profileService.putChangePassword(body);
    final result = response.toMessagesInfo();
    return result;
  }

  Future<MessagesInfoDataModel> putChangeUserName(
    String username,
  ) async {
    final body = json.encode({
      'username': username,
    });

    final response = await _profileService.putChangeUserName(body);
    final result = response.toMessagesInfo();
    return result;
  }

  Future<MessagesInfoDataModel> getLogout() async {
    _socketService.disconnect();
    await _accessCookieService.deleteAll();
    await _pushNotificationsService.deleteToken();
    _updateDataService.dateOfBirth = '';
    _updateDataService.firstName = '';
    _updateDataService.lastName = '';
    _updateDataService.nickName = '';
    _updateDataService.nationality = '';
    _updateDataService.telephoneNumber = '';
    _updateDataService.email = '';
    _updateDataService.desiredSalary = '';
    _updateDataService.desiredFunction = '';
    _updateDataService.maxTravelTimeMinutes = '';
    _updateDataService.profilePhotoName = '';
    final response = await _profileService.getLogout();
    final result = response.toMessagesInfo();
    return result;
  }

  Future<AgencyFilesDataModel> getAgencyFiles() async {
    final response = await _profileService.getAgencyFiles();
    final result = response.toAgencyFiles(_model ?? const InfoUserDataModel());
    return result;
  }

  Future<MessagesInfoDataModel> putProfilePersonalInfo(
    String firstName,
    String lastName,
    String nickName,
    String birthDate,
    String nationality,
  ) async {
    final bodyProfile = json.encode({
      'firstName': firstName,
      'lastName': lastName,
      'nickName': nickName,
      'birthDate': birthDate,
      'nationality': nationality,
    });
    final response = await _profileService.putPersonalinfo(bodyProfile);
    final result = response.toMessagesInfo();
    return result;
  }

  Future<MessagesInfoDataModel> putContactPersonalInfo(
    String phone,
    String email,
  ) async {
    final bodyContact = json.encode({
      'phone': phone,
      'email': email,
    });
    final response = await _profileService.putPersonalinfo(bodyContact);
    final result = response.toMessagesInfo();
    return result;
  }

  Future<MessagesInfoDataModel> putPereferencesContactPersonalInfo(
    String desiredSalary,
    String desiredFunction,
    String maxTravelTimeMinutes,
  ) async {
    final bodyPreferences = json.encode({
      'desiredSalary': int.tryParse(desiredSalary),
      'desiredFunction': desiredFunction,
      'maxTravelTimeMinutes': int.tryParse(maxTravelTimeMinutes),
    });
    final response = await _profileService.putPersonalinfo(bodyPreferences);
    final result = response.toMessagesInfo();
    return result;
  }

  Future<MessagesInfoDataModel> putChangeUserLanguage(
    String langName,
  ) async {
    final body = json.encode({
      'preferredLanguage': langName,
    });

    final response = await _profileService.putLanguage(body);
    final result = response.toMessagesInfo();
    return result;
  }
}

extension on Base64ImageResponseModel {
  Base64ImageDataModel toBase64Image() {
    return Base64ImageDataModel(
      code: code ?? 400,
      file: file ?? '',
    );
  }
}

extension on Base64MyFilesResponseModel {
  Base64ImageDataModel toBase64Image() {
    return Base64ImageDataModel(
      code: code ?? 400,
      file: content ?? '',
    );
  }
}

extension on InfoResponseModel {
  InfoUserDataModel toGetInfoUser(UpdateDataService _updateDataService) {
    final userDataInfo = UserDataInfoModel(
      id: info?.user?.id ?? '',
      email: info?.user?.email ?? '',
      username: info?.user?.username ?? '',
      firstName: info?.user?.firstName ?? '',
      lastName: info?.user?.lastName ?? '',
      fullName: info?.user?.fullName ?? '',
      nickName: info?.user?.nickName ?? '',
      birthDate: info?.user?.birthDate ?? '${DateTime(0)}',
      nationality: info?.user?.nationality ?? '',
      phone: info?.user?.phone ?? '',
      profilePhotoName: info?.user?.profilePhotoName ?? '',
      desiredSalary: info?.user?.desiredSalary ?? '',
      desiredFunction: info?.user?.desiredFunction ?? '',
      preferredLanguage: info?.user?.preferredLanguage ?? 'English',
      maxTravelTimeMinutes: info?.user?.maxTravelTimeMinutes ?? '',
      currentAgencyId: info?.user?.currentAgencyId ?? '',
    );
    final recordsDataInfo = List<RecordsDataModel>.from(
      info?.records?.map(
            (e) => RecordsDataModel(agencyId: e.agencyId, id: e.id),
          ) ??
          <RecordsDataModel>[],
    );
    final agencyDataInfo = List<AgencyDataModel>.from(
      info?.agencies?.map(
            (e) => AgencyDataModel(
              id: e.id,
              headerLogoUrl: e.headerLogoUrl,
              phone: e.phone,
              orgName: e.orgName,
              styleJson: StyleJsonDataModel(
                header: HeaderDataModel(
                  backgroundColor: e.styleJSON?.header.backgroundColor
                          .replaceAll('#', '0xff') ??
                      '',
                ),
              ),
            ),
          ) ??
          <AgencyDataModel>[],
    );
    if (userDataInfo.birthDate.isNotEmpty) {
      final birthDate =
          DateTime.tryParse(userDataInfo.birthDate) ?? DateTime(0);

      _updateDataService.dateOfBirth =
          '${birthDate.year}/${birthDate.month}/${birthDate.day}';
    } else {
      _updateDataService.dateOfBirth = userDataInfo.birthDate;
    }

    _updateDataService.firstName = userDataInfo.firstName;
    _updateDataService.lastName = userDataInfo.lastName;
    _updateDataService.nickName = userDataInfo.nickName;
    _updateDataService.nationality = userDataInfo.nationality;
    _updateDataService.telephoneNumber = userDataInfo.phone;
    _updateDataService.email = userDataInfo.email;
    _updateDataService.desiredSalary = userDataInfo.desiredSalary;
    _updateDataService.desiredFunction = userDataInfo.desiredFunction;
    _updateDataService.maxTravelTimeMinutes = userDataInfo.maxTravelTimeMinutes;
    _updateDataService.profilePhotoName = userDataInfo.profilePhotoName;
    _updateDataService.preferredLanguage = userDataInfo.preferredLanguage;

    return InfoUserDataModel(
      user: userDataInfo,
      recordsData: recordsDataInfo,
      agencyData: agencyDataInfo,
    );
  }
}

extension on FilesResponseModel {
  FilesDataModel toMyFiles(InfoUserDataModel model) {
    final _agencyService = GetIt.instance.get<AgencyService>();
    final filesList = List<FilesInfoDataModel>.from(
      (files?.map(
            (e) => FilesInfoDataModel(
              id: e.id ?? '',
              name: e.name ?? '',
              type: e.type ?? '',
              path: e.path ?? '',
              isShared: e.isShared ?? false,
              expirationDate: e.expirationDate ?? '',
              typeDocument: e.typeDocument ?? '',
              createdAt: e.createdAt ?? '',
              size: e.size ?? '',
              parentCloudFileId: e.parentCloudFileId ?? '',
              employeeId: (model.recordsData ?? []).isNotEmpty
                  ? _agencyService.getAgencyInfo(e.employeeId ?? '', model).id
                  : '',
              sharedAgencys: [],
            ),
          )) ??
          <FilesInfoDataModel>[],
    );
    return FilesDataModel(
      code: code ?? 400,
      files: filesList,
    );
  }
}

extension on AgencyFilesResponseModel {
  AgencyFilesDataModel toAgencyFiles(
    InfoUserDataModel infoUserDataModel,
  ) {
    final agencyFilesList = List<AgencyFilesInfoDataModel>.from(
      (items?.map(
            (e) => AgencyFilesInfoDataModel(
              id: e.id ?? '',
              name: e.name ?? '',
              type: e.type ?? '',
              sfFileId: e.sfFileId ?? '',
              isAttached: e.isAttached ?? false,
              expirationDate: e.expirationDate ?? '',
              sfRecordId: e.sfRecordId ?? '',
              createdAt: e.createdAt ?? '',
              size: e.size ?? 0,
              employeeId: e.employeeId ?? '',
              agencyName: AgencyService()
                  .getAgencyInfo(
                    e.employeeId ?? '',
                    infoUserDataModel,
                  )
                  .agencyName,
            ),
          )) ??
          <AgencyFilesInfoDataModel>[],
    );
    return AgencyFilesDataModel(
      code: code ?? 400,
      files: agencyFilesList,
    );
  }
}

extension on NotificationMessagesReadAllResponseModel {
  NotificationMessagesReadAllDataModel toNotificationMessagesReadAll() {
    return NotificationMessagesReadAllDataModel(
      code: code ?? 400,
      message: message ?? 'No message',
      count: count ?? 0,
    );
  }
}

extension on MessagesInfoAddFileResponseModel {
  MessagesInfoAddFileDataModel toAddMyFileMessagesInfo() {
    return MessagesInfoAddFileDataModel(
      code: code ?? 400,
      message: message ?? 'No message',
      added: added ?? [],
    );
  }
}

extension on MessagesInfoResponseModel {
  MessagesInfoDataModel toMessagesInfo() {
    return MessagesInfoDataModel(
      code: code ?? 400,
      message: message ?? 'No message',
    );
  }
}

extension on MessagesInfoResponseModel {
  UpdateProfilePhotoDataModel toProfilePhoto(Uint8List uint8list) {
    return UpdateProfilePhotoDataModel(
      code: code ?? 400,
      message: message ?? 'No message',
      uint8list: uint8list,
    );
  }
}

extension on NotificationMessagesResponseModel {
  NotificationMessagesDataModel toNotificationMessages(
    InfoUserDataModel infoUserDataModel,
  ) {
    final dataModelList = List<DataModel>.from(
      (data?.map(
            (e) => DataModel(
              id: e.id ?? '',
              isRead: e.isRead ?? false,
              receiverId: e.receiverId ?? '',
              receiverType: e.receiverType ?? '',
              opportunityId: e.opportunityId ?? '',
              orgName: e.orgName ?? '',
              orgLogo: AgencyService()
                  .getAgencyInfo(
                    e.receiverId ?? '',
                    infoUserDataModel,
                  )
                  .agencyLogo,
              messageType: '',
              relatedObjectType: e.relatedObjectType ?? '',
              createdAt: e.createdAt ?? '',
              updatedAt: e.updatedAt ?? '',
              title: e.title ?? '',
              count: '',
              relatedObjectId: e.relatedObjectType ?? '',
            ),
          )) ??
          <DataModel>[],
    );

    return NotificationMessagesDataModel(
      code: code ?? 400,
      message: message ?? 'No message',
      dataModel: dataModelList,
    );
  }
}

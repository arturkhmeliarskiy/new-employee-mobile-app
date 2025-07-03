import 'dart:typed_data';

import 'package:view_models/view_models.dart';

class UpdateDataService {
  String? _firstName;
  String? _lastName;
  String? _nickName;
  String? _dateOfBirth;
  String? _nationality;
  String? _telephoneNumber;
  String? _email;
  String? _desiredSalary;
  String? _desiredFunction;
  String? _maxTravelTimeMinutes;
  String? _profilePhotoName;
  Uint8List? _userImage;
  String? _preferredLanguage;
  String? _message;
  bool? _appLoaded;
  ChatGroupsAgencyDataModel? _modelChatGroups;

  String get firstName {
    return _firstName ?? '';
  }

  set firstName(String name) {
    _firstName = name;
  }

  String get lastName {
    return _lastName ?? '';
  }

  set lastName(String name) {
    _lastName = name;
  }

  String get nickName {
    return _nickName ?? '';
  }

  set nickName(String name) {
    _nickName = name;
  }

  String get dateOfBirth {
    return _dateOfBirth ?? '';
  }

  set dateOfBirth(String name) {
    _dateOfBirth = name;
  }

  String get nationality {
    return _nationality ?? '';
  }

  set nationality(String name) {
    _nationality = name;
  }

  String get telephoneNumber {
    return _telephoneNumber ?? '';
  }

  set telephoneNumber(String name) {
    _telephoneNumber = name;
  }

  String get email {
    return _email ?? '';
  }

  set email(String name) {
    _email = name;
  }

  String get desiredSalary {
    return _desiredSalary ?? '';
  }

  set desiredSalary(String name) {
    _desiredSalary = name;
  }

  String get desiredFunction {
    return _desiredFunction ?? '';
  }

  set desiredFunction(String name) {
    _desiredFunction = name;
  }

  String get maxTravelTimeMinutes {
    return _maxTravelTimeMinutes ?? '';
  }

  set maxTravelTimeMinutes(String name) {
    _maxTravelTimeMinutes = name;
  }

  Uint8List get userImage {
    return _userImage ?? Uint8List(0);
  }

  set userImage(Uint8List name) {
    _userImage = name;
  }

  String get profilePhotoName {
    return _profilePhotoName ?? '';
  }

  set profilePhotoName(String name) {
    _profilePhotoName = name;
  }

  String get preferredLanguage {
    return _preferredLanguage ?? '';
  }

  set preferredLanguage(String name) {
    _preferredLanguage = name;
  }

  String get message {
    return _message ?? '';
  }

  set message(String name) {
    _message = name;
  }

  bool get appLoaded {
    return _appLoaded ?? false;
  }

  set appLoaded(bool name) {
    _appLoaded = name;
  }

  ChatGroupsAgencyDataModel get modelChatGroups {
    return _modelChatGroups ?? const ChatGroupsAgencyDataModel();
  }

  set modelChatGroups(ChatGroupsAgencyDataModel model) {
    _modelChatGroups = model;
  }
}

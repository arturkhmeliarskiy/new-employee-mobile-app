import 'dart:async';
import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final SharedPreferencesService _preferencesService;
  final ProfileRepository _profileRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final BasicInformationBloc basicInformationBloc;
  final HomeBloc _homeBloc;
  final WorkPreferencesBloc workPreferencesBloc;
  final UpdateDataService _updateDataService;
  late NotificationMessagesDataModel newNnotification;
  StreamSubscription<dynamic>? otherBlocSubscription;

  ProfileBloc(
    this._preferencesService,
    this._profileRepository,
    this._sharedPreferencesService,
    this.basicInformationBloc,
    this._homeBloc,
    this.workPreferencesBloc,
    this._updateDataService,
  ) : super(const ProfileState.loading()) {
    on<_InitEvent>(_handleInitEvent);
    on<_LogoutEvent>(_handleLogoutEvent);
    on<UpdateBasicInformationEvent>(_updateBasicInformationEvent);
    on<UpdateUserImageBasicInformationEvent>(
      _updateUserImageBasicInformationEvent,
    );
    on<ProfileNewNotificationEvent>(
      _newNotificationEvent,
    );
    on<DeleteMessageIdEvent>(
      _deleteMessageId,
    );
    basicInformationState();
    workPreferencesState();
    notificationState();
  }

  StreamSubscription<dynamic>? notificationState() {
    otherBlocSubscription = _homeBloc.stream.listen((state) {
      state.maybeMap(
        notification: (_) {
          add(const ProfileEvent.newNotification());
        },
        orElse: () => null,
      );
    });
    return null;
  }

  StreamSubscription<dynamic>? basicInformationState() {
    otherBlocSubscription = basicInformationBloc.stream.listen((state) {
      state.maybeMap(
        saveInformationSuccess: (success) {
          add(const ProfileEvent.updateBasicInformation());
        },
        saveUserImageSuccess: (success) {
          add(const ProfileEvent.updateUserImage());
        },
        orElse: () => null,
      );
    });
    return null;
  }

  StreamSubscription<dynamic>? workPreferencesState() {
    otherBlocSubscription = workPreferencesBloc.stream.listen((state) {
      state.maybeMap(
        saveInformationSuccess: (success) {
          add(const ProfileEvent.updateBasicInformation());
        },
        orElse: () => null,
      );
    });
    return null;
  }

  Future<void> _newNotificationEvent(
    ProfileNewNotificationEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final userName =
        _sharedPreferencesService.getString(key: SharedPrefKeys.userNameKey) ??
            '';

    final unreadChatMessages = _homeBloc.unreadChatMessages;

    final unreadChatGroupsMessages =
        _updateDataService.modelChatGroups.chatGroups?.where(
      (item) =>
          unreadChatMessages.chatMessages
              ?.any((element) => element.chatGroupId == item.id) ??
          false,
    );

    final numberMessages = unreadChatMessages.chatMessages?.where(
      (item) =>
          _updateDataService.modelChatGroups.chatGroups
              ?.any((element) => element.agencyId == item.senderId) ??
          false,
    );

    final unreadChatGroups = List<DataModel>.from(
      unreadChatGroupsMessages?.map(
            (item) => DataModel(
              id: item.agencyId,
              isRead: false,
              receiverId: '',
              receiverType: '',
              opportunityId: '',
              orgName: _profileRepository.model.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .orgName ??
                  '',
              orgLogo: _profileRepository.model.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .headerLogoUrl ??
                  '',
              relatedObjectType: '',
              relatedObjectId: '',
              createdAt: item.createdAt,
              updatedAt: '',
              messageType: 'New chat messages',
              count:
                  '${numberMessages?.where((element) => element.senderId == item.agencyId).length}',
              title: item.companyGroupName,
            ),
          ) ??
          <DataModel>[],
    );

    final modelData = await _profileRepository.getNotificationMessages();

    newNnotification = NotificationMessagesDataModel(
      dataModel: [...unreadChatGroups, ...modelData.dataModel],
      code: 0,
      message: '',
    );

    newNnotification.dataModel
        .sort((a, b) => b.createdAt.compareTo(a.createdAt));

    final getInfoUser = UserDataInfoModel(
      fullName: '',
      nickName: _updateDataService.nickName,
      phone: _updateDataService.telephoneNumber,
      birthDate: _updateDataService.dateOfBirth,
      nationality: _updateDataService.nationality,
      email: _updateDataService.email,
      profilePhotoName: _updateDataService.profilePhotoName,
      desiredSalary: _updateDataService.desiredSalary,
      desiredFunction: _updateDataService.desiredFunction,
      maxTravelTimeMinutes: _updateDataService.maxTravelTimeMinutes,
      preferredLanguage: _updateDataService.preferredLanguage,
      username: '',
      firstName: _updateDataService.firstName,
      id: '',
      lastName: _updateDataService.lastName,
    );

    emit(
      InitProfileState(
        isPinCode: _preferencesService.getBool(
              key: SharedPrefKeys.switchPinCodeKey,
            ) ??
            false,
        uint8list: _updateDataService.userImage,
        userName: userName,
        notificationMessagesDataModel: newNnotification,
        infoDataModel: getInfoUser,
        navigateToPage: false,
        agencyId: '',
        notification: false,
      ),
    );
  }

  Future<void> _updateBasicInformationEvent(
    UpdateBasicInformationEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final getInfoUser = UserDataInfoModel(
      fullName: '',
      nickName: _updateDataService.nickName,
      phone: _updateDataService.telephoneNumber,
      birthDate: _updateDataService.dateOfBirth,
      nationality: _updateDataService.nationality,
      email: _updateDataService.email,
      profilePhotoName: _updateDataService.profilePhotoName,
      firstName: _updateDataService.firstName,
      id: '',
      desiredFunction: _updateDataService.desiredFunction,
      desiredSalary: _updateDataService.desiredSalary,
      username: '',
      preferredLanguage: _updateDataService.preferredLanguage,
      maxTravelTimeMinutes: _updateDataService.maxTravelTimeMinutes,
      lastName: _updateDataService.lastName,
    );
    await _preferencesService.setString(
      key: SharedPrefKeys.userNameKey,
      value: getInfoUser.firstName,
    );
    final userName =
        _sharedPreferencesService.getString(key: SharedPrefKeys.userNameKey) ??
            '';
    emit(
      (state as InitProfileState).copyWith(
        infoDataModel: getInfoUser,
        userName: userName,
        navigateToPage: false,
        agencyId: '',
      ),
    );
  }

  Future<void> _updateUserImageBasicInformationEvent(
    UpdateUserImageBasicInformationEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final userImage = _updateDataService.userImage;
    emit(
      (state as InitProfileState).copyWith(
        uint8list: userImage,
        navigateToPage: false,
        agencyId: '',
      ),
    );
  }

  @override
  Future<void> close() {
    otherBlocSubscription?.cancel();
    return super.close();
  }

  Future<void> _handleInitEvent(
    _InitEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    final userName =
        _sharedPreferencesService.getString(key: SharedPrefKeys.userNameKey) ??
            '';
    final getInfoUser = UserDataInfoModel(
      fullName: '',
      nickName: _updateDataService.nickName,
      phone: _updateDataService.telephoneNumber,
      birthDate: _updateDataService.dateOfBirth,
      nationality: _updateDataService.nationality,
      email: _updateDataService.email,
      profilePhotoName: _updateDataService.profilePhotoName,
      desiredSalary: _updateDataService.desiredSalary,
      desiredFunction: _updateDataService.desiredFunction,
      maxTravelTimeMinutes: _updateDataService.maxTravelTimeMinutes,
      preferredLanguage: _updateDataService.preferredLanguage,
      username: '',
      firstName: _updateDataService.firstName,
      id: '',
      lastName: _updateDataService.lastName,
    );

    final listChatGroupsId = _updateDataService.modelChatGroups.chatGroups
            ?.map((e) => e.id)
            .toList() ??
        [];
    Iterable<ChatGroupsDataModel>? unreadChatGroupsMessages;
    Iterable<ChatMessagesDataModel>? numberMessages;
    if (listChatGroupsId.isNotEmpty) {
      final unreadChatMessages = _homeBloc.unreadChatMessages;
      unreadChatGroupsMessages =
          _updateDataService.modelChatGroups.chatGroups?.where(
        (item) =>
            unreadChatMessages.chatMessages
                ?.any((element) => element.chatGroupId == item.id) ??
            false,
      );

      numberMessages = unreadChatMessages.chatMessages?.where(
        (item) =>
            _updateDataService.modelChatGroups.chatGroups
                ?.any((element) => element.agencyId == item.senderId) ??
            false,
      );
    }

    final unreadChatGroups = List<DataModel>.from(
      unreadChatGroupsMessages?.map(
            (item) => DataModel(
              id: item.agencyId,
              isRead: false,
              receiverId: '',
              receiverType: '',
              opportunityId: '',
              orgName: _profileRepository.model.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .orgName ??
                  '',
              orgLogo: _profileRepository.model.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .headerLogoUrl ??
                  '',
              relatedObjectType: '',
              relatedObjectId: '',
              createdAt: item.createdAt,
              updatedAt: '',
              messageType: 'New chat messages',
              count:
                  '${numberMessages?.where((element) => element.senderId == item.agencyId).length}',
              title: item.companyGroupName,
            ),
          ) ??
          <DataModel>[],
    );

    final modelData = await _profileRepository.getNotificationMessages();

    newNnotification = NotificationMessagesDataModel(
      dataModel: [...unreadChatGroups, ...modelData.dataModel],
      code: 0,
      message: '',
    );

    newNnotification.dataModel
        .sort((a, b) => b.createdAt.compareTo(a.createdAt));

    emit(
      ProfileState.init(
        isPinCode: _preferencesService.getBool(
              key: SharedPrefKeys.switchPinCodeKey,
            ) ??
            false,
        uint8list: _updateDataService.userImage,
        userName: userName,
        notificationMessagesDataModel: newNnotification,
        infoDataModel: getInfoUser,
        navigateToPage: false,
        agencyId: '',
        notification: false,
      ),
    );
  }

  Future<void> _deleteMessageId(
    DeleteMessageIdEvent event,
    Emitter<ProfileState> emit,
  ) async {
    if (event.typeMessage.isEmpty) {
      final result =
          await _profileRepository.putNotificationMessagesId(event.id);
      if (result.code == 200) {
        newNnotification.dataModel.removeWhere((item) => item.id == event.id);
      }
    } else {
      newNnotification.dataModel.removeWhere((item) => item.id == event.id);
    }

    newNnotification.dataModel
        .sort((a, b) => b.createdAt.compareTo(a.createdAt));

    emit(
      (state as InitProfileState).copyWith(
        notificationMessagesDataModel: newNnotification,
        navigateToPage: event.typeMessage.isNotEmpty,
        agencyId: event.id,
        notification: newNnotification.dataModel.isEmpty,
      ),
    );
  }

  Future<void> _handleLogoutEvent(
    _LogoutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await _profileRepository.getLogout();
    emit(
      const ProfileState.logout(),
    );
    emit(
      const ProfileState.loading(),
    );
  }
}

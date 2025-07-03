import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:blocs/src/login_bloc/login_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  final SharedPreferencesService _preferencesService;
  final AccessCookieService _accessCookieService;
  final ProfileRepository _profileRepository;
  final UpdateDataService _updateDataService;
  final HomeRepository _homeRepository;
  final SocketService _socketService;
  final LoginBloc loginBloc;
  bool isOpenSocket = false;
  bool stateRegisteredUser = false;
  StreamSubscription<dynamic>? otherBlocSubscription;
  bool isInactive = false;
  NewsInfoDataModel newsList = const NewsInfoDataModel(
    news: [],
    totalCount: 0,
    code: 0,
  );

  AppBloc(
    this._preferencesService,
    this._accessCookieService,
    this._profileRepository,
    this._updateDataService,
    this._socketService,
    this.loginBloc,
    this._homeRepository,
  ) : super(AppState.init()) {
    on<_PreloadDataAppEvent>(_preloadDataApp);
    on<LogInSuccessAppEvent>(_logiInSuccessApp);
    on<NotRegisteredAppEvent>(_notRegistered);
    on<ExeptionMessageAppEvent>(_exeptionMessage);
    on<ShowMoreNewsAppEvent>(showMoreNews);

    logInState();
  }

  WorkInfoDataModel? workInfo;

  WorkInfoDataModel get getWorkInfoModel {
    return workInfo ?? const WorkInfoDataModel(content: []);
  }

  StreamSubscription<dynamic>? logInState() {
    otherBlocSubscription = loginBloc.stream.listen((state) {
      state.maybeMap(
        logInSuccess: (success) {
          add(const AppEvent.logInSuccess());
        },
        orElse: () => null,
      );
    });
    return null;
  }

  Future<void> showMoreNews(
    ShowMoreNewsAppEvent event,
    Emitter<AppState> emit,
  ) async {
    final downloadedNews = newsList.news;
    final newNews = await _homeRepository.getNews(
      newsList.news.length,
      stateRegisteredUser,
    );
    if (newNews.code == 200) {
      newNews.news.forEach(downloadedNews.add);
      newsList = newsList.copyWith(news: downloadedNews);
      stateRegisteredUser
          ? emit(
              (state as PreloadDataCompletedAppState).copyWith(
                newsList: newsList,
              ),
            )
          : emit(
              (state as NotRegisteredAppState).copyWith(
                newsList: newsList,
              ),
            );
    }
  }

  Future<void> _exeptionMessage(
    ExeptionMessageAppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(AppState.errorConnection(message: 'error_message_application'.tr()));
  }

  Future<void> _logiInSuccessApp(
    LogInSuccessAppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(AppState.appInProgress());
    String languageTag = '';
    var isAuthed = false;

    String? userName;
    Uint8List? userImage;

    isAuthed = await _accessCookieService.isAlreadyLoggedIn();
    if (isAuthed) {
      stateRegisteredUser = true;
      final result = await _profileRepository.getInfo();
      if (!isOpenSocket) {
        isOpenSocket = true;
        await _socketService.initializeSocket(isAuthed);
      } else {
        _socketService.connect(true);
      }
      final base64Image = await _profileRepository
          .getBase64Image(result.user?.profilePhotoName ?? '');
      if (result.user?.id == '') {
        emit(
          AppState.errorConnection(message: 'no_internet_connection'.tr()),
        );
        emit(AppState.appInProgress());
      }
      final language = _profileRepository.model.user?.preferredLanguage ?? 'en';
      languageTag = TigrisMenuOption()
          .languages
          .firstWhere((element) => element['language'] == language)['value']
          .toString();
      userImage = const Base64Decoder().convert(base64Image.file ?? '');
      newsList = await _homeRepository.getNews(0, stateRegisteredUser);

      workInfo = await _homeRepository.getWorkInfo();
      userName = _preferencesService.getString(
        key: SharedPrefKeys.userNameKey,
      );
      await _preferencesService.remove(SharedPrefKeys.userImageKey);
      _preferencesService.setString(
        key: SharedPrefKeys.userImageKey,
        value: base64Image.file ?? '',
      );

      _updateDataService.appLoaded = true;

      _updateDataService.userImage = userImage;
    }
    if (_updateDataService.message.isNotEmpty) {
      await _preferencesService.setBool(
        key: SharedPrefKeys.switchPinCodeKey,
        value: false,
      );
    }

    emit(
      AppState.preloadDataCompleted(
        isAuthed,
        false,
        languageTag,
        userName ?? '',
        userImage ?? Uint8List(0),
        newsList,
        workInfo ?? const WorkInfoDataModel(content: []),
        _updateDataService.message,
      ),
    );
    _updateDataService.message = '';
  }

  @override
  Future<void> close() {
    otherBlocSubscription?.cancel();
    return super.close();
  }

  Future<void> _preloadDataApp(
    _PreloadDataAppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(AppState.appInProgress());
    String languageTag = '';
    var isAuthed = false;

    String? userName;
    Uint8List? userImage;

    final isPinCode =
        _preferencesService.getBool(key: SharedPrefKeys.switchPinCodeKey) ??
            false;

    isAuthed = await _accessCookieService.isAlreadyLoggedIn();
    if (isAuthed) {
      stateRegisteredUser = true;
      if (!isOpenSocket) {
        isOpenSocket = true;
        await _socketService.initializeSocket(isAuthed);
      } else {
        _socketService.connect(true);
      }
      final result = await _profileRepository.getInfo();
      if (result.user?.id == '') {
        emit(
          AppState.errorConnection(message: 'no_internet_connection'.tr()),
        );
        emit(AppState.appInProgress());
      }
      final base64Image = await _profileRepository
          .getBase64Image(result.user?.profilePhotoName ?? '');
      final language = _profileRepository.model.user?.preferredLanguage;
      languageTag = TigrisMenuOption()
          .languages
          .firstWhere((element) => element['language'] == language)['value']
          .toString();
      userImage = const Base64Decoder().convert(base64Image.file ?? '');
      newsList = await _homeRepository.getNews(0, stateRegisteredUser);

      workInfo = await _homeRepository.getWorkInfo();
      userName = _preferencesService.getString(
        key: SharedPrefKeys.userNameKey,
      );
      await _preferencesService.remove(SharedPrefKeys.userImageKey);
      _preferencesService.setString(
        key: SharedPrefKeys.userImageKey,
        value: base64Image.file ?? '',
      );

      _updateDataService.appLoaded = true;

      _updateDataService.userImage = userImage;
    }
    emit(
      AppState.preloadDataCompleted(
        isAuthed,
        isPinCode,
        languageTag,
        userName ?? '',
        userImage ?? Uint8List(0),
        newsList,
        workInfo ?? const WorkInfoDataModel(content: []),
        '',
      ),
    );
  }

  Future<void> _notRegistered(
    NotRegisteredAppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(AppState.appInProgress());
    if (!isOpenSocket) {
      isOpenSocket = true;
      await _socketService.initializeSocket(false);
    }
    stateRegisteredUser = false;
    newsList = await _homeRepository.getNews(0, stateRegisteredUser);

    const userName = '...';
    emit(
      AppState.notRegistered(
        userName: userName,
        newsList: newsList,
      ),
    );
  }
}

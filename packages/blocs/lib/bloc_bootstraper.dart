import 'dart:async';

import 'package:blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

Future<void> initBlocs(GetIt getIt) async {
  getIt
    ..registerSingleton(
      LoginBloc(
        getIt.get<AuthRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<ProfileRepository>(),
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerSingleton(
      AppBloc(
        getIt.get<SharedPreferencesService>(),
        getIt.get<AccessCookieService>(),
        getIt.get<ProfileRepository>(),
        getIt.get<UpdateDataService>(),
        getIt.get<SocketService>(),
        getIt.get<LoginBloc>(),
        getIt.get<HomeRepository>(),
      ),
    )
    ..registerSingleton(
      HomeBloc(
        getIt.get<UpdateDataService>(),
        getIt.get<ChatRepository>(),
        getIt.get<ProfileRepository>(),
      ),
    )
    ..registerSingleton(
      ChatBloc(
        getIt.get<ChatRepository>(),
        getIt.get<ProfileRepository>(),
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerSingleton(
      AgencyRelatedInfoBloc(
        getIt.get<HomeRepository>(),
        getIt.get<ProfileRepository>(),
      ),
    )
    ..registerSingleton(
      PinCodeBloc(
        getIt.get<AuthRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerSingleton(
      RegPinCodeBloc(),
    )
    ..registerSingleton(
      SubmittedTimesheetBloc(
        getIt.get<HomeRepository>(),
      ),
    )
    ..registerSingleton(
      RepeatRegPinCodeBloc(
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerSingleton(
      SecurityBloc(
        getIt.get<ProfileRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<RepeatRegPinCodeBloc>(),
      ),
    )
    ..registerSingleton(
      WorkPreferencesBloc(
        getIt.get<ProfileRepository>(),
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerSingleton(
      BasicInformationBloc(
        getIt.get<ProfileRepository>(),
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerSingleton(
      ProfileBloc(
        getIt.get<SharedPreferencesService>(),
        getIt.get<ProfileRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<BasicInformationBloc>(),
        getIt.get<HomeBloc>(),
        getIt.get<WorkPreferencesBloc>(),
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerSingleton(
      MyDocumentsBloc(
        getIt.get<ProfileRepository>(),
        getIt.get<AppBloc>(),
      ),
    )
    ..registerSingleton(
      AgencyDocumentsBloc(
        getIt.get<ProfileRepository>(),
      ),
    )
    ..registerFactory(
      () => PayslipsBloc(
        getIt.get<PayslipsRepository>(),
        getIt.get<ProfileRepository>(),
      ),
    )
    ..registerFactory(
      () => LanguageBloc(
        getIt.get<ProfileRepository>(),
      ),
    )
    ..registerFactory(
      () => ResetPasswordBloc(
        getIt.get<ResetPasswordRepository>(),
      ),
    )
    ..registerFactory(
      () => RegistrationBloc(
        getIt.get<RegistrationRepository>(),
      ),
    )
    ..registerFactory(
      TigrisFilePreviewBloc.new,
    )
    ..registerFactory(
      () => JobApplicationFormBloc(
        getIt.get<ProfileRepository>(),
        getIt.get<JobApplicationFormRepository>(),
        getIt.get<SocketService>(),
        getIt.get<AuthRepository>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => CalendarBloc(
        getIt.get<CalendarRepository>(),
      ),
    );
  // ..registerFactory(
  //   () => TimesheetBloc(
  //     getIt.get<HomeRepository>(),
  //     getIt.get<TimesheetRepository>(),
  //     getIt.get<ProfileRepository>(),
  //   ),
  // );
}

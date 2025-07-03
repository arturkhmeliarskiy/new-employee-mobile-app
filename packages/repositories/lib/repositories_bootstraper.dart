import 'package:api_services/api_services.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

Future<void> initRepositories(GetIt getIt) async {
  getIt
    ..registerSingleton(
      AuthRepository(
        getIt.get<AuthService>(),
        getIt.get<AuthLocalApi>(),
      ),
    )
    ..registerSingleton(
      ProfileRepository(
        getIt.get<ProfileService>(),
        getIt.get<PushNotificationsService>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<AccessCookieService>(),
        getIt.get<UpdateDataService>(),
        getIt.get<SocketService>(),
      ),
    )
    ..registerSingleton(
      HomeRepository(
        getIt.get<HomeService>(),
        getIt.get<ProfileRepository>(),
        getIt.get<AgencyService>(),
      ),
    )
    ..registerFactory(
      () => ChatRepository(
        getIt.get<ChatService>(),
        getIt.get<ProfileRepository>(),
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerFactory(
      () => PayslipsRepository(
        getIt.get<PayslipsService>(),
        getIt.get<AgencyService>(),
        getIt.get<ProfileRepository>(),
      ),
    )
    ..registerFactory(
      () => ResetPasswordRepository(
        getIt.get<ResetPasswordService>(),
      ),
    )
    ..registerFactory(
      () => RegistrationRepository(
        getIt.get<RegistrationService>(),
        getIt.get<PushNotificationsService>(),
      ),
    )
    ..registerFactory(
      () => JobApplicationFormRepository(
        getIt.get<PushNotificationsService>(),
        getIt.get<CVFileUploadService>(),
        getIt.get<SearchService>(),
        getIt.get<SocketService>(),
      ),
    )
    ..registerFactory(
      () => CalendarRepository(
        getIt.get<CalendarService>(),
        getIt.get<ProfileRepository>(),
        getIt.get<AgencyService>(),
      ),
    )
    ..registerFactory(
      () => TimesheetRepository(
        getIt.get<TimesheetService>(),
      ),
    );
}

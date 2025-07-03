import 'package:api_services/api_services.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

Future<void> initServices(GetIt getIt) async {
  getIt
    ..registerFactory(
      () => BaseHttpClient(
        getIt.get<AccessCookieService>(),
      ),
    )
    ..registerFactory(
      () => AuthService(
        getIt.get<BaseHttpClient>(),
        getIt.get<AccessCookieService>(),
      ),
    )
    ..registerFactory(
      () => HomeService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      () => ChatService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      () => ProfileService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      PushNotificationsService.new,
    )
    ..registerFactory(
      () => PayslipsService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      () => ResetPasswordService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      () => RegistrationService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      () => CVFileUploadService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      () => SendErrorInformationService(
        getIt.get<BaseHttpClient>(),
        getIt.get<ProfileRepository>(),
      ),
    )
    ..registerFactory(
      () => CalendarService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      () => SearchService(
        getIt.get<BaseHttpClient>(),
      ),
    )
    ..registerFactory(
      () => TimesheetService(
        getIt.get<BaseHttpClient>(),
      ),
    );
}

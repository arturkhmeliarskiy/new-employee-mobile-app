import 'package:view_models/view_models.dart';

class AppManager {
  static AppConfig currentConfig = local;

  static const AppConfig local = AppConfig(
    appName: 'Tigris LOC',
    flavorName: 'local',
    apiBaseUrl: '',
  );

  static const AppConfig preproduction = AppConfig(
    appName: 'Tigris PREP',
    flavorName: 'preproduction',
    apiBaseUrl: 'https://prepre.tigris.nl',
  );

  static const AppConfig production = AppConfig(
    appName: 'Tigris PROD',
    flavorName: 'production',
    apiBaseUrl: 'http://api.tigris.nl',
  );
}

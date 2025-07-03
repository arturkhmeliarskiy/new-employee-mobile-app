class AppConfig {
  const AppConfig({
    required this.appName,
    required this.flavorName,
    required this.apiBaseUrl,
  }) : super();

  final String appName;
  final String flavorName;
  final String apiBaseUrl;
}

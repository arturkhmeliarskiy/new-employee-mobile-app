part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  factory LanguageEvent.loadingLanguage() = LoadingLanguageEvent;
  factory LanguageEvent.changeTheLanguage(
    String language,
  ) = ChangeTheLanguageEvent;
}

part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.loading() = LanguageLoadingState;

  const factory LanguageState.changeTheLanguage({
    required String language,
    required String languageTag,
  }) = ChangeTheLanguageState;

  const factory LanguageState.error({
    required String message,
  }) = LanguageErrorState;
}

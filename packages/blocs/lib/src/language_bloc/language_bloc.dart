import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final ProfileRepository _profileRepository;
  LanguageBloc(this._profileRepository) : super(const LanguageState.loading()) {
    on<ChangeTheLanguageEvent>(changeLanguage);
    on<LoadingLanguageEvent>(loadingLanguage);
  }

  Future<void> loadingLanguage(
    LoadingLanguageEvent event,
    Emitter<LanguageState> emit,
  ) async {
    final userLanguage = _profileRepository.model.user!.preferredLanguage;

    final result = TigrisMenuOption()
        .languages
        .firstWhere((element) => element['language'] == userLanguage)['value']
        .toString();
    emit(
      LanguageState.changeTheLanguage(
        language: userLanguage,
        languageTag: result,
      ),
    );
  }

  Future<void> changeLanguage(
    ChangeTheLanguageEvent event,
    Emitter<LanguageState> emit,
  ) async {
    emit(const LanguageState.loading());
    final newLanguage = TigrisMenuOption()
        .languages
        .firstWhere((element) => element['value'] == event.language)['language']
        .toString();
    final response = await _profileRepository.putChangeUserLanguage(
      newLanguage,
    );
    if (response.code == 200) {
      final result = TigrisMenuOption()
          .languages
          .firstWhere((element) => element['language'] == newLanguage)['value']
          .toString();

      emit(
        LanguageState.changeTheLanguage(
          language: newLanguage,
          languageTag: result,
        ),
      );
    } else {
      emit(
        LanguageState.error(
          message: response.message,
        ),
      );
    }
  }
}

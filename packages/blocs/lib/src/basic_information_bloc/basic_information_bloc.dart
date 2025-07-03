import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

part 'basic_information_bloc.freezed.dart';
part 'basic_information_event.dart';
part 'basic_information_state.dart';

@injectable
class BasicInformationBloc
    extends Bloc<BasicInformationEvent, BasicInformationState> {
  final ProfileRepository _profileRepository;
  final UpdateDataService _updateDataService;

  BasicInformationBloc(
    this._profileRepository,
    this._updateDataService,
  ) : super(const BasicInformationState.loading()) {
    on<BasicInformationUpdateUserProfileDataEvent>(_updateUserProfileData);
    on<BasicInformationUpdateUserContactDataEvent>(_updateUserContactData);
    on<BasicInformationUpdateUserImageEvent>(_updateUserImage);
  }

  Future<void> _updateUserProfileData(
    BasicInformationUpdateUserProfileDataEvent event,
    Emitter<BasicInformationState> emit,
  ) async {
    emit(const BasicInformationState.loading());
    final result = await _profileRepository.putProfilePersonalInfo(
      event.firstName,
      event.lastName,
      event.nickName,
      event.birthDate,
      event.nationality,
    );

    if (result.code == 200) {
      _updateDataService.firstName = event.firstName;
      _updateDataService.lastName = event.lastName;
      _updateDataService.nickName = event.nickName;
      _updateDataService.dateOfBirth = event.birthDate;
      _updateDataService.nationality = event.nationality;
      emit(const BasicInformationState.saveInformationSuccess());
    } else {
      emit(BasicInformationState.saveInformationFailure(model: result));
    }
  }

  Future<void> _updateUserImage(
    BasicInformationUpdateUserImageEvent event,
    Emitter<BasicInformationState> emit,
  ) async {
    emit(const BasicInformationState.loading());
    final result = await _profileRepository.postProfilePhoto();

    if (result.code == 200) {
      _updateDataService.userImage = result.uint8list;
      emit(const BasicInformationState.saveUserImageSuccess());
    } else {
      emit(BasicInformationState.saveUserImageFailure(model: result));
    }
  }

  Future<void> _updateUserContactData(
    BasicInformationUpdateUserContactDataEvent event,
    Emitter<BasicInformationState> emit,
  ) async {
    emit(const BasicInformationState.loading());
    final result = await _profileRepository.putContactPersonalInfo(
      event.phone,
      event.email,
    );

    if (result.code == 200) {
      _updateDataService.telephoneNumber = event.phone;
      _updateDataService.email = event.email;
      emit(const BasicInformationState.saveInformationSuccess());
    } else {
      emit(BasicInformationState.saveInformationFailure(model: result));
    }
  }
}

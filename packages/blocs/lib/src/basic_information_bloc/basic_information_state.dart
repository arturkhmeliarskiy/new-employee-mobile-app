part of 'basic_information_bloc.dart';

@freezed
class BasicInformationState with _$BasicInformationState {
  const factory BasicInformationState.loading() = LoadingBasicInformationState;
  const factory BasicInformationState.saveInformationSuccess() =
      BasicInformationSuccessState;
  const factory BasicInformationState.saveUserImageSuccess() =
      UserImageBasicInformationSuccessState;
  const factory BasicInformationState.saveInformationFailure({
    required MessagesInfoDataModel model,
  }) = BasicInformationFailureState;
  const factory BasicInformationState.saveUserImageFailure({
    required UpdateProfilePhotoDataModel model,
  }) = UserImageBasicInformationFailureState;
}

part of 'basic_information_bloc.dart';

@freezed
class BasicInformationEvent with _$BasicInformationEvent {
  const factory BasicInformationEvent.updateUserProfileData(
    String firstName,
    String lastName,
    String nickName,
    String birthDate,
    String nationality,
  ) = BasicInformationUpdateUserProfileDataEvent;
  const factory BasicInformationEvent.updateUserContactData(
    String phone,
    String email,
  ) = BasicInformationUpdateUserContactDataEvent;
  const factory BasicInformationEvent.updateUserImage() =
      BasicInformationUpdateUserImageEvent;
}

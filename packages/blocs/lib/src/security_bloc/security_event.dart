part of 'security_bloc.dart';

@freezed
class SecurityEvent with _$SecurityEvent {
  const factory SecurityEvent.updateUserPassword(
    String oldPassword,
    String newPassword,
    String confirmPassword,
  ) = UpdateUserPasswordSecurityEvent;
  const factory SecurityEvent.updateIsPinCode(
    bool isPinCode,
  ) = UpdateIsPinCodeSecurityEvent;
}

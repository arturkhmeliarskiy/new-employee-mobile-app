part of 'pin_code_bloc.dart';

@freezed
class PinCodeEvent with _$PinCodeEvent {
  const factory PinCodeEvent.pinCodeRequest(
    String pinCode,
  ) = PinCodeRequestedEvent;
  const factory PinCodeEvent.biometricRequest() = BiometricRequestEvent;
  const factory PinCodeEvent.forgotPinCode() = ForgotPinCodeEvent;
}

part of 'reg_pin_code_bloc.dart';

@freezed
class RegPinCodeEvent with _$RegPinCodeEvent {
  const factory RegPinCodeEvent.regPinCodeRequest(
    String pinCode,
  ) = RegPinCodeRequestedEvent;
  const factory RegPinCodeEvent.init() = InitRegPinCodeEvent;
}

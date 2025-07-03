part of 'repeat_reg_pin_code_bloc.dart';

@freezed
class RepeatRegPinCodeEvent with _$RepeatRegPinCodeEvent {
  const factory RepeatRegPinCodeEvent.repeatRegPinCodeRequest(
    String pinCode,
    String repeatPinCode,
  ) = RepeatRegPinCodeRequestedEvent;
  const factory RepeatRegPinCodeEvent.init() = InitRepeatRegPinCodeEvent;
}

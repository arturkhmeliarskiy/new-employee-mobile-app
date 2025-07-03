part of 'repeat_reg_pin_code_bloc.dart';

@freezed
class RepeatRegPinCodeState with _$RepeatRegPinCodeState {
  factory RepeatRegPinCodeState.repeatRegPinCodeInitial() =
      InitRepeatRegPinCodeState;
  factory RepeatRegPinCodeState.successRepeatPinCode() =
      SuccessRepeatRegPinCodeState;
  factory RepeatRegPinCodeState.failRepeatPinCode() = FailRepeatRegPinCodeState;
  factory RepeatRegPinCodeState.load() = LoadingRepeatRegPinCodeState;
}

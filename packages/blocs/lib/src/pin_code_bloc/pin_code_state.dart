part of 'pin_code_bloc.dart';

@freezed
class PinCodeState with _$PinCodeState {
  const factory PinCodeState.init() = InitPinCodeState;
  const factory PinCodeState.successPinCode() = SuccessPinCode;
  const factory PinCodeState.failPinCode() = FailPinCode;
  const factory PinCodeState.loading() = LoadingPinCodeState;
  const factory PinCodeState.forgotPinCode() = ForgotPinCodeState;
}

part of 'reg_pin_code_bloc.dart';

@freezed
class RegPinCodeState with _$RegPinCodeState {
  factory RegPinCodeState.init() = InitRegPinCodeState;
  factory RegPinCodeState.successRegPinCode({
    required String pinCode,
  }) = SuccessRegPinCodeState;
  factory RegPinCodeState.loading() = LoadingRegPinCodeState;
}

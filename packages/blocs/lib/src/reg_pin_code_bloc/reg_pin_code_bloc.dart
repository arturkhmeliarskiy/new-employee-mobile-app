import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reg_pin_code_bloc.freezed.dart';
part 'reg_pin_code_event.dart';
part 'reg_pin_code_state.dart';

@injectable
class RegPinCodeBloc extends Bloc<RegPinCodeEvent, RegPinCodeState> {
  RegPinCodeBloc() : super(RegPinCodeState.init()) {
    on<RegPinCodeRequestedEvent>(_handlePinCodeRequestedEvent);
    on<InitRegPinCodeEvent>(_initRegPinCodeEvent);
  }

  Future<void> _initRegPinCodeEvent(
    InitRegPinCodeEvent event,
    Emitter<RegPinCodeState> emit,
  ) async {
    emit(RegPinCodeState.init());
  }

  Future<void> _handlePinCodeRequestedEvent(
    RegPinCodeRequestedEvent event,
    Emitter<RegPinCodeState> emit,
  ) async {
    if (event.pinCode.length == 5) {
      emit(
        RegPinCodeState.successRegPinCode(
          pinCode: event.pinCode,
        ),
      );
    }
  }
}

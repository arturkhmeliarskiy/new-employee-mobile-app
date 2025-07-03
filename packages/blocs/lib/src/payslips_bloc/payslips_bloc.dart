import 'dart:convert';
import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repositories/repositories.dart';
import 'package:view_models/view_models.dart';

part 'payslips_bloc.freezed.dart';
part 'payslips_event.dart';
part 'payslips_state.dart';

class PayslipsBloc extends Bloc<PayslipsEvent, PayslipsState> {
  final PayslipsRepository _payslipsRepository;
  final ProfileRepository _profileRepository;
  late PayslipsDataModel model;

  PayslipsBloc(
    this._payslipsRepository,
    this._profileRepository,
  ) : super(const PayslipsState.loading()) {
    on<GetPayslipEvent>(getPayslip);
    on<GetFilePayslipEvent>(getFile);
  }

  Future<void> getFile(
    GetFilePayslipEvent event,
    Emitter<PayslipsState> emit,
  ) async {
    emit(const PayslipsState.loadingFile());
    emit(
      PayslipsState.getResponse(
        data: model.agencys,
      ),
    );
    final fileName = event.link.substring(event.link.lastIndexOf('/') + 1);
    final type =
        fileName.substring(fileName.lastIndexOf('.') + 1).toLowerCase();
    final base64Image = await _profileRepository.getBase64Image(event.link);
    if (base64Image.code == 200) {
      final file = const Base64Decoder().convert(base64Image.file ?? '');
      emit(PayslipsState.getFile(nameFile: fileName, file: file, type: type));
      emit(
        PayslipsState.getResponse(
          data: model.agencys,
        ),
      );
    } else {
      emit(
        PayslipsState.error(
          message: 'tigris_file_preview.file_retrieval_error'.tr(),
        ),
      );
      emit(
        PayslipsState.getResponse(
          data: model.agencys,
        ),
      );
    }
  }

  Future<void> getPayslip(
    GetPayslipEvent event,
    Emitter<PayslipsState> emit,
  ) async {
    emit(const PayslipsState.loading());
    final response = await _payslipsRepository.getPayslip(
      event.year,
      event.isAnnualStatement,
    );
    if (response.code == 200) {
      model = response;
      emit(
        PayslipsState.getResponse(
          data: response.agencys,
        ),
      );
    } else {
      emit(
        PayslipsState.error(message: response.message),
      );
    }
  }
}

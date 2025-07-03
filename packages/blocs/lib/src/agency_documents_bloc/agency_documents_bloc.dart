import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:view_models/view_models.dart';

part 'agency_documents_bloc.freezed.dart';
part 'agency_documents_event.dart';
part 'agency_documents_state.dart';

@injectable
class AgencyDocumentsBloc
    extends Bloc<AgencyDocumentsEvent, AgencyDocumentsState> {
  final ProfileRepository _profileRepository;
  List<List<AgencyFilesInfoDataModel>> agencyDocuments = [];

  AgencyDocumentsBloc(
    this._profileRepository,
  ) : super(const AgencyDocumentsState.loading()) {
    on<InitAgencyDocumentsEvent>(
      _initAgencyDocuments,
    );
    on<LoadFileAgencyDocumentsEvent>(_loadFile);
  }

  Future<void> _initAgencyDocuments(
    InitAgencyDocumentsEvent event,
    Emitter<AgencyDocumentsState> emit,
  ) async {
    emit(const AgencyDocumentsState.loading());
    agencyDocuments.clear();
    final result = await _profileRepository.getAgencyFiles();

    if (result.code == 200) {
      final agencyDocumentsPerEmployeeId =
          <String, List<AgencyFilesInfoDataModel>>{};

      for (int numberDocument = 0;
          numberDocument < result.files.length;
          numberDocument++) {
        final employeeId = result.files[numberDocument].employeeId;
        if (!agencyDocumentsPerEmployeeId.containsKey(employeeId)) {
          agencyDocumentsPerEmployeeId[employeeId] =
              <AgencyFilesInfoDataModel>[];
        }
        agencyDocumentsPerEmployeeId[employeeId]
            ?.add(result.files[numberDocument]);
      }

      agencyDocumentsPerEmployeeId.forEach((key, value) {
        agencyDocuments.add(value);
      });
      emit(
        AgencyDocumentsState.init(
          model: agencyDocuments,
        ),
      );
    } else {
      if (result.code == 1009) {
        emit(
          AgencyDocumentsState.message(message: 'no_internet_connection'.tr()),
        );
      }
    }
  }

  Future<void> _loadFile(
    LoadFileAgencyDocumentsEvent event,
    Emitter<AgencyDocumentsState> emit,
  ) async {
    emit(const AgencyDocumentsState.loading());

    final base64Image =
        await _profileRepository.getBase64AgencyFile(event.file.id);
    if (base64Image.code == 200) {
      final file = const Base64Decoder().convert(base64Image.file ?? '');

      emit(
        AgencyDocumentsState.openFile(
          nameFile: event.file.name,
          file: file,
          type: event.file.type.toLowerCase(),
        ),
      );
    } else {
      emit(
        AgencyDocumentsState.message(
          message: 'tigris_file_preview.file_retrieval_error'.tr(),
        ),
      );
    }
  }
}

import 'dart:convert';
import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:view_models/view_models.dart';

part 'my_documents_bloc.freezed.dart';
part 'my_documents_event.dart';
part 'my_documents_state.dart';

@injectable
class MyDocumentsBloc extends Bloc<MyDocumentsEvent, MyDocumentsState> {
  final ProfileRepository _profileRepository;
  final AppBloc _appBloc;
  final List<FilesInfoDataModel> allFilesCV = [];
  final List<FilesInfoDataModel> allFiles = [];
  final visibleFiles = <FilesInfoDataModel>[];
  List<FilesInfoDataModel> allFilesResponse = [];

  MyDocumentsBloc(
    this._profileRepository,
    this._appBloc,
  ) : super(const MyDocumentsState.loading()) {
    on<InitMyDocumentsEvent>(_initMyDocuments);
    on<_AddMyFilesEvent>(_handleAddMyFile);
    on<LoadFileMyDocumentsEvent>(_loadFile);
    on<DeleteFileMyDocumentsEvent>(_deleteFile);
    on<ShareFileMyDocumentsEvent>(_shareFile);
  }

  Future<void> _initMyDocuments(
    InitMyDocumentsEvent event,
    Emitter<MyDocumentsState> emit,
  ) async {
    emit(
      const MyDocumentsState.loading(),
    );
    allFiles.clear();
    allFilesCV.clear();
    visibleFiles.clear();

    final myFiles = await _profileRepository.getMyFiles();
    allFilesResponse = myFiles.files;
    final sharedFiles = <FilesInfoDataModel>[];
    final notSharedFiles = <FilesInfoDataModel>[];

    myFiles.files.forEach((element) {
      if (element.isShared) {
        sharedFiles.add(element);
      } else if (element.parentCloudFileId.isEmpty) {
        notSharedFiles.add(element);
      }
    });

    notSharedFiles.forEach((file) {
      final onAgencysParent = file.sharedAgencys;
      sharedFiles.forEach((element) {
        if (element.parentCloudFileId == file.id) {
          onAgencysParent.add(element.employeeId);
        }
      });
      if (onAgencysParent.isNotEmpty) {
        final newFile = FilesInfoDataModel(
          id: file.id,
          name: file.name,
          type: file.type,
          path: file.path,
          isShared: true,
          expirationDate: file.expirationDate,
          typeDocument: file.typeDocument,
          createdAt: file.createdAt,
          size: file.size,
          parentCloudFileId: file.parentCloudFileId,
          employeeId: '',
          sharedAgencys: onAgencysParent,
        );
        visibleFiles.add(newFile);
      } else {
        visibleFiles.add(file);
      }
    });

    visibleFiles.forEach((element) {
      if (element.typeDocument == 'CV') {
        allFilesCV.add(element);
      } else {
        allFiles.add(element);
      }
    });
    emit(const MyDocumentsState.loadingClose());
    emit(
      MyDocumentsState.init(
        allFilesDataModel: allFiles,
        allFilesCVDataModel: allFilesCV,
        workInfo: _appBloc.getWorkInfoModel,
      ),
    );
  }

  Future<void> _handleAddMyFile(
    _AddMyFilesEvent event,
    Emitter<MyDocumentsState> emit,
  ) async {
    emit(
      const MyDocumentsState.loading(),
    );
    final result = await _profileRepository.postMyFile(
      event.expirationDate,
      event.typeDocument,
      event.shareWithAgency,
    );
    if (result.code == 200) {
      emit(const MyDocumentsState.loadingClose());
      emit(
        MyDocumentsState.addMyFileSuccess(
          model: MessagesInfoAddFileDataModel(
            code: result.code,
            message:
                'my_documents_modal_window.message_successfully_saved'.tr(),
            added: result.added,
          ),
        ),
      );
      add(MyDocumentsEvent.init());
    } else {
      emit(const MyDocumentsState.loadingClose());
      emit(MyDocumentsState.addMyFileFailure(model: result));
      add(MyDocumentsEvent.init());
    }
  }

  Future<void> _loadFile(
    LoadFileMyDocumentsEvent event,
    Emitter<MyDocumentsState> emit,
  ) async {
    emit(
      const MyDocumentsState.loading(),
    );
    String typeFile = '';
    final fileName =
        event.file.name.substring(event.file.name.lastIndexOf('/') + 1);
    if (fileName.lastIndexOf('.') + 1 != 0) {
      typeFile =
          fileName.substring(fileName.lastIndexOf('.') + 1).toLowerCase();
    } else {
      typeFile = event.file.type.toLowerCase();
    }
    final base64File = await _profileRepository.getBase64MyFiles(event.file.id);
    if (base64File.code == 200) {
      final file = const Base64Decoder().convert(base64File.file ?? '');
      emit(const MyDocumentsState.loadingClose());
      emit(
        MyDocumentsState.openFile(
          nameFile: fileName,
          file: file,
          type: typeFile,
        ),
      );
    } else {
      emit(
        MyDocumentsState.message(
          message: 'tigris_file_preview.file_retrieval_error'.tr(),
        ),
      );
    }
  }

  Future<void> _deleteFile(
    DeleteFileMyDocumentsEvent event,
    Emitter<MyDocumentsState> emit,
  ) async {
    emit(
      const MyDocumentsState.loading(),
    );

    final response =
        await _profileRepository.deleteMyFileId(event.nameFile, event.id);
    if (response.code == 200) {
      emit(const MyDocumentsState.loadingClose());

      emit(
        MyDocumentsState.addMyFileSuccess(
          model: MessagesInfoAddFileDataModel(
            added: [],
            code: response.code,
            message: response.message,
          ),
        ),
      );
      add(MyDocumentsEvent.init());
    } else {
      emit(
        MyDocumentsState.message(
          message: 'file deletion error'.tr(),
        ),
      );
    }
  }

  Future<void> _shareFile(
    ShareFileMyDocumentsEvent event,
    Emitter<MyDocumentsState> emit,
  ) async {
    emit(
      const MyDocumentsState.loading(),
    );

    final response =
        await _profileRepository.shareFile(event.file.id, event.idAgency);
    if (response.code != 200) {
      emit(const MyDocumentsState.loadingClose());
      emit(
        MyDocumentsState.message(
          message: response.message,
        ),
      );
    } else {
      add(MyDocumentsEvent.init());
    }
  }
}

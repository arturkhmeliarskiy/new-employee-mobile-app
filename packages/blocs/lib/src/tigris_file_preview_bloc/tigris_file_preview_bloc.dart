import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'tigris_file_preview_bloc.freezed.dart';
part 'tigris_file_preview_event.dart';
part 'tigris_file_preview_state.dart';

class TigrisFilePreviewBloc
    extends Bloc<TigrisFilePreviewEvent, TigrisFilePreviewState> {
  String linkFile = '';
  String typeFile = '';
  String dir = '';

  TigrisFilePreviewBloc() : super(const TigrisFilePreviewState.init()) {
    on<GetFileTigrisFilePreviewEvent>(getFile);
    on<SaveFileTigrisFilePreviewEvent>(_saveFile);
  }

  Future<void> getFile(
    GetFileTigrisFilePreviewEvent event,
    Emitter<TigrisFilePreviewState> emit,
  ) async {
    emit(
      const TigrisFilePreviewState.init(),
    );

    typeFile = event.type.toLowerCase();

    if (typeFile == 'pdf' ||
        typeFile == 'jpg' ||
        typeFile == 'png' ||
        typeFile == 'jpeg') {
      emit(
        TigrisFilePreviewState.loadFile(
          file: event.data,
          fileName: event.nameFile,
          type: typeFile,
        ),
      );
    } else {
      emit(TigrisFilePreviewState.fileIsNotSupported(fileName: event.nameFile));
    }
  }

  Future<void> _saveFile(
    SaveFileTigrisFilePreviewEvent event,
    Emitter<TigrisFilePreviewState> emit,
  ) async {
    String result;
    String fileName = '';

    if (dir.isEmpty) {
      try {} catch (e) {
        dir = '';
      }
    }
    if (dir.isEmpty) {
      result = 'tigris_file_preview.folder_not_selected'.tr();
    } else {
      final bytes = event.data.buffer.asInt8List();

      if (event.nameFile.lastIndexOf(typeFile) == -1) {
        fileName = '${event.nameFile}.$typeFile';
      } else {
        fileName = event.nameFile;
      }

      final File file = File('$dir/$fileName');
      final status = await Permission.storage.status;
      if (status.isDenied) {
        await Permission.storage.request();
      }
      await file.writeAsBytes(bytes);
      result =
          '${'tigris_file_preview.the_file_is_saved_in'.tr()} $dir/$fileName';
    }
    emit(const TigrisFilePreviewState.init());
    emit(TigrisFilePreviewState.saveFile(message: result));
  }
}

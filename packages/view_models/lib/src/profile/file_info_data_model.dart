import 'dart:typed_data';

class FileInfoDataModel {
  final Uint8List uint8list;
  final double sizeInMb;

  FileInfoDataModel({
    required this.uint8list,
    required this.sizeInMb,
  });
}

import 'dart:typed_data';

class UpdateProfilePhotoDataModel {
  final int code;
  final String message;
  final Uint8List uint8list;

  UpdateProfilePhotoDataModel({
    required this.code,
    required this.message,
    required this.uint8list,
  });
}

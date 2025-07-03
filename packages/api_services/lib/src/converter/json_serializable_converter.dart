import 'dart:typed_data';

import 'package:api_services/src/models/auth_response_model.dart';
import 'package:chopper/chopper.dart';

final Map<Object, Object Function(Map<String, Object?>)> jsonDecoderMappings = {
  AuthResponseModel: AuthResponseModel.fromJsonFactory,
};

class JsonSerializableConverter extends JsonConverter {
  final CustomJsonDecoder jsonDecoder = CustomJsonDecoder(jsonDecoderMappings);

  @override
  Request convertRequest(Request request) =>
      (request.body is Uint8List || request.body is Int8List)
          ? request
          : super.convertRequest(request);

  @override
  Response<ResultType> convertResponse<ResultType, Item>(
    Response<dynamic> response,
  ) {
    if (response.bodyString.isEmpty) {
      return Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse<Object, Item>(response);

    return jsonRes.copyWith<ResultType>(
      body: jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

class CustomJsonDecoder {
  final Map<Object, JsonFactory<Object?>> factories;

  CustomJsonDecoder(this.factories);

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      // ignore: only_throw_errors
      return throw 'Could not find factory for type $T. Is $T: $T.fromJsonFactory included in the CustomJsonDecoder instance creation in bootstrapper.dart?';
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable<Object?> values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

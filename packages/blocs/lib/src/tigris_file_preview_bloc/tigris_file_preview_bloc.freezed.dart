// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tigris_file_preview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TigrisFilePreviewEventTearOff {
  const _$TigrisFilePreviewEventTearOff();

  GetFileTigrisFilePreviewEvent getFile(
      {required String nameFile,
      required Uint8List data,
      required String type}) {
    return GetFileTigrisFilePreviewEvent(
      nameFile: nameFile,
      data: data,
      type: type,
    );
  }

  SaveFileTigrisFilePreviewEvent saveFile(
      {required String nameFile, required Uint8List data}) {
    return SaveFileTigrisFilePreviewEvent(
      nameFile: nameFile,
      data: data,
    );
  }

  DeleteFileInCacheTigrisFilePreviewEvent fileNotSupported(
      {required String nameFile}) {
    return DeleteFileInCacheTigrisFilePreviewEvent(
      nameFile: nameFile,
    );
  }
}

/// @nodoc
const $TigrisFilePreviewEvent = _$TigrisFilePreviewEventTearOff();

/// @nodoc
mixin _$TigrisFilePreviewEvent {
  String get nameFile => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameFile, Uint8List data, String type)
        getFile,
    required TResult Function(String nameFile, Uint8List data) saveFile,
    required TResult Function(String nameFile) fileNotSupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameFile, Uint8List data, String type)? getFile,
    TResult Function(String nameFile, Uint8List data)? saveFile,
    TResult Function(String nameFile)? fileNotSupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameFile, Uint8List data, String type)? getFile,
    TResult Function(String nameFile, Uint8List data)? saveFile,
    TResult Function(String nameFile)? fileNotSupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFileTigrisFilePreviewEvent value) getFile,
    required TResult Function(SaveFileTigrisFilePreviewEvent value) saveFile,
    required TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)
        fileNotSupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFileTigrisFilePreviewEvent value)? getFile,
    TResult Function(SaveFileTigrisFilePreviewEvent value)? saveFile,
    TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)?
        fileNotSupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFileTigrisFilePreviewEvent value)? getFile,
    TResult Function(SaveFileTigrisFilePreviewEvent value)? saveFile,
    TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)?
        fileNotSupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TigrisFilePreviewEventCopyWith<TigrisFilePreviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TigrisFilePreviewEventCopyWith<$Res> {
  factory $TigrisFilePreviewEventCopyWith(TigrisFilePreviewEvent value,
          $Res Function(TigrisFilePreviewEvent) then) =
      _$TigrisFilePreviewEventCopyWithImpl<$Res>;
  $Res call({String nameFile});
}

/// @nodoc
class _$TigrisFilePreviewEventCopyWithImpl<$Res>
    implements $TigrisFilePreviewEventCopyWith<$Res> {
  _$TigrisFilePreviewEventCopyWithImpl(this._value, this._then);

  final TigrisFilePreviewEvent _value;
  // ignore: unused_field
  final $Res Function(TigrisFilePreviewEvent) _then;

  @override
  $Res call({
    Object? nameFile = freezed,
  }) {
    return _then(_value.copyWith(
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetFileTigrisFilePreviewEventCopyWith<$Res>
    implements $TigrisFilePreviewEventCopyWith<$Res> {
  factory $GetFileTigrisFilePreviewEventCopyWith(
          GetFileTigrisFilePreviewEvent value,
          $Res Function(GetFileTigrisFilePreviewEvent) then) =
      _$GetFileTigrisFilePreviewEventCopyWithImpl<$Res>;
  @override
  $Res call({String nameFile, Uint8List data, String type});
}

/// @nodoc
class _$GetFileTigrisFilePreviewEventCopyWithImpl<$Res>
    extends _$TigrisFilePreviewEventCopyWithImpl<$Res>
    implements $GetFileTigrisFilePreviewEventCopyWith<$Res> {
  _$GetFileTigrisFilePreviewEventCopyWithImpl(
      GetFileTigrisFilePreviewEvent _value,
      $Res Function(GetFileTigrisFilePreviewEvent) _then)
      : super(_value, (v) => _then(v as GetFileTigrisFilePreviewEvent));

  @override
  GetFileTigrisFilePreviewEvent get _value =>
      super._value as GetFileTigrisFilePreviewEvent;

  @override
  $Res call({
    Object? nameFile = freezed,
    Object? data = freezed,
    Object? type = freezed,
  }) {
    return _then(GetFileTigrisFilePreviewEvent(
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFileTigrisFilePreviewEvent implements GetFileTigrisFilePreviewEvent {
  const _$GetFileTigrisFilePreviewEvent(
      {required this.nameFile, required this.data, required this.type});

  @override
  final String nameFile;
  @override
  final Uint8List data;
  @override
  final String type;

  @override
  String toString() {
    return 'TigrisFilePreviewEvent.getFile(nameFile: $nameFile, data: $data, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFileTigrisFilePreviewEvent &&
            const DeepCollectionEquality().equals(other.nameFile, nameFile) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nameFile),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  $GetFileTigrisFilePreviewEventCopyWith<GetFileTigrisFilePreviewEvent>
      get copyWith => _$GetFileTigrisFilePreviewEventCopyWithImpl<
          GetFileTigrisFilePreviewEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameFile, Uint8List data, String type)
        getFile,
    required TResult Function(String nameFile, Uint8List data) saveFile,
    required TResult Function(String nameFile) fileNotSupported,
  }) {
    return getFile(nameFile, data, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameFile, Uint8List data, String type)? getFile,
    TResult Function(String nameFile, Uint8List data)? saveFile,
    TResult Function(String nameFile)? fileNotSupported,
  }) {
    return getFile?.call(nameFile, data, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameFile, Uint8List data, String type)? getFile,
    TResult Function(String nameFile, Uint8List data)? saveFile,
    TResult Function(String nameFile)? fileNotSupported,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(nameFile, data, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFileTigrisFilePreviewEvent value) getFile,
    required TResult Function(SaveFileTigrisFilePreviewEvent value) saveFile,
    required TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)
        fileNotSupported,
  }) {
    return getFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFileTigrisFilePreviewEvent value)? getFile,
    TResult Function(SaveFileTigrisFilePreviewEvent value)? saveFile,
    TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)?
        fileNotSupported,
  }) {
    return getFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFileTigrisFilePreviewEvent value)? getFile,
    TResult Function(SaveFileTigrisFilePreviewEvent value)? saveFile,
    TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)?
        fileNotSupported,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(this);
    }
    return orElse();
  }
}

abstract class GetFileTigrisFilePreviewEvent implements TigrisFilePreviewEvent {
  const factory GetFileTigrisFilePreviewEvent(
      {required String nameFile,
      required Uint8List data,
      required String type}) = _$GetFileTigrisFilePreviewEvent;

  @override
  String get nameFile;
  Uint8List get data;
  String get type;
  @override
  @JsonKey(ignore: true)
  $GetFileTigrisFilePreviewEventCopyWith<GetFileTigrisFilePreviewEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileTigrisFilePreviewEventCopyWith<$Res>
    implements $TigrisFilePreviewEventCopyWith<$Res> {
  factory $SaveFileTigrisFilePreviewEventCopyWith(
          SaveFileTigrisFilePreviewEvent value,
          $Res Function(SaveFileTigrisFilePreviewEvent) then) =
      _$SaveFileTigrisFilePreviewEventCopyWithImpl<$Res>;
  @override
  $Res call({String nameFile, Uint8List data});
}

/// @nodoc
class _$SaveFileTigrisFilePreviewEventCopyWithImpl<$Res>
    extends _$TigrisFilePreviewEventCopyWithImpl<$Res>
    implements $SaveFileTigrisFilePreviewEventCopyWith<$Res> {
  _$SaveFileTigrisFilePreviewEventCopyWithImpl(
      SaveFileTigrisFilePreviewEvent _value,
      $Res Function(SaveFileTigrisFilePreviewEvent) _then)
      : super(_value, (v) => _then(v as SaveFileTigrisFilePreviewEvent));

  @override
  SaveFileTigrisFilePreviewEvent get _value =>
      super._value as SaveFileTigrisFilePreviewEvent;

  @override
  $Res call({
    Object? nameFile = freezed,
    Object? data = freezed,
  }) {
    return _then(SaveFileTigrisFilePreviewEvent(
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$SaveFileTigrisFilePreviewEvent
    implements SaveFileTigrisFilePreviewEvent {
  const _$SaveFileTigrisFilePreviewEvent(
      {required this.nameFile, required this.data});

  @override
  final String nameFile;
  @override
  final Uint8List data;

  @override
  String toString() {
    return 'TigrisFilePreviewEvent.saveFile(nameFile: $nameFile, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveFileTigrisFilePreviewEvent &&
            const DeepCollectionEquality().equals(other.nameFile, nameFile) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nameFile),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $SaveFileTigrisFilePreviewEventCopyWith<SaveFileTigrisFilePreviewEvent>
      get copyWith => _$SaveFileTigrisFilePreviewEventCopyWithImpl<
          SaveFileTigrisFilePreviewEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameFile, Uint8List data, String type)
        getFile,
    required TResult Function(String nameFile, Uint8List data) saveFile,
    required TResult Function(String nameFile) fileNotSupported,
  }) {
    return saveFile(nameFile, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameFile, Uint8List data, String type)? getFile,
    TResult Function(String nameFile, Uint8List data)? saveFile,
    TResult Function(String nameFile)? fileNotSupported,
  }) {
    return saveFile?.call(nameFile, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameFile, Uint8List data, String type)? getFile,
    TResult Function(String nameFile, Uint8List data)? saveFile,
    TResult Function(String nameFile)? fileNotSupported,
    required TResult orElse(),
  }) {
    if (saveFile != null) {
      return saveFile(nameFile, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFileTigrisFilePreviewEvent value) getFile,
    required TResult Function(SaveFileTigrisFilePreviewEvent value) saveFile,
    required TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)
        fileNotSupported,
  }) {
    return saveFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFileTigrisFilePreviewEvent value)? getFile,
    TResult Function(SaveFileTigrisFilePreviewEvent value)? saveFile,
    TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)?
        fileNotSupported,
  }) {
    return saveFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFileTigrisFilePreviewEvent value)? getFile,
    TResult Function(SaveFileTigrisFilePreviewEvent value)? saveFile,
    TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)?
        fileNotSupported,
    required TResult orElse(),
  }) {
    if (saveFile != null) {
      return saveFile(this);
    }
    return orElse();
  }
}

abstract class SaveFileTigrisFilePreviewEvent
    implements TigrisFilePreviewEvent {
  const factory SaveFileTigrisFilePreviewEvent(
      {required String nameFile,
      required Uint8List data}) = _$SaveFileTigrisFilePreviewEvent;

  @override
  String get nameFile;
  Uint8List get data;
  @override
  @JsonKey(ignore: true)
  $SaveFileTigrisFilePreviewEventCopyWith<SaveFileTigrisFilePreviewEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFileInCacheTigrisFilePreviewEventCopyWith<$Res>
    implements $TigrisFilePreviewEventCopyWith<$Res> {
  factory $DeleteFileInCacheTigrisFilePreviewEventCopyWith(
          DeleteFileInCacheTigrisFilePreviewEvent value,
          $Res Function(DeleteFileInCacheTigrisFilePreviewEvent) then) =
      _$DeleteFileInCacheTigrisFilePreviewEventCopyWithImpl<$Res>;
  @override
  $Res call({String nameFile});
}

/// @nodoc
class _$DeleteFileInCacheTigrisFilePreviewEventCopyWithImpl<$Res>
    extends _$TigrisFilePreviewEventCopyWithImpl<$Res>
    implements $DeleteFileInCacheTigrisFilePreviewEventCopyWith<$Res> {
  _$DeleteFileInCacheTigrisFilePreviewEventCopyWithImpl(
      DeleteFileInCacheTigrisFilePreviewEvent _value,
      $Res Function(DeleteFileInCacheTigrisFilePreviewEvent) _then)
      : super(
            _value, (v) => _then(v as DeleteFileInCacheTigrisFilePreviewEvent));

  @override
  DeleteFileInCacheTigrisFilePreviewEvent get _value =>
      super._value as DeleteFileInCacheTigrisFilePreviewEvent;

  @override
  $Res call({
    Object? nameFile = freezed,
  }) {
    return _then(DeleteFileInCacheTigrisFilePreviewEvent(
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFileInCacheTigrisFilePreviewEvent
    implements DeleteFileInCacheTigrisFilePreviewEvent {
  const _$DeleteFileInCacheTigrisFilePreviewEvent({required this.nameFile});

  @override
  final String nameFile;

  @override
  String toString() {
    return 'TigrisFilePreviewEvent.fileNotSupported(nameFile: $nameFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteFileInCacheTigrisFilePreviewEvent &&
            const DeepCollectionEquality().equals(other.nameFile, nameFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameFile));

  @JsonKey(ignore: true)
  @override
  $DeleteFileInCacheTigrisFilePreviewEventCopyWith<
          DeleteFileInCacheTigrisFilePreviewEvent>
      get copyWith => _$DeleteFileInCacheTigrisFilePreviewEventCopyWithImpl<
          DeleteFileInCacheTigrisFilePreviewEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameFile, Uint8List data, String type)
        getFile,
    required TResult Function(String nameFile, Uint8List data) saveFile,
    required TResult Function(String nameFile) fileNotSupported,
  }) {
    return fileNotSupported(nameFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameFile, Uint8List data, String type)? getFile,
    TResult Function(String nameFile, Uint8List data)? saveFile,
    TResult Function(String nameFile)? fileNotSupported,
  }) {
    return fileNotSupported?.call(nameFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameFile, Uint8List data, String type)? getFile,
    TResult Function(String nameFile, Uint8List data)? saveFile,
    TResult Function(String nameFile)? fileNotSupported,
    required TResult orElse(),
  }) {
    if (fileNotSupported != null) {
      return fileNotSupported(nameFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFileTigrisFilePreviewEvent value) getFile,
    required TResult Function(SaveFileTigrisFilePreviewEvent value) saveFile,
    required TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)
        fileNotSupported,
  }) {
    return fileNotSupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFileTigrisFilePreviewEvent value)? getFile,
    TResult Function(SaveFileTigrisFilePreviewEvent value)? saveFile,
    TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)?
        fileNotSupported,
  }) {
    return fileNotSupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFileTigrisFilePreviewEvent value)? getFile,
    TResult Function(SaveFileTigrisFilePreviewEvent value)? saveFile,
    TResult Function(DeleteFileInCacheTigrisFilePreviewEvent value)?
        fileNotSupported,
    required TResult orElse(),
  }) {
    if (fileNotSupported != null) {
      return fileNotSupported(this);
    }
    return orElse();
  }
}

abstract class DeleteFileInCacheTigrisFilePreviewEvent
    implements TigrisFilePreviewEvent {
  const factory DeleteFileInCacheTigrisFilePreviewEvent(
      {required String nameFile}) = _$DeleteFileInCacheTigrisFilePreviewEvent;

  @override
  String get nameFile;
  @override
  @JsonKey(ignore: true)
  $DeleteFileInCacheTigrisFilePreviewEventCopyWith<
          DeleteFileInCacheTigrisFilePreviewEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TigrisFilePreviewStateTearOff {
  const _$TigrisFilePreviewStateTearOff();

  InitTigrisFilePreviewState init() {
    return const InitTigrisFilePreviewState();
  }

  LoadFileTigrisFilePreviewState loadFile(
      {required Uint8List file,
      required String fileName,
      required String type}) {
    return LoadFileTigrisFilePreviewState(
      file: file,
      fileName: fileName,
      type: type,
    );
  }

  SaveFileTigrisFilePreviewState saveFile({required String message}) {
    return SaveFileTigrisFilePreviewState(
      message: message,
    );
  }

  FileIsNotSupportedTigrisFilePreviewState fileIsNotSupported(
      {required String fileName}) {
    return FileIsNotSupportedTigrisFilePreviewState(
      fileName: fileName,
    );
  }

  ErrorFileTigrisFilePreviewState error({required String message}) {
    return ErrorFileTigrisFilePreviewState(
      message: message,
    );
  }
}

/// @nodoc
const $TigrisFilePreviewState = _$TigrisFilePreviewStateTearOff();

/// @nodoc
mixin _$TigrisFilePreviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List file, String fileName, String type)
        loadFile,
    required TResult Function(String message) saveFile,
    required TResult Function(String fileName) fileIsNotSupported,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTigrisFilePreviewState value) init,
    required TResult Function(LoadFileTigrisFilePreviewState value) loadFile,
    required TResult Function(SaveFileTigrisFilePreviewState value) saveFile,
    required TResult Function(FileIsNotSupportedTigrisFilePreviewState value)
        fileIsNotSupported,
    required TResult Function(ErrorFileTigrisFilePreviewState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TigrisFilePreviewStateCopyWith<$Res> {
  factory $TigrisFilePreviewStateCopyWith(TigrisFilePreviewState value,
          $Res Function(TigrisFilePreviewState) then) =
      _$TigrisFilePreviewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TigrisFilePreviewStateCopyWithImpl<$Res>
    implements $TigrisFilePreviewStateCopyWith<$Res> {
  _$TigrisFilePreviewStateCopyWithImpl(this._value, this._then);

  final TigrisFilePreviewState _value;
  // ignore: unused_field
  final $Res Function(TigrisFilePreviewState) _then;
}

/// @nodoc
abstract class $InitTigrisFilePreviewStateCopyWith<$Res> {
  factory $InitTigrisFilePreviewStateCopyWith(InitTigrisFilePreviewState value,
          $Res Function(InitTigrisFilePreviewState) then) =
      _$InitTigrisFilePreviewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitTigrisFilePreviewStateCopyWithImpl<$Res>
    extends _$TigrisFilePreviewStateCopyWithImpl<$Res>
    implements $InitTigrisFilePreviewStateCopyWith<$Res> {
  _$InitTigrisFilePreviewStateCopyWithImpl(InitTigrisFilePreviewState _value,
      $Res Function(InitTigrisFilePreviewState) _then)
      : super(_value, (v) => _then(v as InitTigrisFilePreviewState));

  @override
  InitTigrisFilePreviewState get _value =>
      super._value as InitTigrisFilePreviewState;
}

/// @nodoc

class _$InitTigrisFilePreviewState implements InitTigrisFilePreviewState {
  const _$InitTigrisFilePreviewState();

  @override
  String toString() {
    return 'TigrisFilePreviewState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitTigrisFilePreviewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List file, String fileName, String type)
        loadFile,
    required TResult Function(String message) saveFile,
    required TResult Function(String fileName) fileIsNotSupported,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTigrisFilePreviewState value) init,
    required TResult Function(LoadFileTigrisFilePreviewState value) loadFile,
    required TResult Function(SaveFileTigrisFilePreviewState value) saveFile,
    required TResult Function(FileIsNotSupportedTigrisFilePreviewState value)
        fileIsNotSupported,
    required TResult Function(ErrorFileTigrisFilePreviewState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitTigrisFilePreviewState implements TigrisFilePreviewState {
  const factory InitTigrisFilePreviewState() = _$InitTigrisFilePreviewState;
}

/// @nodoc
abstract class $LoadFileTigrisFilePreviewStateCopyWith<$Res> {
  factory $LoadFileTigrisFilePreviewStateCopyWith(
          LoadFileTigrisFilePreviewState value,
          $Res Function(LoadFileTigrisFilePreviewState) then) =
      _$LoadFileTigrisFilePreviewStateCopyWithImpl<$Res>;
  $Res call({Uint8List file, String fileName, String type});
}

/// @nodoc
class _$LoadFileTigrisFilePreviewStateCopyWithImpl<$Res>
    extends _$TigrisFilePreviewStateCopyWithImpl<$Res>
    implements $LoadFileTigrisFilePreviewStateCopyWith<$Res> {
  _$LoadFileTigrisFilePreviewStateCopyWithImpl(
      LoadFileTigrisFilePreviewState _value,
      $Res Function(LoadFileTigrisFilePreviewState) _then)
      : super(_value, (v) => _then(v as LoadFileTigrisFilePreviewState));

  @override
  LoadFileTigrisFilePreviewState get _value =>
      super._value as LoadFileTigrisFilePreviewState;

  @override
  $Res call({
    Object? file = freezed,
    Object? fileName = freezed,
    Object? type = freezed,
  }) {
    return _then(LoadFileTigrisFilePreviewState(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFileTigrisFilePreviewState
    implements LoadFileTigrisFilePreviewState {
  const _$LoadFileTigrisFilePreviewState(
      {required this.file, required this.fileName, required this.type});

  @override
  final Uint8List file;
  @override
  final String fileName;
  @override
  final String type;

  @override
  String toString() {
    return 'TigrisFilePreviewState.loadFile(file: $file, fileName: $fileName, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFileTigrisFilePreviewState &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  $LoadFileTigrisFilePreviewStateCopyWith<LoadFileTigrisFilePreviewState>
      get copyWith => _$LoadFileTigrisFilePreviewStateCopyWithImpl<
          LoadFileTigrisFilePreviewState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List file, String fileName, String type)
        loadFile,
    required TResult Function(String message) saveFile,
    required TResult Function(String fileName) fileIsNotSupported,
    required TResult Function(String message) error,
  }) {
    return loadFile(file, fileName, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
  }) {
    return loadFile?.call(file, fileName, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadFile != null) {
      return loadFile(file, fileName, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTigrisFilePreviewState value) init,
    required TResult Function(LoadFileTigrisFilePreviewState value) loadFile,
    required TResult Function(SaveFileTigrisFilePreviewState value) saveFile,
    required TResult Function(FileIsNotSupportedTigrisFilePreviewState value)
        fileIsNotSupported,
    required TResult Function(ErrorFileTigrisFilePreviewState value) error,
  }) {
    return loadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
  }) {
    return loadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
    required TResult orElse(),
  }) {
    if (loadFile != null) {
      return loadFile(this);
    }
    return orElse();
  }
}

abstract class LoadFileTigrisFilePreviewState
    implements TigrisFilePreviewState {
  const factory LoadFileTigrisFilePreviewState(
      {required Uint8List file,
      required String fileName,
      required String type}) = _$LoadFileTigrisFilePreviewState;

  Uint8List get file;
  String get fileName;
  String get type;
  @JsonKey(ignore: true)
  $LoadFileTigrisFilePreviewStateCopyWith<LoadFileTigrisFilePreviewState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileTigrisFilePreviewStateCopyWith<$Res> {
  factory $SaveFileTigrisFilePreviewStateCopyWith(
          SaveFileTigrisFilePreviewState value,
          $Res Function(SaveFileTigrisFilePreviewState) then) =
      _$SaveFileTigrisFilePreviewStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$SaveFileTigrisFilePreviewStateCopyWithImpl<$Res>
    extends _$TigrisFilePreviewStateCopyWithImpl<$Res>
    implements $SaveFileTigrisFilePreviewStateCopyWith<$Res> {
  _$SaveFileTigrisFilePreviewStateCopyWithImpl(
      SaveFileTigrisFilePreviewState _value,
      $Res Function(SaveFileTigrisFilePreviewState) _then)
      : super(_value, (v) => _then(v as SaveFileTigrisFilePreviewState));

  @override
  SaveFileTigrisFilePreviewState get _value =>
      super._value as SaveFileTigrisFilePreviewState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SaveFileTigrisFilePreviewState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveFileTigrisFilePreviewState
    implements SaveFileTigrisFilePreviewState {
  const _$SaveFileTigrisFilePreviewState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TigrisFilePreviewState.saveFile(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveFileTigrisFilePreviewState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $SaveFileTigrisFilePreviewStateCopyWith<SaveFileTigrisFilePreviewState>
      get copyWith => _$SaveFileTigrisFilePreviewStateCopyWithImpl<
          SaveFileTigrisFilePreviewState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List file, String fileName, String type)
        loadFile,
    required TResult Function(String message) saveFile,
    required TResult Function(String fileName) fileIsNotSupported,
    required TResult Function(String message) error,
  }) {
    return saveFile(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
  }) {
    return saveFile?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (saveFile != null) {
      return saveFile(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTigrisFilePreviewState value) init,
    required TResult Function(LoadFileTigrisFilePreviewState value) loadFile,
    required TResult Function(SaveFileTigrisFilePreviewState value) saveFile,
    required TResult Function(FileIsNotSupportedTigrisFilePreviewState value)
        fileIsNotSupported,
    required TResult Function(ErrorFileTigrisFilePreviewState value) error,
  }) {
    return saveFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
  }) {
    return saveFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
    required TResult orElse(),
  }) {
    if (saveFile != null) {
      return saveFile(this);
    }
    return orElse();
  }
}

abstract class SaveFileTigrisFilePreviewState
    implements TigrisFilePreviewState {
  const factory SaveFileTigrisFilePreviewState({required String message}) =
      _$SaveFileTigrisFilePreviewState;

  String get message;
  @JsonKey(ignore: true)
  $SaveFileTigrisFilePreviewStateCopyWith<SaveFileTigrisFilePreviewState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileIsNotSupportedTigrisFilePreviewStateCopyWith<$Res> {
  factory $FileIsNotSupportedTigrisFilePreviewStateCopyWith(
          FileIsNotSupportedTigrisFilePreviewState value,
          $Res Function(FileIsNotSupportedTigrisFilePreviewState) then) =
      _$FileIsNotSupportedTigrisFilePreviewStateCopyWithImpl<$Res>;
  $Res call({String fileName});
}

/// @nodoc
class _$FileIsNotSupportedTigrisFilePreviewStateCopyWithImpl<$Res>
    extends _$TigrisFilePreviewStateCopyWithImpl<$Res>
    implements $FileIsNotSupportedTigrisFilePreviewStateCopyWith<$Res> {
  _$FileIsNotSupportedTigrisFilePreviewStateCopyWithImpl(
      FileIsNotSupportedTigrisFilePreviewState _value,
      $Res Function(FileIsNotSupportedTigrisFilePreviewState) _then)
      : super(_value,
            (v) => _then(v as FileIsNotSupportedTigrisFilePreviewState));

  @override
  FileIsNotSupportedTigrisFilePreviewState get _value =>
      super._value as FileIsNotSupportedTigrisFilePreviewState;

  @override
  $Res call({
    Object? fileName = freezed,
  }) {
    return _then(FileIsNotSupportedTigrisFilePreviewState(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileIsNotSupportedTigrisFilePreviewState
    implements FileIsNotSupportedTigrisFilePreviewState {
  const _$FileIsNotSupportedTigrisFilePreviewState({required this.fileName});

  @override
  final String fileName;

  @override
  String toString() {
    return 'TigrisFilePreviewState.fileIsNotSupported(fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileIsNotSupportedTigrisFilePreviewState &&
            const DeepCollectionEquality().equals(other.fileName, fileName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fileName));

  @JsonKey(ignore: true)
  @override
  $FileIsNotSupportedTigrisFilePreviewStateCopyWith<
          FileIsNotSupportedTigrisFilePreviewState>
      get copyWith => _$FileIsNotSupportedTigrisFilePreviewStateCopyWithImpl<
          FileIsNotSupportedTigrisFilePreviewState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List file, String fileName, String type)
        loadFile,
    required TResult Function(String message) saveFile,
    required TResult Function(String fileName) fileIsNotSupported,
    required TResult Function(String message) error,
  }) {
    return fileIsNotSupported(fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
  }) {
    return fileIsNotSupported?.call(fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fileIsNotSupported != null) {
      return fileIsNotSupported(fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTigrisFilePreviewState value) init,
    required TResult Function(LoadFileTigrisFilePreviewState value) loadFile,
    required TResult Function(SaveFileTigrisFilePreviewState value) saveFile,
    required TResult Function(FileIsNotSupportedTigrisFilePreviewState value)
        fileIsNotSupported,
    required TResult Function(ErrorFileTigrisFilePreviewState value) error,
  }) {
    return fileIsNotSupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
  }) {
    return fileIsNotSupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
    required TResult orElse(),
  }) {
    if (fileIsNotSupported != null) {
      return fileIsNotSupported(this);
    }
    return orElse();
  }
}

abstract class FileIsNotSupportedTigrisFilePreviewState
    implements TigrisFilePreviewState {
  const factory FileIsNotSupportedTigrisFilePreviewState(
      {required String fileName}) = _$FileIsNotSupportedTigrisFilePreviewState;

  String get fileName;
  @JsonKey(ignore: true)
  $FileIsNotSupportedTigrisFilePreviewStateCopyWith<
          FileIsNotSupportedTigrisFilePreviewState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorFileTigrisFilePreviewStateCopyWith<$Res> {
  factory $ErrorFileTigrisFilePreviewStateCopyWith(
          ErrorFileTigrisFilePreviewState value,
          $Res Function(ErrorFileTigrisFilePreviewState) then) =
      _$ErrorFileTigrisFilePreviewStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorFileTigrisFilePreviewStateCopyWithImpl<$Res>
    extends _$TigrisFilePreviewStateCopyWithImpl<$Res>
    implements $ErrorFileTigrisFilePreviewStateCopyWith<$Res> {
  _$ErrorFileTigrisFilePreviewStateCopyWithImpl(
      ErrorFileTigrisFilePreviewState _value,
      $Res Function(ErrorFileTigrisFilePreviewState) _then)
      : super(_value, (v) => _then(v as ErrorFileTigrisFilePreviewState));

  @override
  ErrorFileTigrisFilePreviewState get _value =>
      super._value as ErrorFileTigrisFilePreviewState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorFileTigrisFilePreviewState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFileTigrisFilePreviewState
    implements ErrorFileTigrisFilePreviewState {
  const _$ErrorFileTigrisFilePreviewState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TigrisFilePreviewState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorFileTigrisFilePreviewState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorFileTigrisFilePreviewStateCopyWith<ErrorFileTigrisFilePreviewState>
      get copyWith => _$ErrorFileTigrisFilePreviewStateCopyWithImpl<
          ErrorFileTigrisFilePreviewState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List file, String fileName, String type)
        loadFile,
    required TResult Function(String message) saveFile,
    required TResult Function(String fileName) fileIsNotSupported,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List file, String fileName, String type)? loadFile,
    TResult Function(String message)? saveFile,
    TResult Function(String fileName)? fileIsNotSupported,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTigrisFilePreviewState value) init,
    required TResult Function(LoadFileTigrisFilePreviewState value) loadFile,
    required TResult Function(SaveFileTigrisFilePreviewState value) saveFile,
    required TResult Function(FileIsNotSupportedTigrisFilePreviewState value)
        fileIsNotSupported,
    required TResult Function(ErrorFileTigrisFilePreviewState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTigrisFilePreviewState value)? init,
    TResult Function(LoadFileTigrisFilePreviewState value)? loadFile,
    TResult Function(SaveFileTigrisFilePreviewState value)? saveFile,
    TResult Function(FileIsNotSupportedTigrisFilePreviewState value)?
        fileIsNotSupported,
    TResult Function(ErrorFileTigrisFilePreviewState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorFileTigrisFilePreviewState
    implements TigrisFilePreviewState {
  const factory ErrorFileTigrisFilePreviewState({required String message}) =
      _$ErrorFileTigrisFilePreviewState;

  String get message;
  @JsonKey(ignore: true)
  $ErrorFileTigrisFilePreviewStateCopyWith<ErrorFileTigrisFilePreviewState>
      get copyWith => throw _privateConstructorUsedError;
}

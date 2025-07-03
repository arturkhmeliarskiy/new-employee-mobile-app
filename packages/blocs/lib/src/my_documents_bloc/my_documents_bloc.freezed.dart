// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyDocumentsEventTearOff {
  const _$MyDocumentsEventTearOff();

  InitMyDocumentsEvent init() {
    return InitMyDocumentsEvent();
  }

  _AddMyFilesEvent addMyFiles(
      String expirationDate, String typeDocument, bool shareWithAgency) {
    return _AddMyFilesEvent(
      expirationDate,
      typeDocument,
      shareWithAgency,
    );
  }

  _OpenMyFilesEvent openMyFiles() {
    return _OpenMyFilesEvent();
  }

  LoadFileMyDocumentsEvent loadFile({required FilesInfoDataModel file}) {
    return LoadFileMyDocumentsEvent(
      file: file,
    );
  }

  DeleteFileMyDocumentsEvent deleteFile(
      {required String id, required String nameFile}) {
    return DeleteFileMyDocumentsEvent(
      id: id,
      nameFile: nameFile,
    );
  }

  ShareFileMyDocumentsEvent shareFile(
      {required bool share,
      required FilesInfoDataModel file,
      required String idAgency}) {
    return ShareFileMyDocumentsEvent(
      share: share,
      file: file,
      idAgency: idAgency,
    );
  }
}

/// @nodoc
const $MyDocumentsEvent = _$MyDocumentsEventTearOff();

/// @nodoc
mixin _$MyDocumentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)
        addMyFiles,
    required TResult Function() openMyFiles,
    required TResult Function(FilesInfoDataModel file) loadFile,
    required TResult Function(String id, String nameFile) deleteFile,
    required TResult Function(
            bool share, FilesInfoDataModel file, String idAgency)
        shareFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMyDocumentsEvent value) init,
    required TResult Function(_AddMyFilesEvent value) addMyFiles,
    required TResult Function(_OpenMyFilesEvent value) openMyFiles,
    required TResult Function(LoadFileMyDocumentsEvent value) loadFile,
    required TResult Function(DeleteFileMyDocumentsEvent value) deleteFile,
    required TResult Function(ShareFileMyDocumentsEvent value) shareFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDocumentsEventCopyWith<$Res> {
  factory $MyDocumentsEventCopyWith(
          MyDocumentsEvent value, $Res Function(MyDocumentsEvent) then) =
      _$MyDocumentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyDocumentsEventCopyWithImpl<$Res>
    implements $MyDocumentsEventCopyWith<$Res> {
  _$MyDocumentsEventCopyWithImpl(this._value, this._then);

  final MyDocumentsEvent _value;
  // ignore: unused_field
  final $Res Function(MyDocumentsEvent) _then;
}

/// @nodoc
abstract class $InitMyDocumentsEventCopyWith<$Res> {
  factory $InitMyDocumentsEventCopyWith(InitMyDocumentsEvent value,
          $Res Function(InitMyDocumentsEvent) then) =
      _$InitMyDocumentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitMyDocumentsEventCopyWithImpl<$Res>
    extends _$MyDocumentsEventCopyWithImpl<$Res>
    implements $InitMyDocumentsEventCopyWith<$Res> {
  _$InitMyDocumentsEventCopyWithImpl(
      InitMyDocumentsEvent _value, $Res Function(InitMyDocumentsEvent) _then)
      : super(_value, (v) => _then(v as InitMyDocumentsEvent));

  @override
  InitMyDocumentsEvent get _value => super._value as InitMyDocumentsEvent;
}

/// @nodoc

class _$InitMyDocumentsEvent implements InitMyDocumentsEvent {
  _$InitMyDocumentsEvent();

  @override
  String toString() {
    return 'MyDocumentsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitMyDocumentsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)
        addMyFiles,
    required TResult Function() openMyFiles,
    required TResult Function(FilesInfoDataModel file) loadFile,
    required TResult Function(String id, String nameFile) deleteFile,
    required TResult Function(
            bool share, FilesInfoDataModel file, String idAgency)
        shareFile,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
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
    required TResult Function(InitMyDocumentsEvent value) init,
    required TResult Function(_AddMyFilesEvent value) addMyFiles,
    required TResult Function(_OpenMyFilesEvent value) openMyFiles,
    required TResult Function(LoadFileMyDocumentsEvent value) loadFile,
    required TResult Function(DeleteFileMyDocumentsEvent value) deleteFile,
    required TResult Function(ShareFileMyDocumentsEvent value) shareFile,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitMyDocumentsEvent implements MyDocumentsEvent {
  factory InitMyDocumentsEvent() = _$InitMyDocumentsEvent;
}

/// @nodoc
abstract class _$AddMyFilesEventCopyWith<$Res> {
  factory _$AddMyFilesEventCopyWith(
          _AddMyFilesEvent value, $Res Function(_AddMyFilesEvent) then) =
      __$AddMyFilesEventCopyWithImpl<$Res>;
  $Res call({String expirationDate, String typeDocument, bool shareWithAgency});
}

/// @nodoc
class __$AddMyFilesEventCopyWithImpl<$Res>
    extends _$MyDocumentsEventCopyWithImpl<$Res>
    implements _$AddMyFilesEventCopyWith<$Res> {
  __$AddMyFilesEventCopyWithImpl(
      _AddMyFilesEvent _value, $Res Function(_AddMyFilesEvent) _then)
      : super(_value, (v) => _then(v as _AddMyFilesEvent));

  @override
  _AddMyFilesEvent get _value => super._value as _AddMyFilesEvent;

  @override
  $Res call({
    Object? expirationDate = freezed,
    Object? typeDocument = freezed,
    Object? shareWithAgency = freezed,
  }) {
    return _then(_AddMyFilesEvent(
      expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      typeDocument == freezed
          ? _value.typeDocument
          : typeDocument // ignore: cast_nullable_to_non_nullable
              as String,
      shareWithAgency == freezed
          ? _value.shareWithAgency
          : shareWithAgency // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddMyFilesEvent implements _AddMyFilesEvent {
  _$_AddMyFilesEvent(
      this.expirationDate, this.typeDocument, this.shareWithAgency);

  @override
  final String expirationDate;
  @override
  final String typeDocument;
  @override
  final bool shareWithAgency;

  @override
  String toString() {
    return 'MyDocumentsEvent.addMyFiles(expirationDate: $expirationDate, typeDocument: $typeDocument, shareWithAgency: $shareWithAgency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddMyFilesEvent &&
            const DeepCollectionEquality()
                .equals(other.expirationDate, expirationDate) &&
            const DeepCollectionEquality()
                .equals(other.typeDocument, typeDocument) &&
            const DeepCollectionEquality()
                .equals(other.shareWithAgency, shareWithAgency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expirationDate),
      const DeepCollectionEquality().hash(typeDocument),
      const DeepCollectionEquality().hash(shareWithAgency));

  @JsonKey(ignore: true)
  @override
  _$AddMyFilesEventCopyWith<_AddMyFilesEvent> get copyWith =>
      __$AddMyFilesEventCopyWithImpl<_AddMyFilesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)
        addMyFiles,
    required TResult Function() openMyFiles,
    required TResult Function(FilesInfoDataModel file) loadFile,
    required TResult Function(String id, String nameFile) deleteFile,
    required TResult Function(
            bool share, FilesInfoDataModel file, String idAgency)
        shareFile,
  }) {
    return addMyFiles(expirationDate, typeDocument, shareWithAgency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
  }) {
    return addMyFiles?.call(expirationDate, typeDocument, shareWithAgency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
    required TResult orElse(),
  }) {
    if (addMyFiles != null) {
      return addMyFiles(expirationDate, typeDocument, shareWithAgency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMyDocumentsEvent value) init,
    required TResult Function(_AddMyFilesEvent value) addMyFiles,
    required TResult Function(_OpenMyFilesEvent value) openMyFiles,
    required TResult Function(LoadFileMyDocumentsEvent value) loadFile,
    required TResult Function(DeleteFileMyDocumentsEvent value) deleteFile,
    required TResult Function(ShareFileMyDocumentsEvent value) shareFile,
  }) {
    return addMyFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
  }) {
    return addMyFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
    required TResult orElse(),
  }) {
    if (addMyFiles != null) {
      return addMyFiles(this);
    }
    return orElse();
  }
}

abstract class _AddMyFilesEvent implements MyDocumentsEvent {
  factory _AddMyFilesEvent(
          String expirationDate, String typeDocument, bool shareWithAgency) =
      _$_AddMyFilesEvent;

  String get expirationDate;
  String get typeDocument;
  bool get shareWithAgency;
  @JsonKey(ignore: true)
  _$AddMyFilesEventCopyWith<_AddMyFilesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OpenMyFilesEventCopyWith<$Res> {
  factory _$OpenMyFilesEventCopyWith(
          _OpenMyFilesEvent value, $Res Function(_OpenMyFilesEvent) then) =
      __$OpenMyFilesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenMyFilesEventCopyWithImpl<$Res>
    extends _$MyDocumentsEventCopyWithImpl<$Res>
    implements _$OpenMyFilesEventCopyWith<$Res> {
  __$OpenMyFilesEventCopyWithImpl(
      _OpenMyFilesEvent _value, $Res Function(_OpenMyFilesEvent) _then)
      : super(_value, (v) => _then(v as _OpenMyFilesEvent));

  @override
  _OpenMyFilesEvent get _value => super._value as _OpenMyFilesEvent;
}

/// @nodoc

class _$_OpenMyFilesEvent implements _OpenMyFilesEvent {
  _$_OpenMyFilesEvent();

  @override
  String toString() {
    return 'MyDocumentsEvent.openMyFiles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OpenMyFilesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)
        addMyFiles,
    required TResult Function() openMyFiles,
    required TResult Function(FilesInfoDataModel file) loadFile,
    required TResult Function(String id, String nameFile) deleteFile,
    required TResult Function(
            bool share, FilesInfoDataModel file, String idAgency)
        shareFile,
  }) {
    return openMyFiles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
  }) {
    return openMyFiles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
    required TResult orElse(),
  }) {
    if (openMyFiles != null) {
      return openMyFiles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMyDocumentsEvent value) init,
    required TResult Function(_AddMyFilesEvent value) addMyFiles,
    required TResult Function(_OpenMyFilesEvent value) openMyFiles,
    required TResult Function(LoadFileMyDocumentsEvent value) loadFile,
    required TResult Function(DeleteFileMyDocumentsEvent value) deleteFile,
    required TResult Function(ShareFileMyDocumentsEvent value) shareFile,
  }) {
    return openMyFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
  }) {
    return openMyFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
    required TResult orElse(),
  }) {
    if (openMyFiles != null) {
      return openMyFiles(this);
    }
    return orElse();
  }
}

abstract class _OpenMyFilesEvent implements MyDocumentsEvent {
  factory _OpenMyFilesEvent() = _$_OpenMyFilesEvent;
}

/// @nodoc
abstract class $LoadFileMyDocumentsEventCopyWith<$Res> {
  factory $LoadFileMyDocumentsEventCopyWith(LoadFileMyDocumentsEvent value,
          $Res Function(LoadFileMyDocumentsEvent) then) =
      _$LoadFileMyDocumentsEventCopyWithImpl<$Res>;
  $Res call({FilesInfoDataModel file});

  $FilesInfoDataModelCopyWith<$Res> get file;
}

/// @nodoc
class _$LoadFileMyDocumentsEventCopyWithImpl<$Res>
    extends _$MyDocumentsEventCopyWithImpl<$Res>
    implements $LoadFileMyDocumentsEventCopyWith<$Res> {
  _$LoadFileMyDocumentsEventCopyWithImpl(LoadFileMyDocumentsEvent _value,
      $Res Function(LoadFileMyDocumentsEvent) _then)
      : super(_value, (v) => _then(v as LoadFileMyDocumentsEvent));

  @override
  LoadFileMyDocumentsEvent get _value =>
      super._value as LoadFileMyDocumentsEvent;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(LoadFileMyDocumentsEvent(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FilesInfoDataModel,
    ));
  }

  @override
  $FilesInfoDataModelCopyWith<$Res> get file {
    return $FilesInfoDataModelCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value));
    });
  }
}

/// @nodoc

class _$LoadFileMyDocumentsEvent implements LoadFileMyDocumentsEvent {
  _$LoadFileMyDocumentsEvent({required this.file});

  @override
  final FilesInfoDataModel file;

  @override
  String toString() {
    return 'MyDocumentsEvent.loadFile(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFileMyDocumentsEvent &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $LoadFileMyDocumentsEventCopyWith<LoadFileMyDocumentsEvent> get copyWith =>
      _$LoadFileMyDocumentsEventCopyWithImpl<LoadFileMyDocumentsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)
        addMyFiles,
    required TResult Function() openMyFiles,
    required TResult Function(FilesInfoDataModel file) loadFile,
    required TResult Function(String id, String nameFile) deleteFile,
    required TResult Function(
            bool share, FilesInfoDataModel file, String idAgency)
        shareFile,
  }) {
    return loadFile(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
  }) {
    return loadFile?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
    required TResult orElse(),
  }) {
    if (loadFile != null) {
      return loadFile(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMyDocumentsEvent value) init,
    required TResult Function(_AddMyFilesEvent value) addMyFiles,
    required TResult Function(_OpenMyFilesEvent value) openMyFiles,
    required TResult Function(LoadFileMyDocumentsEvent value) loadFile,
    required TResult Function(DeleteFileMyDocumentsEvent value) deleteFile,
    required TResult Function(ShareFileMyDocumentsEvent value) shareFile,
  }) {
    return loadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
  }) {
    return loadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
    required TResult orElse(),
  }) {
    if (loadFile != null) {
      return loadFile(this);
    }
    return orElse();
  }
}

abstract class LoadFileMyDocumentsEvent implements MyDocumentsEvent {
  factory LoadFileMyDocumentsEvent({required FilesInfoDataModel file}) =
      _$LoadFileMyDocumentsEvent;

  FilesInfoDataModel get file;
  @JsonKey(ignore: true)
  $LoadFileMyDocumentsEventCopyWith<LoadFileMyDocumentsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFileMyDocumentsEventCopyWith<$Res> {
  factory $DeleteFileMyDocumentsEventCopyWith(DeleteFileMyDocumentsEvent value,
          $Res Function(DeleteFileMyDocumentsEvent) then) =
      _$DeleteFileMyDocumentsEventCopyWithImpl<$Res>;
  $Res call({String id, String nameFile});
}

/// @nodoc
class _$DeleteFileMyDocumentsEventCopyWithImpl<$Res>
    extends _$MyDocumentsEventCopyWithImpl<$Res>
    implements $DeleteFileMyDocumentsEventCopyWith<$Res> {
  _$DeleteFileMyDocumentsEventCopyWithImpl(DeleteFileMyDocumentsEvent _value,
      $Res Function(DeleteFileMyDocumentsEvent) _then)
      : super(_value, (v) => _then(v as DeleteFileMyDocumentsEvent));

  @override
  DeleteFileMyDocumentsEvent get _value =>
      super._value as DeleteFileMyDocumentsEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? nameFile = freezed,
  }) {
    return _then(DeleteFileMyDocumentsEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFileMyDocumentsEvent implements DeleteFileMyDocumentsEvent {
  _$DeleteFileMyDocumentsEvent({required this.id, required this.nameFile});

  @override
  final String id;
  @override
  final String nameFile;

  @override
  String toString() {
    return 'MyDocumentsEvent.deleteFile(id: $id, nameFile: $nameFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteFileMyDocumentsEvent &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nameFile, nameFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nameFile));

  @JsonKey(ignore: true)
  @override
  $DeleteFileMyDocumentsEventCopyWith<DeleteFileMyDocumentsEvent>
      get copyWith =>
          _$DeleteFileMyDocumentsEventCopyWithImpl<DeleteFileMyDocumentsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)
        addMyFiles,
    required TResult Function() openMyFiles,
    required TResult Function(FilesInfoDataModel file) loadFile,
    required TResult Function(String id, String nameFile) deleteFile,
    required TResult Function(
            bool share, FilesInfoDataModel file, String idAgency)
        shareFile,
  }) {
    return deleteFile(id, nameFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
  }) {
    return deleteFile?.call(id, nameFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(id, nameFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMyDocumentsEvent value) init,
    required TResult Function(_AddMyFilesEvent value) addMyFiles,
    required TResult Function(_OpenMyFilesEvent value) openMyFiles,
    required TResult Function(LoadFileMyDocumentsEvent value) loadFile,
    required TResult Function(DeleteFileMyDocumentsEvent value) deleteFile,
    required TResult Function(ShareFileMyDocumentsEvent value) shareFile,
  }) {
    return deleteFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
  }) {
    return deleteFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(this);
    }
    return orElse();
  }
}

abstract class DeleteFileMyDocumentsEvent implements MyDocumentsEvent {
  factory DeleteFileMyDocumentsEvent(
      {required String id,
      required String nameFile}) = _$DeleteFileMyDocumentsEvent;

  String get id;
  String get nameFile;
  @JsonKey(ignore: true)
  $DeleteFileMyDocumentsEventCopyWith<DeleteFileMyDocumentsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareFileMyDocumentsEventCopyWith<$Res> {
  factory $ShareFileMyDocumentsEventCopyWith(ShareFileMyDocumentsEvent value,
          $Res Function(ShareFileMyDocumentsEvent) then) =
      _$ShareFileMyDocumentsEventCopyWithImpl<$Res>;
  $Res call({bool share, FilesInfoDataModel file, String idAgency});

  $FilesInfoDataModelCopyWith<$Res> get file;
}

/// @nodoc
class _$ShareFileMyDocumentsEventCopyWithImpl<$Res>
    extends _$MyDocumentsEventCopyWithImpl<$Res>
    implements $ShareFileMyDocumentsEventCopyWith<$Res> {
  _$ShareFileMyDocumentsEventCopyWithImpl(ShareFileMyDocumentsEvent _value,
      $Res Function(ShareFileMyDocumentsEvent) _then)
      : super(_value, (v) => _then(v as ShareFileMyDocumentsEvent));

  @override
  ShareFileMyDocumentsEvent get _value =>
      super._value as ShareFileMyDocumentsEvent;

  @override
  $Res call({
    Object? share = freezed,
    Object? file = freezed,
    Object? idAgency = freezed,
  }) {
    return _then(ShareFileMyDocumentsEvent(
      share: share == freezed
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as bool,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FilesInfoDataModel,
      idAgency: idAgency == freezed
          ? _value.idAgency
          : idAgency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $FilesInfoDataModelCopyWith<$Res> get file {
    return $FilesInfoDataModelCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value));
    });
  }
}

/// @nodoc

class _$ShareFileMyDocumentsEvent implements ShareFileMyDocumentsEvent {
  _$ShareFileMyDocumentsEvent(
      {required this.share, required this.file, required this.idAgency});

  @override
  final bool share;
  @override
  final FilesInfoDataModel file;
  @override
  final String idAgency;

  @override
  String toString() {
    return 'MyDocumentsEvent.shareFile(share: $share, file: $file, idAgency: $idAgency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShareFileMyDocumentsEvent &&
            const DeepCollectionEquality().equals(other.share, share) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.idAgency, idAgency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(share),
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(idAgency));

  @JsonKey(ignore: true)
  @override
  $ShareFileMyDocumentsEventCopyWith<ShareFileMyDocumentsEvent> get copyWith =>
      _$ShareFileMyDocumentsEventCopyWithImpl<ShareFileMyDocumentsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)
        addMyFiles,
    required TResult Function() openMyFiles,
    required TResult Function(FilesInfoDataModel file) loadFile,
    required TResult Function(String id, String nameFile) deleteFile,
    required TResult Function(
            bool share, FilesInfoDataModel file, String idAgency)
        shareFile,
  }) {
    return shareFile(share, file, idAgency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
  }) {
    return shareFile?.call(share, file, idAgency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String expirationDate, String typeDocument, bool shareWithAgency)?
        addMyFiles,
    TResult Function()? openMyFiles,
    TResult Function(FilesInfoDataModel file)? loadFile,
    TResult Function(String id, String nameFile)? deleteFile,
    TResult Function(bool share, FilesInfoDataModel file, String idAgency)?
        shareFile,
    required TResult orElse(),
  }) {
    if (shareFile != null) {
      return shareFile(share, file, idAgency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMyDocumentsEvent value) init,
    required TResult Function(_AddMyFilesEvent value) addMyFiles,
    required TResult Function(_OpenMyFilesEvent value) openMyFiles,
    required TResult Function(LoadFileMyDocumentsEvent value) loadFile,
    required TResult Function(DeleteFileMyDocumentsEvent value) deleteFile,
    required TResult Function(ShareFileMyDocumentsEvent value) shareFile,
  }) {
    return shareFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
  }) {
    return shareFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMyDocumentsEvent value)? init,
    TResult Function(_AddMyFilesEvent value)? addMyFiles,
    TResult Function(_OpenMyFilesEvent value)? openMyFiles,
    TResult Function(LoadFileMyDocumentsEvent value)? loadFile,
    TResult Function(DeleteFileMyDocumentsEvent value)? deleteFile,
    TResult Function(ShareFileMyDocumentsEvent value)? shareFile,
    required TResult orElse(),
  }) {
    if (shareFile != null) {
      return shareFile(this);
    }
    return orElse();
  }
}

abstract class ShareFileMyDocumentsEvent implements MyDocumentsEvent {
  factory ShareFileMyDocumentsEvent(
      {required bool share,
      required FilesInfoDataModel file,
      required String idAgency}) = _$ShareFileMyDocumentsEvent;

  bool get share;
  FilesInfoDataModel get file;
  String get idAgency;
  @JsonKey(ignore: true)
  $ShareFileMyDocumentsEventCopyWith<ShareFileMyDocumentsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MyDocumentsStateTearOff {
  const _$MyDocumentsStateTearOff();

  LoadingMyDocumentsState loading() {
    return const LoadingMyDocumentsState();
  }

  LoadingCloseMyDocumentsState loadingClose() {
    return const LoadingCloseMyDocumentsState();
  }

  InitMyDocumentsState init(
      {required List<FilesInfoDataModel> allFilesCVDataModel,
      required List<FilesInfoDataModel> allFilesDataModel,
      required WorkInfoDataModel workInfo}) {
    return InitMyDocumentsState(
      allFilesCVDataModel: allFilesCVDataModel,
      allFilesDataModel: allFilesDataModel,
      workInfo: workInfo,
    );
  }

  AddMyFileMyDocumentsSuccessState addMyFileSuccess(
      {required MessagesInfoAddFileDataModel model}) {
    return AddMyFileMyDocumentsSuccessState(
      model: model,
    );
  }

  AddMyFileMyDocumentsFailureState addMyFileFailure(
      {required MessagesInfoAddFileDataModel model}) {
    return AddMyFileMyDocumentsFailureState(
      model: model,
    );
  }

  OpenFileMyDocumentsState openFile(
      {required String nameFile,
      required Uint8List file,
      required String type}) {
    return OpenFileMyDocumentsState(
      nameFile: nameFile,
      file: file,
      type: type,
    );
  }

  MessageMyDocumentsState message({required String message}) {
    return MessageMyDocumentsState(
      message: message,
    );
  }
}

/// @nodoc
const $MyDocumentsState = _$MyDocumentsStateTearOff();

/// @nodoc
mixin _$MyDocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingClose,
    required TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)
        init,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileSuccess,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileFailure,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyDocumentsState value) loading,
    required TResult Function(LoadingCloseMyDocumentsState value) loadingClose,
    required TResult Function(InitMyDocumentsState value) init,
    required TResult Function(AddMyFileMyDocumentsSuccessState value)
        addMyFileSuccess,
    required TResult Function(AddMyFileMyDocumentsFailureState value)
        addMyFileFailure,
    required TResult Function(OpenFileMyDocumentsState value) openFile,
    required TResult Function(MessageMyDocumentsState value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDocumentsStateCopyWith<$Res> {
  factory $MyDocumentsStateCopyWith(
          MyDocumentsState value, $Res Function(MyDocumentsState) then) =
      _$MyDocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyDocumentsStateCopyWithImpl<$Res>
    implements $MyDocumentsStateCopyWith<$Res> {
  _$MyDocumentsStateCopyWithImpl(this._value, this._then);

  final MyDocumentsState _value;
  // ignore: unused_field
  final $Res Function(MyDocumentsState) _then;
}

/// @nodoc
abstract class $LoadingMyDocumentsStateCopyWith<$Res> {
  factory $LoadingMyDocumentsStateCopyWith(LoadingMyDocumentsState value,
          $Res Function(LoadingMyDocumentsState) then) =
      _$LoadingMyDocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingMyDocumentsStateCopyWithImpl<$Res>
    extends _$MyDocumentsStateCopyWithImpl<$Res>
    implements $LoadingMyDocumentsStateCopyWith<$Res> {
  _$LoadingMyDocumentsStateCopyWithImpl(LoadingMyDocumentsState _value,
      $Res Function(LoadingMyDocumentsState) _then)
      : super(_value, (v) => _then(v as LoadingMyDocumentsState));

  @override
  LoadingMyDocumentsState get _value => super._value as LoadingMyDocumentsState;
}

/// @nodoc

class _$LoadingMyDocumentsState implements LoadingMyDocumentsState {
  const _$LoadingMyDocumentsState();

  @override
  String toString() {
    return 'MyDocumentsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingMyDocumentsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingClose,
    required TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)
        init,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileSuccess,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileFailure,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyDocumentsState value) loading,
    required TResult Function(LoadingCloseMyDocumentsState value) loadingClose,
    required TResult Function(InitMyDocumentsState value) init,
    required TResult Function(AddMyFileMyDocumentsSuccessState value)
        addMyFileSuccess,
    required TResult Function(AddMyFileMyDocumentsFailureState value)
        addMyFileFailure,
    required TResult Function(OpenFileMyDocumentsState value) openFile,
    required TResult Function(MessageMyDocumentsState value) message,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMyDocumentsState implements MyDocumentsState {
  const factory LoadingMyDocumentsState() = _$LoadingMyDocumentsState;
}

/// @nodoc
abstract class $LoadingCloseMyDocumentsStateCopyWith<$Res> {
  factory $LoadingCloseMyDocumentsStateCopyWith(
          LoadingCloseMyDocumentsState value,
          $Res Function(LoadingCloseMyDocumentsState) then) =
      _$LoadingCloseMyDocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCloseMyDocumentsStateCopyWithImpl<$Res>
    extends _$MyDocumentsStateCopyWithImpl<$Res>
    implements $LoadingCloseMyDocumentsStateCopyWith<$Res> {
  _$LoadingCloseMyDocumentsStateCopyWithImpl(
      LoadingCloseMyDocumentsState _value,
      $Res Function(LoadingCloseMyDocumentsState) _then)
      : super(_value, (v) => _then(v as LoadingCloseMyDocumentsState));

  @override
  LoadingCloseMyDocumentsState get _value =>
      super._value as LoadingCloseMyDocumentsState;
}

/// @nodoc

class _$LoadingCloseMyDocumentsState implements LoadingCloseMyDocumentsState {
  const _$LoadingCloseMyDocumentsState();

  @override
  String toString() {
    return 'MyDocumentsState.loadingClose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingCloseMyDocumentsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingClose,
    required TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)
        init,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileSuccess,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileFailure,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return loadingClose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return loadingClose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (loadingClose != null) {
      return loadingClose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyDocumentsState value) loading,
    required TResult Function(LoadingCloseMyDocumentsState value) loadingClose,
    required TResult Function(InitMyDocumentsState value) init,
    required TResult Function(AddMyFileMyDocumentsSuccessState value)
        addMyFileSuccess,
    required TResult Function(AddMyFileMyDocumentsFailureState value)
        addMyFileFailure,
    required TResult Function(OpenFileMyDocumentsState value) openFile,
    required TResult Function(MessageMyDocumentsState value) message,
  }) {
    return loadingClose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
  }) {
    return loadingClose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (loadingClose != null) {
      return loadingClose(this);
    }
    return orElse();
  }
}

abstract class LoadingCloseMyDocumentsState implements MyDocumentsState {
  const factory LoadingCloseMyDocumentsState() = _$LoadingCloseMyDocumentsState;
}

/// @nodoc
abstract class $InitMyDocumentsStateCopyWith<$Res> {
  factory $InitMyDocumentsStateCopyWith(InitMyDocumentsState value,
          $Res Function(InitMyDocumentsState) then) =
      _$InitMyDocumentsStateCopyWithImpl<$Res>;
  $Res call(
      {List<FilesInfoDataModel> allFilesCVDataModel,
      List<FilesInfoDataModel> allFilesDataModel,
      WorkInfoDataModel workInfo});

  $WorkInfoDataModelCopyWith<$Res> get workInfo;
}

/// @nodoc
class _$InitMyDocumentsStateCopyWithImpl<$Res>
    extends _$MyDocumentsStateCopyWithImpl<$Res>
    implements $InitMyDocumentsStateCopyWith<$Res> {
  _$InitMyDocumentsStateCopyWithImpl(
      InitMyDocumentsState _value, $Res Function(InitMyDocumentsState) _then)
      : super(_value, (v) => _then(v as InitMyDocumentsState));

  @override
  InitMyDocumentsState get _value => super._value as InitMyDocumentsState;

  @override
  $Res call({
    Object? allFilesCVDataModel = freezed,
    Object? allFilesDataModel = freezed,
    Object? workInfo = freezed,
  }) {
    return _then(InitMyDocumentsState(
      allFilesCVDataModel: allFilesCVDataModel == freezed
          ? _value.allFilesCVDataModel
          : allFilesCVDataModel // ignore: cast_nullable_to_non_nullable
              as List<FilesInfoDataModel>,
      allFilesDataModel: allFilesDataModel == freezed
          ? _value.allFilesDataModel
          : allFilesDataModel // ignore: cast_nullable_to_non_nullable
              as List<FilesInfoDataModel>,
      workInfo: workInfo == freezed
          ? _value.workInfo
          : workInfo // ignore: cast_nullable_to_non_nullable
              as WorkInfoDataModel,
    ));
  }

  @override
  $WorkInfoDataModelCopyWith<$Res> get workInfo {
    return $WorkInfoDataModelCopyWith<$Res>(_value.workInfo, (value) {
      return _then(_value.copyWith(workInfo: value));
    });
  }
}

/// @nodoc

class _$InitMyDocumentsState implements InitMyDocumentsState {
  const _$InitMyDocumentsState(
      {required this.allFilesCVDataModel,
      required this.allFilesDataModel,
      required this.workInfo});

  @override
  final List<FilesInfoDataModel> allFilesCVDataModel;
  @override
  final List<FilesInfoDataModel> allFilesDataModel;
  @override
  final WorkInfoDataModel workInfo;

  @override
  String toString() {
    return 'MyDocumentsState.init(allFilesCVDataModel: $allFilesCVDataModel, allFilesDataModel: $allFilesDataModel, workInfo: $workInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitMyDocumentsState &&
            const DeepCollectionEquality()
                .equals(other.allFilesCVDataModel, allFilesCVDataModel) &&
            const DeepCollectionEquality()
                .equals(other.allFilesDataModel, allFilesDataModel) &&
            const DeepCollectionEquality().equals(other.workInfo, workInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allFilesCVDataModel),
      const DeepCollectionEquality().hash(allFilesDataModel),
      const DeepCollectionEquality().hash(workInfo));

  @JsonKey(ignore: true)
  @override
  $InitMyDocumentsStateCopyWith<InitMyDocumentsState> get copyWith =>
      _$InitMyDocumentsStateCopyWithImpl<InitMyDocumentsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingClose,
    required TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)
        init,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileSuccess,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileFailure,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return init(allFilesCVDataModel, allFilesDataModel, workInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return init?.call(allFilesCVDataModel, allFilesDataModel, workInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(allFilesCVDataModel, allFilesDataModel, workInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyDocumentsState value) loading,
    required TResult Function(LoadingCloseMyDocumentsState value) loadingClose,
    required TResult Function(InitMyDocumentsState value) init,
    required TResult Function(AddMyFileMyDocumentsSuccessState value)
        addMyFileSuccess,
    required TResult Function(AddMyFileMyDocumentsFailureState value)
        addMyFileFailure,
    required TResult Function(OpenFileMyDocumentsState value) openFile,
    required TResult Function(MessageMyDocumentsState value) message,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitMyDocumentsState implements MyDocumentsState {
  const factory InitMyDocumentsState(
      {required List<FilesInfoDataModel> allFilesCVDataModel,
      required List<FilesInfoDataModel> allFilesDataModel,
      required WorkInfoDataModel workInfo}) = _$InitMyDocumentsState;

  List<FilesInfoDataModel> get allFilesCVDataModel;
  List<FilesInfoDataModel> get allFilesDataModel;
  WorkInfoDataModel get workInfo;
  @JsonKey(ignore: true)
  $InitMyDocumentsStateCopyWith<InitMyDocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMyFileMyDocumentsSuccessStateCopyWith<$Res> {
  factory $AddMyFileMyDocumentsSuccessStateCopyWith(
          AddMyFileMyDocumentsSuccessState value,
          $Res Function(AddMyFileMyDocumentsSuccessState) then) =
      _$AddMyFileMyDocumentsSuccessStateCopyWithImpl<$Res>;
  $Res call({MessagesInfoAddFileDataModel model});

  $MessagesInfoAddFileDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$AddMyFileMyDocumentsSuccessStateCopyWithImpl<$Res>
    extends _$MyDocumentsStateCopyWithImpl<$Res>
    implements $AddMyFileMyDocumentsSuccessStateCopyWith<$Res> {
  _$AddMyFileMyDocumentsSuccessStateCopyWithImpl(
      AddMyFileMyDocumentsSuccessState _value,
      $Res Function(AddMyFileMyDocumentsSuccessState) _then)
      : super(_value, (v) => _then(v as AddMyFileMyDocumentsSuccessState));

  @override
  AddMyFileMyDocumentsSuccessState get _value =>
      super._value as AddMyFileMyDocumentsSuccessState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(AddMyFileMyDocumentsSuccessState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MessagesInfoAddFileDataModel,
    ));
  }

  @override
  $MessagesInfoAddFileDataModelCopyWith<$Res> get model {
    return $MessagesInfoAddFileDataModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AddMyFileMyDocumentsSuccessState
    implements AddMyFileMyDocumentsSuccessState {
  const _$AddMyFileMyDocumentsSuccessState({required this.model});

  @override
  final MessagesInfoAddFileDataModel model;

  @override
  String toString() {
    return 'MyDocumentsState.addMyFileSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddMyFileMyDocumentsSuccessState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $AddMyFileMyDocumentsSuccessStateCopyWith<AddMyFileMyDocumentsSuccessState>
      get copyWith => _$AddMyFileMyDocumentsSuccessStateCopyWithImpl<
          AddMyFileMyDocumentsSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingClose,
    required TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)
        init,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileSuccess,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileFailure,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return addMyFileSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return addMyFileSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (addMyFileSuccess != null) {
      return addMyFileSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyDocumentsState value) loading,
    required TResult Function(LoadingCloseMyDocumentsState value) loadingClose,
    required TResult Function(InitMyDocumentsState value) init,
    required TResult Function(AddMyFileMyDocumentsSuccessState value)
        addMyFileSuccess,
    required TResult Function(AddMyFileMyDocumentsFailureState value)
        addMyFileFailure,
    required TResult Function(OpenFileMyDocumentsState value) openFile,
    required TResult Function(MessageMyDocumentsState value) message,
  }) {
    return addMyFileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
  }) {
    return addMyFileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (addMyFileSuccess != null) {
      return addMyFileSuccess(this);
    }
    return orElse();
  }
}

abstract class AddMyFileMyDocumentsSuccessState implements MyDocumentsState {
  const factory AddMyFileMyDocumentsSuccessState(
          {required MessagesInfoAddFileDataModel model}) =
      _$AddMyFileMyDocumentsSuccessState;

  MessagesInfoAddFileDataModel get model;
  @JsonKey(ignore: true)
  $AddMyFileMyDocumentsSuccessStateCopyWith<AddMyFileMyDocumentsSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMyFileMyDocumentsFailureStateCopyWith<$Res> {
  factory $AddMyFileMyDocumentsFailureStateCopyWith(
          AddMyFileMyDocumentsFailureState value,
          $Res Function(AddMyFileMyDocumentsFailureState) then) =
      _$AddMyFileMyDocumentsFailureStateCopyWithImpl<$Res>;
  $Res call({MessagesInfoAddFileDataModel model});

  $MessagesInfoAddFileDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$AddMyFileMyDocumentsFailureStateCopyWithImpl<$Res>
    extends _$MyDocumentsStateCopyWithImpl<$Res>
    implements $AddMyFileMyDocumentsFailureStateCopyWith<$Res> {
  _$AddMyFileMyDocumentsFailureStateCopyWithImpl(
      AddMyFileMyDocumentsFailureState _value,
      $Res Function(AddMyFileMyDocumentsFailureState) _then)
      : super(_value, (v) => _then(v as AddMyFileMyDocumentsFailureState));

  @override
  AddMyFileMyDocumentsFailureState get _value =>
      super._value as AddMyFileMyDocumentsFailureState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(AddMyFileMyDocumentsFailureState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MessagesInfoAddFileDataModel,
    ));
  }

  @override
  $MessagesInfoAddFileDataModelCopyWith<$Res> get model {
    return $MessagesInfoAddFileDataModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AddMyFileMyDocumentsFailureState
    implements AddMyFileMyDocumentsFailureState {
  const _$AddMyFileMyDocumentsFailureState({required this.model});

  @override
  final MessagesInfoAddFileDataModel model;

  @override
  String toString() {
    return 'MyDocumentsState.addMyFileFailure(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddMyFileMyDocumentsFailureState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $AddMyFileMyDocumentsFailureStateCopyWith<AddMyFileMyDocumentsFailureState>
      get copyWith => _$AddMyFileMyDocumentsFailureStateCopyWithImpl<
          AddMyFileMyDocumentsFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingClose,
    required TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)
        init,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileSuccess,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileFailure,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return addMyFileFailure(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return addMyFileFailure?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (addMyFileFailure != null) {
      return addMyFileFailure(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyDocumentsState value) loading,
    required TResult Function(LoadingCloseMyDocumentsState value) loadingClose,
    required TResult Function(InitMyDocumentsState value) init,
    required TResult Function(AddMyFileMyDocumentsSuccessState value)
        addMyFileSuccess,
    required TResult Function(AddMyFileMyDocumentsFailureState value)
        addMyFileFailure,
    required TResult Function(OpenFileMyDocumentsState value) openFile,
    required TResult Function(MessageMyDocumentsState value) message,
  }) {
    return addMyFileFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
  }) {
    return addMyFileFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (addMyFileFailure != null) {
      return addMyFileFailure(this);
    }
    return orElse();
  }
}

abstract class AddMyFileMyDocumentsFailureState implements MyDocumentsState {
  const factory AddMyFileMyDocumentsFailureState(
          {required MessagesInfoAddFileDataModel model}) =
      _$AddMyFileMyDocumentsFailureState;

  MessagesInfoAddFileDataModel get model;
  @JsonKey(ignore: true)
  $AddMyFileMyDocumentsFailureStateCopyWith<AddMyFileMyDocumentsFailureState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenFileMyDocumentsStateCopyWith<$Res> {
  factory $OpenFileMyDocumentsStateCopyWith(OpenFileMyDocumentsState value,
          $Res Function(OpenFileMyDocumentsState) then) =
      _$OpenFileMyDocumentsStateCopyWithImpl<$Res>;
  $Res call({String nameFile, Uint8List file, String type});
}

/// @nodoc
class _$OpenFileMyDocumentsStateCopyWithImpl<$Res>
    extends _$MyDocumentsStateCopyWithImpl<$Res>
    implements $OpenFileMyDocumentsStateCopyWith<$Res> {
  _$OpenFileMyDocumentsStateCopyWithImpl(OpenFileMyDocumentsState _value,
      $Res Function(OpenFileMyDocumentsState) _then)
      : super(_value, (v) => _then(v as OpenFileMyDocumentsState));

  @override
  OpenFileMyDocumentsState get _value =>
      super._value as OpenFileMyDocumentsState;

  @override
  $Res call({
    Object? nameFile = freezed,
    Object? file = freezed,
    Object? type = freezed,
  }) {
    return _then(OpenFileMyDocumentsState(
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OpenFileMyDocumentsState implements OpenFileMyDocumentsState {
  const _$OpenFileMyDocumentsState(
      {required this.nameFile, required this.file, required this.type});

  @override
  final String nameFile;
  @override
  final Uint8List file;
  @override
  final String type;

  @override
  String toString() {
    return 'MyDocumentsState.openFile(nameFile: $nameFile, file: $file, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenFileMyDocumentsState &&
            const DeepCollectionEquality().equals(other.nameFile, nameFile) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nameFile),
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  $OpenFileMyDocumentsStateCopyWith<OpenFileMyDocumentsState> get copyWith =>
      _$OpenFileMyDocumentsStateCopyWithImpl<OpenFileMyDocumentsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingClose,
    required TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)
        init,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileSuccess,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileFailure,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return openFile(nameFile, file, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return openFile?.call(nameFile, file, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile(nameFile, file, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyDocumentsState value) loading,
    required TResult Function(LoadingCloseMyDocumentsState value) loadingClose,
    required TResult Function(InitMyDocumentsState value) init,
    required TResult Function(AddMyFileMyDocumentsSuccessState value)
        addMyFileSuccess,
    required TResult Function(AddMyFileMyDocumentsFailureState value)
        addMyFileFailure,
    required TResult Function(OpenFileMyDocumentsState value) openFile,
    required TResult Function(MessageMyDocumentsState value) message,
  }) {
    return openFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
  }) {
    return openFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile(this);
    }
    return orElse();
  }
}

abstract class OpenFileMyDocumentsState implements MyDocumentsState {
  const factory OpenFileMyDocumentsState(
      {required String nameFile,
      required Uint8List file,
      required String type}) = _$OpenFileMyDocumentsState;

  String get nameFile;
  Uint8List get file;
  String get type;
  @JsonKey(ignore: true)
  $OpenFileMyDocumentsStateCopyWith<OpenFileMyDocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageMyDocumentsStateCopyWith<$Res> {
  factory $MessageMyDocumentsStateCopyWith(MessageMyDocumentsState value,
          $Res Function(MessageMyDocumentsState) then) =
      _$MessageMyDocumentsStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MessageMyDocumentsStateCopyWithImpl<$Res>
    extends _$MyDocumentsStateCopyWithImpl<$Res>
    implements $MessageMyDocumentsStateCopyWith<$Res> {
  _$MessageMyDocumentsStateCopyWithImpl(MessageMyDocumentsState _value,
      $Res Function(MessageMyDocumentsState) _then)
      : super(_value, (v) => _then(v as MessageMyDocumentsState));

  @override
  MessageMyDocumentsState get _value => super._value as MessageMyDocumentsState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessageMyDocumentsState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageMyDocumentsState implements MessageMyDocumentsState {
  const _$MessageMyDocumentsState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MyDocumentsState.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageMyDocumentsState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MessageMyDocumentsStateCopyWith<MessageMyDocumentsState> get copyWith =>
      _$MessageMyDocumentsStateCopyWithImpl<MessageMyDocumentsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingClose,
    required TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)
        init,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileSuccess,
    required TResult Function(MessagesInfoAddFileDataModel model)
        addMyFileFailure,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingClose,
    TResult Function(
            List<FilesInfoDataModel> allFilesCVDataModel,
            List<FilesInfoDataModel> allFilesDataModel,
            WorkInfoDataModel workInfo)?
        init,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileSuccess,
    TResult Function(MessagesInfoAddFileDataModel model)? addMyFileFailure,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyDocumentsState value) loading,
    required TResult Function(LoadingCloseMyDocumentsState value) loadingClose,
    required TResult Function(InitMyDocumentsState value) init,
    required TResult Function(AddMyFileMyDocumentsSuccessState value)
        addMyFileSuccess,
    required TResult Function(AddMyFileMyDocumentsFailureState value)
        addMyFileFailure,
    required TResult Function(OpenFileMyDocumentsState value) openFile,
    required TResult Function(MessageMyDocumentsState value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyDocumentsState value)? loading,
    TResult Function(LoadingCloseMyDocumentsState value)? loadingClose,
    TResult Function(InitMyDocumentsState value)? init,
    TResult Function(AddMyFileMyDocumentsSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileMyDocumentsFailureState value)? addMyFileFailure,
    TResult Function(OpenFileMyDocumentsState value)? openFile,
    TResult Function(MessageMyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class MessageMyDocumentsState implements MyDocumentsState {
  const factory MessageMyDocumentsState({required String message}) =
      _$MessageMyDocumentsState;

  String get message;
  @JsonKey(ignore: true)
  $MessageMyDocumentsStateCopyWith<MessageMyDocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

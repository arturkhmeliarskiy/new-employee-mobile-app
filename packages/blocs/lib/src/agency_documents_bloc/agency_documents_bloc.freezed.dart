// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agency_documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AgencyDocumentsEventTearOff {
  const _$AgencyDocumentsEventTearOff();

  InitAgencyDocumentsEvent init() {
    return InitAgencyDocumentsEvent();
  }

  LoadFileAgencyDocumentsEvent loadFile(
      {required AgencyFilesInfoDataModel file}) {
    return LoadFileAgencyDocumentsEvent(
      file: file,
    );
  }
}

/// @nodoc
const $AgencyDocumentsEvent = _$AgencyDocumentsEventTearOff();

/// @nodoc
mixin _$AgencyDocumentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AgencyFilesInfoDataModel file) loadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAgencyDocumentsEvent value) init,
    required TResult Function(LoadFileAgencyDocumentsEvent value) loadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAgencyDocumentsEvent value)? init,
    TResult Function(LoadFileAgencyDocumentsEvent value)? loadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAgencyDocumentsEvent value)? init,
    TResult Function(LoadFileAgencyDocumentsEvent value)? loadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgencyDocumentsEventCopyWith<$Res> {
  factory $AgencyDocumentsEventCopyWith(AgencyDocumentsEvent value,
          $Res Function(AgencyDocumentsEvent) then) =
      _$AgencyDocumentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgencyDocumentsEventCopyWithImpl<$Res>
    implements $AgencyDocumentsEventCopyWith<$Res> {
  _$AgencyDocumentsEventCopyWithImpl(this._value, this._then);

  final AgencyDocumentsEvent _value;
  // ignore: unused_field
  final $Res Function(AgencyDocumentsEvent) _then;
}

/// @nodoc
abstract class $InitAgencyDocumentsEventCopyWith<$Res> {
  factory $InitAgencyDocumentsEventCopyWith(InitAgencyDocumentsEvent value,
          $Res Function(InitAgencyDocumentsEvent) then) =
      _$InitAgencyDocumentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitAgencyDocumentsEventCopyWithImpl<$Res>
    extends _$AgencyDocumentsEventCopyWithImpl<$Res>
    implements $InitAgencyDocumentsEventCopyWith<$Res> {
  _$InitAgencyDocumentsEventCopyWithImpl(InitAgencyDocumentsEvent _value,
      $Res Function(InitAgencyDocumentsEvent) _then)
      : super(_value, (v) => _then(v as InitAgencyDocumentsEvent));

  @override
  InitAgencyDocumentsEvent get _value =>
      super._value as InitAgencyDocumentsEvent;
}

/// @nodoc

class _$InitAgencyDocumentsEvent implements InitAgencyDocumentsEvent {
  _$InitAgencyDocumentsEvent();

  @override
  String toString() {
    return 'AgencyDocumentsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitAgencyDocumentsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AgencyFilesInfoDataModel file) loadFile,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
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
    required TResult Function(InitAgencyDocumentsEvent value) init,
    required TResult Function(LoadFileAgencyDocumentsEvent value) loadFile,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAgencyDocumentsEvent value)? init,
    TResult Function(LoadFileAgencyDocumentsEvent value)? loadFile,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAgencyDocumentsEvent value)? init,
    TResult Function(LoadFileAgencyDocumentsEvent value)? loadFile,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAgencyDocumentsEvent implements AgencyDocumentsEvent {
  factory InitAgencyDocumentsEvent() = _$InitAgencyDocumentsEvent;
}

/// @nodoc
abstract class $LoadFileAgencyDocumentsEventCopyWith<$Res> {
  factory $LoadFileAgencyDocumentsEventCopyWith(
          LoadFileAgencyDocumentsEvent value,
          $Res Function(LoadFileAgencyDocumentsEvent) then) =
      _$LoadFileAgencyDocumentsEventCopyWithImpl<$Res>;
  $Res call({AgencyFilesInfoDataModel file});

  $AgencyFilesInfoDataModelCopyWith<$Res> get file;
}

/// @nodoc
class _$LoadFileAgencyDocumentsEventCopyWithImpl<$Res>
    extends _$AgencyDocumentsEventCopyWithImpl<$Res>
    implements $LoadFileAgencyDocumentsEventCopyWith<$Res> {
  _$LoadFileAgencyDocumentsEventCopyWithImpl(
      LoadFileAgencyDocumentsEvent _value,
      $Res Function(LoadFileAgencyDocumentsEvent) _then)
      : super(_value, (v) => _then(v as LoadFileAgencyDocumentsEvent));

  @override
  LoadFileAgencyDocumentsEvent get _value =>
      super._value as LoadFileAgencyDocumentsEvent;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(LoadFileAgencyDocumentsEvent(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as AgencyFilesInfoDataModel,
    ));
  }

  @override
  $AgencyFilesInfoDataModelCopyWith<$Res> get file {
    return $AgencyFilesInfoDataModelCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value));
    });
  }
}

/// @nodoc

class _$LoadFileAgencyDocumentsEvent implements LoadFileAgencyDocumentsEvent {
  _$LoadFileAgencyDocumentsEvent({required this.file});

  @override
  final AgencyFilesInfoDataModel file;

  @override
  String toString() {
    return 'AgencyDocumentsEvent.loadFile(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFileAgencyDocumentsEvent &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $LoadFileAgencyDocumentsEventCopyWith<LoadFileAgencyDocumentsEvent>
      get copyWith => _$LoadFileAgencyDocumentsEventCopyWithImpl<
          LoadFileAgencyDocumentsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AgencyFilesInfoDataModel file) loadFile,
  }) {
    return loadFile(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
  }) {
    return loadFile?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
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
    required TResult Function(InitAgencyDocumentsEvent value) init,
    required TResult Function(LoadFileAgencyDocumentsEvent value) loadFile,
  }) {
    return loadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAgencyDocumentsEvent value)? init,
    TResult Function(LoadFileAgencyDocumentsEvent value)? loadFile,
  }) {
    return loadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAgencyDocumentsEvent value)? init,
    TResult Function(LoadFileAgencyDocumentsEvent value)? loadFile,
    required TResult orElse(),
  }) {
    if (loadFile != null) {
      return loadFile(this);
    }
    return orElse();
  }
}

abstract class LoadFileAgencyDocumentsEvent implements AgencyDocumentsEvent {
  factory LoadFileAgencyDocumentsEvent(
          {required AgencyFilesInfoDataModel file}) =
      _$LoadFileAgencyDocumentsEvent;

  AgencyFilesInfoDataModel get file;
  @JsonKey(ignore: true)
  $LoadFileAgencyDocumentsEventCopyWith<LoadFileAgencyDocumentsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AgencyDocumentsStateTearOff {
  const _$AgencyDocumentsStateTearOff();

  LoadingAgencyDocumentsState loading() {
    return const LoadingAgencyDocumentsState();
  }

  InitAgencyDocumentsState init(
      {required List<List<AgencyFilesInfoDataModel>> model}) {
    return InitAgencyDocumentsState(
      model: model,
    );
  }

  OpenFileAgencyDocumentsState openFile(
      {required String nameFile,
      required Uint8List file,
      required String type}) {
    return OpenFileAgencyDocumentsState(
      nameFile: nameFile,
      file: file,
      type: type,
    );
  }

  MessageAgencyDocumentsState message({required String message}) {
    return MessageAgencyDocumentsState(
      message: message,
    );
  }
}

/// @nodoc
const $AgencyDocumentsState = _$AgencyDocumentsStateTearOff();

/// @nodoc
mixin _$AgencyDocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<List<AgencyFilesInfoDataModel>> model) init,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAgencyDocumentsState value) loading,
    required TResult Function(InitAgencyDocumentsState value) init,
    required TResult Function(OpenFileAgencyDocumentsState value) openFile,
    required TResult Function(MessageAgencyDocumentsState value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgencyDocumentsStateCopyWith<$Res> {
  factory $AgencyDocumentsStateCopyWith(AgencyDocumentsState value,
          $Res Function(AgencyDocumentsState) then) =
      _$AgencyDocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgencyDocumentsStateCopyWithImpl<$Res>
    implements $AgencyDocumentsStateCopyWith<$Res> {
  _$AgencyDocumentsStateCopyWithImpl(this._value, this._then);

  final AgencyDocumentsState _value;
  // ignore: unused_field
  final $Res Function(AgencyDocumentsState) _then;
}

/// @nodoc
abstract class $LoadingAgencyDocumentsStateCopyWith<$Res> {
  factory $LoadingAgencyDocumentsStateCopyWith(
          LoadingAgencyDocumentsState value,
          $Res Function(LoadingAgencyDocumentsState) then) =
      _$LoadingAgencyDocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingAgencyDocumentsStateCopyWithImpl<$Res>
    extends _$AgencyDocumentsStateCopyWithImpl<$Res>
    implements $LoadingAgencyDocumentsStateCopyWith<$Res> {
  _$LoadingAgencyDocumentsStateCopyWithImpl(LoadingAgencyDocumentsState _value,
      $Res Function(LoadingAgencyDocumentsState) _then)
      : super(_value, (v) => _then(v as LoadingAgencyDocumentsState));

  @override
  LoadingAgencyDocumentsState get _value =>
      super._value as LoadingAgencyDocumentsState;
}

/// @nodoc

class _$LoadingAgencyDocumentsState implements LoadingAgencyDocumentsState {
  const _$LoadingAgencyDocumentsState();

  @override
  String toString() {
    return 'AgencyDocumentsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingAgencyDocumentsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<List<AgencyFilesInfoDataModel>> model) init,
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
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
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
    required TResult Function(LoadingAgencyDocumentsState value) loading,
    required TResult Function(InitAgencyDocumentsState value) init,
    required TResult Function(OpenFileAgencyDocumentsState value) openFile,
    required TResult Function(MessageAgencyDocumentsState value) message,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAgencyDocumentsState implements AgencyDocumentsState {
  const factory LoadingAgencyDocumentsState() = _$LoadingAgencyDocumentsState;
}

/// @nodoc
abstract class $InitAgencyDocumentsStateCopyWith<$Res> {
  factory $InitAgencyDocumentsStateCopyWith(InitAgencyDocumentsState value,
          $Res Function(InitAgencyDocumentsState) then) =
      _$InitAgencyDocumentsStateCopyWithImpl<$Res>;
  $Res call({List<List<AgencyFilesInfoDataModel>> model});
}

/// @nodoc
class _$InitAgencyDocumentsStateCopyWithImpl<$Res>
    extends _$AgencyDocumentsStateCopyWithImpl<$Res>
    implements $InitAgencyDocumentsStateCopyWith<$Res> {
  _$InitAgencyDocumentsStateCopyWithImpl(InitAgencyDocumentsState _value,
      $Res Function(InitAgencyDocumentsState) _then)
      : super(_value, (v) => _then(v as InitAgencyDocumentsState));

  @override
  InitAgencyDocumentsState get _value =>
      super._value as InitAgencyDocumentsState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(InitAgencyDocumentsState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as List<List<AgencyFilesInfoDataModel>>,
    ));
  }
}

/// @nodoc

class _$InitAgencyDocumentsState implements InitAgencyDocumentsState {
  const _$InitAgencyDocumentsState({required this.model});

  @override
  final List<List<AgencyFilesInfoDataModel>> model;

  @override
  String toString() {
    return 'AgencyDocumentsState.init(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitAgencyDocumentsState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $InitAgencyDocumentsStateCopyWith<InitAgencyDocumentsState> get copyWith =>
      _$InitAgencyDocumentsStateCopyWithImpl<InitAgencyDocumentsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<List<AgencyFilesInfoDataModel>> model) init,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return init(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return init?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAgencyDocumentsState value) loading,
    required TResult Function(InitAgencyDocumentsState value) init,
    required TResult Function(OpenFileAgencyDocumentsState value) openFile,
    required TResult Function(MessageAgencyDocumentsState value) message,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAgencyDocumentsState implements AgencyDocumentsState {
  const factory InitAgencyDocumentsState(
          {required List<List<AgencyFilesInfoDataModel>> model}) =
      _$InitAgencyDocumentsState;

  List<List<AgencyFilesInfoDataModel>> get model;
  @JsonKey(ignore: true)
  $InitAgencyDocumentsStateCopyWith<InitAgencyDocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenFileAgencyDocumentsStateCopyWith<$Res> {
  factory $OpenFileAgencyDocumentsStateCopyWith(
          OpenFileAgencyDocumentsState value,
          $Res Function(OpenFileAgencyDocumentsState) then) =
      _$OpenFileAgencyDocumentsStateCopyWithImpl<$Res>;
  $Res call({String nameFile, Uint8List file, String type});
}

/// @nodoc
class _$OpenFileAgencyDocumentsStateCopyWithImpl<$Res>
    extends _$AgencyDocumentsStateCopyWithImpl<$Res>
    implements $OpenFileAgencyDocumentsStateCopyWith<$Res> {
  _$OpenFileAgencyDocumentsStateCopyWithImpl(
      OpenFileAgencyDocumentsState _value,
      $Res Function(OpenFileAgencyDocumentsState) _then)
      : super(_value, (v) => _then(v as OpenFileAgencyDocumentsState));

  @override
  OpenFileAgencyDocumentsState get _value =>
      super._value as OpenFileAgencyDocumentsState;

  @override
  $Res call({
    Object? nameFile = freezed,
    Object? file = freezed,
    Object? type = freezed,
  }) {
    return _then(OpenFileAgencyDocumentsState(
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

class _$OpenFileAgencyDocumentsState implements OpenFileAgencyDocumentsState {
  const _$OpenFileAgencyDocumentsState(
      {required this.nameFile, required this.file, required this.type});

  @override
  final String nameFile;
  @override
  final Uint8List file;
  @override
  final String type;

  @override
  String toString() {
    return 'AgencyDocumentsState.openFile(nameFile: $nameFile, file: $file, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenFileAgencyDocumentsState &&
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
  $OpenFileAgencyDocumentsStateCopyWith<OpenFileAgencyDocumentsState>
      get copyWith => _$OpenFileAgencyDocumentsStateCopyWithImpl<
          OpenFileAgencyDocumentsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<List<AgencyFilesInfoDataModel>> model) init,
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
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return openFile?.call(nameFile, file, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
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
    required TResult Function(LoadingAgencyDocumentsState value) loading,
    required TResult Function(InitAgencyDocumentsState value) init,
    required TResult Function(OpenFileAgencyDocumentsState value) openFile,
    required TResult Function(MessageAgencyDocumentsState value) message,
  }) {
    return openFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
  }) {
    return openFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile(this);
    }
    return orElse();
  }
}

abstract class OpenFileAgencyDocumentsState implements AgencyDocumentsState {
  const factory OpenFileAgencyDocumentsState(
      {required String nameFile,
      required Uint8List file,
      required String type}) = _$OpenFileAgencyDocumentsState;

  String get nameFile;
  Uint8List get file;
  String get type;
  @JsonKey(ignore: true)
  $OpenFileAgencyDocumentsStateCopyWith<OpenFileAgencyDocumentsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAgencyDocumentsStateCopyWith<$Res> {
  factory $MessageAgencyDocumentsStateCopyWith(
          MessageAgencyDocumentsState value,
          $Res Function(MessageAgencyDocumentsState) then) =
      _$MessageAgencyDocumentsStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MessageAgencyDocumentsStateCopyWithImpl<$Res>
    extends _$AgencyDocumentsStateCopyWithImpl<$Res>
    implements $MessageAgencyDocumentsStateCopyWith<$Res> {
  _$MessageAgencyDocumentsStateCopyWithImpl(MessageAgencyDocumentsState _value,
      $Res Function(MessageAgencyDocumentsState) _then)
      : super(_value, (v) => _then(v as MessageAgencyDocumentsState));

  @override
  MessageAgencyDocumentsState get _value =>
      super._value as MessageAgencyDocumentsState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessageAgencyDocumentsState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageAgencyDocumentsState implements MessageAgencyDocumentsState {
  const _$MessageAgencyDocumentsState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AgencyDocumentsState.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageAgencyDocumentsState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MessageAgencyDocumentsStateCopyWith<MessageAgencyDocumentsState>
      get copyWith => _$MessageAgencyDocumentsStateCopyWithImpl<
          MessageAgencyDocumentsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<List<AgencyFilesInfoDataModel>> model) init,
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
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<List<AgencyFilesInfoDataModel>> model)? init,
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
    required TResult Function(LoadingAgencyDocumentsState value) loading,
    required TResult Function(InitAgencyDocumentsState value) init,
    required TResult Function(OpenFileAgencyDocumentsState value) openFile,
    required TResult Function(MessageAgencyDocumentsState value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyDocumentsState value)? loading,
    TResult Function(InitAgencyDocumentsState value)? init,
    TResult Function(OpenFileAgencyDocumentsState value)? openFile,
    TResult Function(MessageAgencyDocumentsState value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class MessageAgencyDocumentsState implements AgencyDocumentsState {
  const factory MessageAgencyDocumentsState({required String message}) =
      _$MessageAgencyDocumentsState;

  String get message;
  @JsonKey(ignore: true)
  $MessageAgencyDocumentsStateCopyWith<MessageAgencyDocumentsState>
      get copyWith => throw _privateConstructorUsedError;
}

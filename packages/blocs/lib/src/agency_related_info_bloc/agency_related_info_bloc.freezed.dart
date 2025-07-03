// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agency_related_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AgencyRelatedInfoEventTearOff {
  const _$AgencyRelatedInfoEventTearOff();

  InitAgencyRelatedInfoEvent init(String agencyId) {
    return InitAgencyRelatedInfoEvent(
      agencyId,
    );
  }

  LoadFileAgencyRelatedInfoEvent loadFile(
      {required AgencyFilesInfoDataModel file}) {
    return LoadFileAgencyRelatedInfoEvent(
      file: file,
    );
  }

  ShowMoreAgencyRelatedInfoEvent showMoreNews() {
    return const ShowMoreAgencyRelatedInfoEvent();
  }
}

/// @nodoc
const $AgencyRelatedInfoEvent = _$AgencyRelatedInfoEventTearOff();

/// @nodoc
mixin _$AgencyRelatedInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId) init,
    required TResult Function(AgencyFilesInfoDataModel file) loadFile,
    required TResult Function() showMoreNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId)? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    TResult Function()? showMoreNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId)? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAgencyRelatedInfoEvent value) init,
    required TResult Function(LoadFileAgencyRelatedInfoEvent value) loadFile,
    required TResult Function(ShowMoreAgencyRelatedInfoEvent value)
        showMoreNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAgencyRelatedInfoEvent value)? init,
    TResult Function(LoadFileAgencyRelatedInfoEvent value)? loadFile,
    TResult Function(ShowMoreAgencyRelatedInfoEvent value)? showMoreNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAgencyRelatedInfoEvent value)? init,
    TResult Function(LoadFileAgencyRelatedInfoEvent value)? loadFile,
    TResult Function(ShowMoreAgencyRelatedInfoEvent value)? showMoreNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgencyRelatedInfoEventCopyWith<$Res> {
  factory $AgencyRelatedInfoEventCopyWith(AgencyRelatedInfoEvent value,
          $Res Function(AgencyRelatedInfoEvent) then) =
      _$AgencyRelatedInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgencyRelatedInfoEventCopyWithImpl<$Res>
    implements $AgencyRelatedInfoEventCopyWith<$Res> {
  _$AgencyRelatedInfoEventCopyWithImpl(this._value, this._then);

  final AgencyRelatedInfoEvent _value;
  // ignore: unused_field
  final $Res Function(AgencyRelatedInfoEvent) _then;
}

/// @nodoc
abstract class $InitAgencyRelatedInfoEventCopyWith<$Res> {
  factory $InitAgencyRelatedInfoEventCopyWith(InitAgencyRelatedInfoEvent value,
          $Res Function(InitAgencyRelatedInfoEvent) then) =
      _$InitAgencyRelatedInfoEventCopyWithImpl<$Res>;
  $Res call({String agencyId});
}

/// @nodoc
class _$InitAgencyRelatedInfoEventCopyWithImpl<$Res>
    extends _$AgencyRelatedInfoEventCopyWithImpl<$Res>
    implements $InitAgencyRelatedInfoEventCopyWith<$Res> {
  _$InitAgencyRelatedInfoEventCopyWithImpl(InitAgencyRelatedInfoEvent _value,
      $Res Function(InitAgencyRelatedInfoEvent) _then)
      : super(_value, (v) => _then(v as InitAgencyRelatedInfoEvent));

  @override
  InitAgencyRelatedInfoEvent get _value =>
      super._value as InitAgencyRelatedInfoEvent;

  @override
  $Res call({
    Object? agencyId = freezed,
  }) {
    return _then(InitAgencyRelatedInfoEvent(
      agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitAgencyRelatedInfoEvent implements InitAgencyRelatedInfoEvent {
  const _$InitAgencyRelatedInfoEvent(this.agencyId);

  @override
  final String agencyId;

  @override
  String toString() {
    return 'AgencyRelatedInfoEvent.init(agencyId: $agencyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitAgencyRelatedInfoEvent &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(agencyId));

  @JsonKey(ignore: true)
  @override
  $InitAgencyRelatedInfoEventCopyWith<InitAgencyRelatedInfoEvent>
      get copyWith =>
          _$InitAgencyRelatedInfoEventCopyWithImpl<InitAgencyRelatedInfoEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId) init,
    required TResult Function(AgencyFilesInfoDataModel file) loadFile,
    required TResult Function() showMoreNews,
  }) {
    return init(agencyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId)? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    TResult Function()? showMoreNews,
  }) {
    return init?.call(agencyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId)? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(agencyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAgencyRelatedInfoEvent value) init,
    required TResult Function(LoadFileAgencyRelatedInfoEvent value) loadFile,
    required TResult Function(ShowMoreAgencyRelatedInfoEvent value)
        showMoreNews,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAgencyRelatedInfoEvent value)? init,
    TResult Function(LoadFileAgencyRelatedInfoEvent value)? loadFile,
    TResult Function(ShowMoreAgencyRelatedInfoEvent value)? showMoreNews,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAgencyRelatedInfoEvent value)? init,
    TResult Function(LoadFileAgencyRelatedInfoEvent value)? loadFile,
    TResult Function(ShowMoreAgencyRelatedInfoEvent value)? showMoreNews,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAgencyRelatedInfoEvent implements AgencyRelatedInfoEvent {
  const factory InitAgencyRelatedInfoEvent(String agencyId) =
      _$InitAgencyRelatedInfoEvent;

  String get agencyId;
  @JsonKey(ignore: true)
  $InitAgencyRelatedInfoEventCopyWith<InitAgencyRelatedInfoEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFileAgencyRelatedInfoEventCopyWith<$Res> {
  factory $LoadFileAgencyRelatedInfoEventCopyWith(
          LoadFileAgencyRelatedInfoEvent value,
          $Res Function(LoadFileAgencyRelatedInfoEvent) then) =
      _$LoadFileAgencyRelatedInfoEventCopyWithImpl<$Res>;
  $Res call({AgencyFilesInfoDataModel file});

  $AgencyFilesInfoDataModelCopyWith<$Res> get file;
}

/// @nodoc
class _$LoadFileAgencyRelatedInfoEventCopyWithImpl<$Res>
    extends _$AgencyRelatedInfoEventCopyWithImpl<$Res>
    implements $LoadFileAgencyRelatedInfoEventCopyWith<$Res> {
  _$LoadFileAgencyRelatedInfoEventCopyWithImpl(
      LoadFileAgencyRelatedInfoEvent _value,
      $Res Function(LoadFileAgencyRelatedInfoEvent) _then)
      : super(_value, (v) => _then(v as LoadFileAgencyRelatedInfoEvent));

  @override
  LoadFileAgencyRelatedInfoEvent get _value =>
      super._value as LoadFileAgencyRelatedInfoEvent;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(LoadFileAgencyRelatedInfoEvent(
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

class _$LoadFileAgencyRelatedInfoEvent
    implements LoadFileAgencyRelatedInfoEvent {
  _$LoadFileAgencyRelatedInfoEvent({required this.file});

  @override
  final AgencyFilesInfoDataModel file;

  @override
  String toString() {
    return 'AgencyRelatedInfoEvent.loadFile(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFileAgencyRelatedInfoEvent &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $LoadFileAgencyRelatedInfoEventCopyWith<LoadFileAgencyRelatedInfoEvent>
      get copyWith => _$LoadFileAgencyRelatedInfoEventCopyWithImpl<
          LoadFileAgencyRelatedInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId) init,
    required TResult Function(AgencyFilesInfoDataModel file) loadFile,
    required TResult Function() showMoreNews,
  }) {
    return loadFile(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId)? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    TResult Function()? showMoreNews,
  }) {
    return loadFile?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId)? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    TResult Function()? showMoreNews,
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
    required TResult Function(InitAgencyRelatedInfoEvent value) init,
    required TResult Function(LoadFileAgencyRelatedInfoEvent value) loadFile,
    required TResult Function(ShowMoreAgencyRelatedInfoEvent value)
        showMoreNews,
  }) {
    return loadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAgencyRelatedInfoEvent value)? init,
    TResult Function(LoadFileAgencyRelatedInfoEvent value)? loadFile,
    TResult Function(ShowMoreAgencyRelatedInfoEvent value)? showMoreNews,
  }) {
    return loadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAgencyRelatedInfoEvent value)? init,
    TResult Function(LoadFileAgencyRelatedInfoEvent value)? loadFile,
    TResult Function(ShowMoreAgencyRelatedInfoEvent value)? showMoreNews,
    required TResult orElse(),
  }) {
    if (loadFile != null) {
      return loadFile(this);
    }
    return orElse();
  }
}

abstract class LoadFileAgencyRelatedInfoEvent
    implements AgencyRelatedInfoEvent {
  factory LoadFileAgencyRelatedInfoEvent(
          {required AgencyFilesInfoDataModel file}) =
      _$LoadFileAgencyRelatedInfoEvent;

  AgencyFilesInfoDataModel get file;
  @JsonKey(ignore: true)
  $LoadFileAgencyRelatedInfoEventCopyWith<LoadFileAgencyRelatedInfoEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowMoreAgencyRelatedInfoEventCopyWith<$Res> {
  factory $ShowMoreAgencyRelatedInfoEventCopyWith(
          ShowMoreAgencyRelatedInfoEvent value,
          $Res Function(ShowMoreAgencyRelatedInfoEvent) then) =
      _$ShowMoreAgencyRelatedInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowMoreAgencyRelatedInfoEventCopyWithImpl<$Res>
    extends _$AgencyRelatedInfoEventCopyWithImpl<$Res>
    implements $ShowMoreAgencyRelatedInfoEventCopyWith<$Res> {
  _$ShowMoreAgencyRelatedInfoEventCopyWithImpl(
      ShowMoreAgencyRelatedInfoEvent _value,
      $Res Function(ShowMoreAgencyRelatedInfoEvent) _then)
      : super(_value, (v) => _then(v as ShowMoreAgencyRelatedInfoEvent));

  @override
  ShowMoreAgencyRelatedInfoEvent get _value =>
      super._value as ShowMoreAgencyRelatedInfoEvent;
}

/// @nodoc

class _$ShowMoreAgencyRelatedInfoEvent
    implements ShowMoreAgencyRelatedInfoEvent {
  const _$ShowMoreAgencyRelatedInfoEvent();

  @override
  String toString() {
    return 'AgencyRelatedInfoEvent.showMoreNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowMoreAgencyRelatedInfoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId) init,
    required TResult Function(AgencyFilesInfoDataModel file) loadFile,
    required TResult Function() showMoreNews,
  }) {
    return showMoreNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId)? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    TResult Function()? showMoreNews,
  }) {
    return showMoreNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId)? init,
    TResult Function(AgencyFilesInfoDataModel file)? loadFile,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) {
    if (showMoreNews != null) {
      return showMoreNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAgencyRelatedInfoEvent value) init,
    required TResult Function(LoadFileAgencyRelatedInfoEvent value) loadFile,
    required TResult Function(ShowMoreAgencyRelatedInfoEvent value)
        showMoreNews,
  }) {
    return showMoreNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAgencyRelatedInfoEvent value)? init,
    TResult Function(LoadFileAgencyRelatedInfoEvent value)? loadFile,
    TResult Function(ShowMoreAgencyRelatedInfoEvent value)? showMoreNews,
  }) {
    return showMoreNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAgencyRelatedInfoEvent value)? init,
    TResult Function(LoadFileAgencyRelatedInfoEvent value)? loadFile,
    TResult Function(ShowMoreAgencyRelatedInfoEvent value)? showMoreNews,
    required TResult orElse(),
  }) {
    if (showMoreNews != null) {
      return showMoreNews(this);
    }
    return orElse();
  }
}

abstract class ShowMoreAgencyRelatedInfoEvent
    implements AgencyRelatedInfoEvent {
  const factory ShowMoreAgencyRelatedInfoEvent() =
      _$ShowMoreAgencyRelatedInfoEvent;
}

/// @nodoc
class _$AgencyRelatedInfoStateTearOff {
  const _$AgencyRelatedInfoStateTearOff();

  LoadingAgencyRelatedInfoStateState loading() {
    return const LoadingAgencyRelatedInfoStateState();
  }

  LoadingEmployersAgencyRelatedInfoStateState loadingEmployers() {
    return const LoadingEmployersAgencyRelatedInfoStateState();
  }

  InitAgencyRelatedInfoStateState init(
      {required List<JobCompaniesDataModel> jobCompanies,
      required NewsInfoDataModel newsList,
      required List<AgencyFilesInfoDataModel> documents,
      required String orgLogo}) {
    return InitAgencyRelatedInfoStateState(
      jobCompanies: jobCompanies,
      newsList: newsList,
      documents: documents,
      orgLogo: orgLogo,
    );
  }

  OpenAgencyRelatedInfoStateState openFile(
      {required String nameFile,
      required Uint8List file,
      required String type}) {
    return OpenAgencyRelatedInfoStateState(
      nameFile: nameFile,
      file: file,
      type: type,
    );
  }

  MessageAgencyRelatedInfoStateState message({required String message}) {
    return MessageAgencyRelatedInfoStateState(
      message: message,
    );
  }
}

/// @nodoc
const $AgencyRelatedInfoState = _$AgencyRelatedInfoStateTearOff();

/// @nodoc
mixin _$AgencyRelatedInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingEmployers,
    required TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)
        init,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAgencyRelatedInfoStateState value) loading,
    required TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)
        loadingEmployers,
    required TResult Function(InitAgencyRelatedInfoStateState value) init,
    required TResult Function(OpenAgencyRelatedInfoStateState value) openFile,
    required TResult Function(MessageAgencyRelatedInfoStateState value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgencyRelatedInfoStateCopyWith<$Res> {
  factory $AgencyRelatedInfoStateCopyWith(AgencyRelatedInfoState value,
          $Res Function(AgencyRelatedInfoState) then) =
      _$AgencyRelatedInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgencyRelatedInfoStateCopyWithImpl<$Res>
    implements $AgencyRelatedInfoStateCopyWith<$Res> {
  _$AgencyRelatedInfoStateCopyWithImpl(this._value, this._then);

  final AgencyRelatedInfoState _value;
  // ignore: unused_field
  final $Res Function(AgencyRelatedInfoState) _then;
}

/// @nodoc
abstract class $LoadingAgencyRelatedInfoStateStateCopyWith<$Res> {
  factory $LoadingAgencyRelatedInfoStateStateCopyWith(
          LoadingAgencyRelatedInfoStateState value,
          $Res Function(LoadingAgencyRelatedInfoStateState) then) =
      _$LoadingAgencyRelatedInfoStateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingAgencyRelatedInfoStateStateCopyWithImpl<$Res>
    extends _$AgencyRelatedInfoStateCopyWithImpl<$Res>
    implements $LoadingAgencyRelatedInfoStateStateCopyWith<$Res> {
  _$LoadingAgencyRelatedInfoStateStateCopyWithImpl(
      LoadingAgencyRelatedInfoStateState _value,
      $Res Function(LoadingAgencyRelatedInfoStateState) _then)
      : super(_value, (v) => _then(v as LoadingAgencyRelatedInfoStateState));

  @override
  LoadingAgencyRelatedInfoStateState get _value =>
      super._value as LoadingAgencyRelatedInfoStateState;
}

/// @nodoc

class _$LoadingAgencyRelatedInfoStateState
    implements LoadingAgencyRelatedInfoStateState {
  const _$LoadingAgencyRelatedInfoStateState();

  @override
  String toString() {
    return 'AgencyRelatedInfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingAgencyRelatedInfoStateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingEmployers,
    required TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)
        init,
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
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
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
    required TResult Function(LoadingAgencyRelatedInfoStateState value) loading,
    required TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)
        loadingEmployers,
    required TResult Function(InitAgencyRelatedInfoStateState value) init,
    required TResult Function(OpenAgencyRelatedInfoStateState value) openFile,
    required TResult Function(MessageAgencyRelatedInfoStateState value) message,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAgencyRelatedInfoStateState
    implements AgencyRelatedInfoState {
  const factory LoadingAgencyRelatedInfoStateState() =
      _$LoadingAgencyRelatedInfoStateState;
}

/// @nodoc
abstract class $LoadingEmployersAgencyRelatedInfoStateStateCopyWith<$Res> {
  factory $LoadingEmployersAgencyRelatedInfoStateStateCopyWith(
          LoadingEmployersAgencyRelatedInfoStateState value,
          $Res Function(LoadingEmployersAgencyRelatedInfoStateState) then) =
      _$LoadingEmployersAgencyRelatedInfoStateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingEmployersAgencyRelatedInfoStateStateCopyWithImpl<$Res>
    extends _$AgencyRelatedInfoStateCopyWithImpl<$Res>
    implements $LoadingEmployersAgencyRelatedInfoStateStateCopyWith<$Res> {
  _$LoadingEmployersAgencyRelatedInfoStateStateCopyWithImpl(
      LoadingEmployersAgencyRelatedInfoStateState _value,
      $Res Function(LoadingEmployersAgencyRelatedInfoStateState) _then)
      : super(_value,
            (v) => _then(v as LoadingEmployersAgencyRelatedInfoStateState));

  @override
  LoadingEmployersAgencyRelatedInfoStateState get _value =>
      super._value as LoadingEmployersAgencyRelatedInfoStateState;
}

/// @nodoc

class _$LoadingEmployersAgencyRelatedInfoStateState
    implements LoadingEmployersAgencyRelatedInfoStateState {
  const _$LoadingEmployersAgencyRelatedInfoStateState();

  @override
  String toString() {
    return 'AgencyRelatedInfoState.loadingEmployers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingEmployersAgencyRelatedInfoStateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingEmployers,
    required TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)
        init,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return loadingEmployers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return loadingEmployers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (loadingEmployers != null) {
      return loadingEmployers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAgencyRelatedInfoStateState value) loading,
    required TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)
        loadingEmployers,
    required TResult Function(InitAgencyRelatedInfoStateState value) init,
    required TResult Function(OpenAgencyRelatedInfoStateState value) openFile,
    required TResult Function(MessageAgencyRelatedInfoStateState value) message,
  }) {
    return loadingEmployers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
  }) {
    return loadingEmployers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
    required TResult orElse(),
  }) {
    if (loadingEmployers != null) {
      return loadingEmployers(this);
    }
    return orElse();
  }
}

abstract class LoadingEmployersAgencyRelatedInfoStateState
    implements AgencyRelatedInfoState {
  const factory LoadingEmployersAgencyRelatedInfoStateState() =
      _$LoadingEmployersAgencyRelatedInfoStateState;
}

/// @nodoc
abstract class $InitAgencyRelatedInfoStateStateCopyWith<$Res> {
  factory $InitAgencyRelatedInfoStateStateCopyWith(
          InitAgencyRelatedInfoStateState value,
          $Res Function(InitAgencyRelatedInfoStateState) then) =
      _$InitAgencyRelatedInfoStateStateCopyWithImpl<$Res>;
  $Res call(
      {List<JobCompaniesDataModel> jobCompanies,
      NewsInfoDataModel newsList,
      List<AgencyFilesInfoDataModel> documents,
      String orgLogo});

  $NewsInfoDataModelCopyWith<$Res> get newsList;
}

/// @nodoc
class _$InitAgencyRelatedInfoStateStateCopyWithImpl<$Res>
    extends _$AgencyRelatedInfoStateCopyWithImpl<$Res>
    implements $InitAgencyRelatedInfoStateStateCopyWith<$Res> {
  _$InitAgencyRelatedInfoStateStateCopyWithImpl(
      InitAgencyRelatedInfoStateState _value,
      $Res Function(InitAgencyRelatedInfoStateState) _then)
      : super(_value, (v) => _then(v as InitAgencyRelatedInfoStateState));

  @override
  InitAgencyRelatedInfoStateState get _value =>
      super._value as InitAgencyRelatedInfoStateState;

  @override
  $Res call({
    Object? jobCompanies = freezed,
    Object? newsList = freezed,
    Object? documents = freezed,
    Object? orgLogo = freezed,
  }) {
    return _then(InitAgencyRelatedInfoStateState(
      jobCompanies: jobCompanies == freezed
          ? _value.jobCompanies
          : jobCompanies // ignore: cast_nullable_to_non_nullable
              as List<JobCompaniesDataModel>,
      newsList: newsList == freezed
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as NewsInfoDataModel,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<AgencyFilesInfoDataModel>,
      orgLogo: orgLogo == freezed
          ? _value.orgLogo
          : orgLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $NewsInfoDataModelCopyWith<$Res> get newsList {
    return $NewsInfoDataModelCopyWith<$Res>(_value.newsList, (value) {
      return _then(_value.copyWith(newsList: value));
    });
  }
}

/// @nodoc

class _$InitAgencyRelatedInfoStateState
    implements InitAgencyRelatedInfoStateState {
  const _$InitAgencyRelatedInfoStateState(
      {required this.jobCompanies,
      required this.newsList,
      required this.documents,
      required this.orgLogo});

  @override
  final List<JobCompaniesDataModel> jobCompanies;
  @override
  final NewsInfoDataModel newsList;
  @override
  final List<AgencyFilesInfoDataModel> documents;
  @override
  final String orgLogo;

  @override
  String toString() {
    return 'AgencyRelatedInfoState.init(jobCompanies: $jobCompanies, newsList: $newsList, documents: $documents, orgLogo: $orgLogo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitAgencyRelatedInfoStateState &&
            const DeepCollectionEquality()
                .equals(other.jobCompanies, jobCompanies) &&
            const DeepCollectionEquality().equals(other.newsList, newsList) &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            const DeepCollectionEquality().equals(other.orgLogo, orgLogo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(jobCompanies),
      const DeepCollectionEquality().hash(newsList),
      const DeepCollectionEquality().hash(documents),
      const DeepCollectionEquality().hash(orgLogo));

  @JsonKey(ignore: true)
  @override
  $InitAgencyRelatedInfoStateStateCopyWith<InitAgencyRelatedInfoStateState>
      get copyWith => _$InitAgencyRelatedInfoStateStateCopyWithImpl<
          InitAgencyRelatedInfoStateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingEmployers,
    required TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)
        init,
    required TResult Function(String nameFile, Uint8List file, String type)
        openFile,
    required TResult Function(String message) message,
  }) {
    return init(jobCompanies, newsList, documents, orgLogo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return init?.call(jobCompanies, newsList, documents, orgLogo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(jobCompanies, newsList, documents, orgLogo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAgencyRelatedInfoStateState value) loading,
    required TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)
        loadingEmployers,
    required TResult Function(InitAgencyRelatedInfoStateState value) init,
    required TResult Function(OpenAgencyRelatedInfoStateState value) openFile,
    required TResult Function(MessageAgencyRelatedInfoStateState value) message,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAgencyRelatedInfoStateState
    implements AgencyRelatedInfoState {
  const factory InitAgencyRelatedInfoStateState(
      {required List<JobCompaniesDataModel> jobCompanies,
      required NewsInfoDataModel newsList,
      required List<AgencyFilesInfoDataModel> documents,
      required String orgLogo}) = _$InitAgencyRelatedInfoStateState;

  List<JobCompaniesDataModel> get jobCompanies;
  NewsInfoDataModel get newsList;
  List<AgencyFilesInfoDataModel> get documents;
  String get orgLogo;
  @JsonKey(ignore: true)
  $InitAgencyRelatedInfoStateStateCopyWith<InitAgencyRelatedInfoStateState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAgencyRelatedInfoStateStateCopyWith<$Res> {
  factory $OpenAgencyRelatedInfoStateStateCopyWith(
          OpenAgencyRelatedInfoStateState value,
          $Res Function(OpenAgencyRelatedInfoStateState) then) =
      _$OpenAgencyRelatedInfoStateStateCopyWithImpl<$Res>;
  $Res call({String nameFile, Uint8List file, String type});
}

/// @nodoc
class _$OpenAgencyRelatedInfoStateStateCopyWithImpl<$Res>
    extends _$AgencyRelatedInfoStateCopyWithImpl<$Res>
    implements $OpenAgencyRelatedInfoStateStateCopyWith<$Res> {
  _$OpenAgencyRelatedInfoStateStateCopyWithImpl(
      OpenAgencyRelatedInfoStateState _value,
      $Res Function(OpenAgencyRelatedInfoStateState) _then)
      : super(_value, (v) => _then(v as OpenAgencyRelatedInfoStateState));

  @override
  OpenAgencyRelatedInfoStateState get _value =>
      super._value as OpenAgencyRelatedInfoStateState;

  @override
  $Res call({
    Object? nameFile = freezed,
    Object? file = freezed,
    Object? type = freezed,
  }) {
    return _then(OpenAgencyRelatedInfoStateState(
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

class _$OpenAgencyRelatedInfoStateState
    implements OpenAgencyRelatedInfoStateState {
  const _$OpenAgencyRelatedInfoStateState(
      {required this.nameFile, required this.file, required this.type});

  @override
  final String nameFile;
  @override
  final Uint8List file;
  @override
  final String type;

  @override
  String toString() {
    return 'AgencyRelatedInfoState.openFile(nameFile: $nameFile, file: $file, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenAgencyRelatedInfoStateState &&
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
  $OpenAgencyRelatedInfoStateStateCopyWith<OpenAgencyRelatedInfoStateState>
      get copyWith => _$OpenAgencyRelatedInfoStateStateCopyWithImpl<
          OpenAgencyRelatedInfoStateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingEmployers,
    required TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)
        init,
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
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return openFile?.call(nameFile, file, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
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
    required TResult Function(LoadingAgencyRelatedInfoStateState value) loading,
    required TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)
        loadingEmployers,
    required TResult Function(InitAgencyRelatedInfoStateState value) init,
    required TResult Function(OpenAgencyRelatedInfoStateState value) openFile,
    required TResult Function(MessageAgencyRelatedInfoStateState value) message,
  }) {
    return openFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
  }) {
    return openFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile(this);
    }
    return orElse();
  }
}

abstract class OpenAgencyRelatedInfoStateState
    implements AgencyRelatedInfoState {
  const factory OpenAgencyRelatedInfoStateState(
      {required String nameFile,
      required Uint8List file,
      required String type}) = _$OpenAgencyRelatedInfoStateState;

  String get nameFile;
  Uint8List get file;
  String get type;
  @JsonKey(ignore: true)
  $OpenAgencyRelatedInfoStateStateCopyWith<OpenAgencyRelatedInfoStateState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAgencyRelatedInfoStateStateCopyWith<$Res> {
  factory $MessageAgencyRelatedInfoStateStateCopyWith(
          MessageAgencyRelatedInfoStateState value,
          $Res Function(MessageAgencyRelatedInfoStateState) then) =
      _$MessageAgencyRelatedInfoStateStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MessageAgencyRelatedInfoStateStateCopyWithImpl<$Res>
    extends _$AgencyRelatedInfoStateCopyWithImpl<$Res>
    implements $MessageAgencyRelatedInfoStateStateCopyWith<$Res> {
  _$MessageAgencyRelatedInfoStateStateCopyWithImpl(
      MessageAgencyRelatedInfoStateState _value,
      $Res Function(MessageAgencyRelatedInfoStateState) _then)
      : super(_value, (v) => _then(v as MessageAgencyRelatedInfoStateState));

  @override
  MessageAgencyRelatedInfoStateState get _value =>
      super._value as MessageAgencyRelatedInfoStateState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessageAgencyRelatedInfoStateState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageAgencyRelatedInfoStateState
    implements MessageAgencyRelatedInfoStateState {
  const _$MessageAgencyRelatedInfoStateState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AgencyRelatedInfoState.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageAgencyRelatedInfoStateState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MessageAgencyRelatedInfoStateStateCopyWith<
          MessageAgencyRelatedInfoStateState>
      get copyWith => _$MessageAgencyRelatedInfoStateStateCopyWithImpl<
          MessageAgencyRelatedInfoStateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingEmployers,
    required TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)
        init,
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
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
    TResult Function(String nameFile, Uint8List file, String type)? openFile,
    TResult Function(String message)? message,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingEmployers,
    TResult Function(
            List<JobCompaniesDataModel> jobCompanies,
            NewsInfoDataModel newsList,
            List<AgencyFilesInfoDataModel> documents,
            String orgLogo)?
        init,
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
    required TResult Function(LoadingAgencyRelatedInfoStateState value) loading,
    required TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)
        loadingEmployers,
    required TResult Function(InitAgencyRelatedInfoStateState value) init,
    required TResult Function(OpenAgencyRelatedInfoStateState value) openFile,
    required TResult Function(MessageAgencyRelatedInfoStateState value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAgencyRelatedInfoStateState value)? loading,
    TResult Function(LoadingEmployersAgencyRelatedInfoStateState value)?
        loadingEmployers,
    TResult Function(InitAgencyRelatedInfoStateState value)? init,
    TResult Function(OpenAgencyRelatedInfoStateState value)? openFile,
    TResult Function(MessageAgencyRelatedInfoStateState value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class MessageAgencyRelatedInfoStateState
    implements AgencyRelatedInfoState {
  const factory MessageAgencyRelatedInfoStateState({required String message}) =
      _$MessageAgencyRelatedInfoStateState;

  String get message;
  @JsonKey(ignore: true)
  $MessageAgencyRelatedInfoStateStateCopyWith<
          MessageAgencyRelatedInfoStateState>
      get copyWith => throw _privateConstructorUsedError;
}

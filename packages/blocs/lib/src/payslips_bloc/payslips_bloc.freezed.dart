// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payslips_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PayslipsEventTearOff {
  const _$PayslipsEventTearOff();

  GetPayslipEvent getPayslip(int year, bool isAnnualStatement) {
    return GetPayslipEvent(
      year,
      isAnnualStatement,
    );
  }

  GetFilePayslipEvent getFile({required String link}) {
    return GetFilePayslipEvent(
      link: link,
    );
  }
}

/// @nodoc
const $PayslipsEvent = _$PayslipsEventTearOff();

/// @nodoc
mixin _$PayslipsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int year, bool isAnnualStatement) getPayslip,
    required TResult Function(String link) getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int year, bool isAnnualStatement)? getPayslip,
    TResult Function(String link)? getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int year, bool isAnnualStatement)? getPayslip,
    TResult Function(String link)? getFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPayslipEvent value) getPayslip,
    required TResult Function(GetFilePayslipEvent value) getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPayslipEvent value)? getPayslip,
    TResult Function(GetFilePayslipEvent value)? getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPayslipEvent value)? getPayslip,
    TResult Function(GetFilePayslipEvent value)? getFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipsEventCopyWith<$Res> {
  factory $PayslipsEventCopyWith(
          PayslipsEvent value, $Res Function(PayslipsEvent) then) =
      _$PayslipsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PayslipsEventCopyWithImpl<$Res>
    implements $PayslipsEventCopyWith<$Res> {
  _$PayslipsEventCopyWithImpl(this._value, this._then);

  final PayslipsEvent _value;
  // ignore: unused_field
  final $Res Function(PayslipsEvent) _then;
}

/// @nodoc
abstract class $GetPayslipEventCopyWith<$Res> {
  factory $GetPayslipEventCopyWith(
          GetPayslipEvent value, $Res Function(GetPayslipEvent) then) =
      _$GetPayslipEventCopyWithImpl<$Res>;
  $Res call({int year, bool isAnnualStatement});
}

/// @nodoc
class _$GetPayslipEventCopyWithImpl<$Res>
    extends _$PayslipsEventCopyWithImpl<$Res>
    implements $GetPayslipEventCopyWith<$Res> {
  _$GetPayslipEventCopyWithImpl(
      GetPayslipEvent _value, $Res Function(GetPayslipEvent) _then)
      : super(_value, (v) => _then(v as GetPayslipEvent));

  @override
  GetPayslipEvent get _value => super._value as GetPayslipEvent;

  @override
  $Res call({
    Object? year = freezed,
    Object? isAnnualStatement = freezed,
  }) {
    return _then(GetPayslipEvent(
      year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      isAnnualStatement == freezed
          ? _value.isAnnualStatement
          : isAnnualStatement // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetPayslipEvent implements GetPayslipEvent {
  _$GetPayslipEvent(this.year, this.isAnnualStatement);

  @override
  final int year;
  @override
  final bool isAnnualStatement;

  @override
  String toString() {
    return 'PayslipsEvent.getPayslip(year: $year, isAnnualStatement: $isAnnualStatement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPayslipEvent &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality()
                .equals(other.isAnnualStatement, isAnnualStatement));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(isAnnualStatement));

  @JsonKey(ignore: true)
  @override
  $GetPayslipEventCopyWith<GetPayslipEvent> get copyWith =>
      _$GetPayslipEventCopyWithImpl<GetPayslipEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int year, bool isAnnualStatement) getPayslip,
    required TResult Function(String link) getFile,
  }) {
    return getPayslip(year, isAnnualStatement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int year, bool isAnnualStatement)? getPayslip,
    TResult Function(String link)? getFile,
  }) {
    return getPayslip?.call(year, isAnnualStatement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int year, bool isAnnualStatement)? getPayslip,
    TResult Function(String link)? getFile,
    required TResult orElse(),
  }) {
    if (getPayslip != null) {
      return getPayslip(year, isAnnualStatement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPayslipEvent value) getPayslip,
    required TResult Function(GetFilePayslipEvent value) getFile,
  }) {
    return getPayslip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPayslipEvent value)? getPayslip,
    TResult Function(GetFilePayslipEvent value)? getFile,
  }) {
    return getPayslip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPayslipEvent value)? getPayslip,
    TResult Function(GetFilePayslipEvent value)? getFile,
    required TResult orElse(),
  }) {
    if (getPayslip != null) {
      return getPayslip(this);
    }
    return orElse();
  }
}

abstract class GetPayslipEvent implements PayslipsEvent {
  factory GetPayslipEvent(int year, bool isAnnualStatement) = _$GetPayslipEvent;

  int get year;
  bool get isAnnualStatement;
  @JsonKey(ignore: true)
  $GetPayslipEventCopyWith<GetPayslipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFilePayslipEventCopyWith<$Res> {
  factory $GetFilePayslipEventCopyWith(
          GetFilePayslipEvent value, $Res Function(GetFilePayslipEvent) then) =
      _$GetFilePayslipEventCopyWithImpl<$Res>;
  $Res call({String link});
}

/// @nodoc
class _$GetFilePayslipEventCopyWithImpl<$Res>
    extends _$PayslipsEventCopyWithImpl<$Res>
    implements $GetFilePayslipEventCopyWith<$Res> {
  _$GetFilePayslipEventCopyWithImpl(
      GetFilePayslipEvent _value, $Res Function(GetFilePayslipEvent) _then)
      : super(_value, (v) => _then(v as GetFilePayslipEvent));

  @override
  GetFilePayslipEvent get _value => super._value as GetFilePayslipEvent;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(GetFilePayslipEvent(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFilePayslipEvent implements GetFilePayslipEvent {
  _$GetFilePayslipEvent({required this.link});

  @override
  final String link;

  @override
  String toString() {
    return 'PayslipsEvent.getFile(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFilePayslipEvent &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  $GetFilePayslipEventCopyWith<GetFilePayslipEvent> get copyWith =>
      _$GetFilePayslipEventCopyWithImpl<GetFilePayslipEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int year, bool isAnnualStatement) getPayslip,
    required TResult Function(String link) getFile,
  }) {
    return getFile(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int year, bool isAnnualStatement)? getPayslip,
    TResult Function(String link)? getFile,
  }) {
    return getFile?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int year, bool isAnnualStatement)? getPayslip,
    TResult Function(String link)? getFile,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPayslipEvent value) getPayslip,
    required TResult Function(GetFilePayslipEvent value) getFile,
  }) {
    return getFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPayslipEvent value)? getPayslip,
    TResult Function(GetFilePayslipEvent value)? getFile,
  }) {
    return getFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPayslipEvent value)? getPayslip,
    TResult Function(GetFilePayslipEvent value)? getFile,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(this);
    }
    return orElse();
  }
}

abstract class GetFilePayslipEvent implements PayslipsEvent {
  factory GetFilePayslipEvent({required String link}) = _$GetFilePayslipEvent;

  String get link;
  @JsonKey(ignore: true)
  $GetFilePayslipEventCopyWith<GetFilePayslipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PayslipsStateTearOff {
  const _$PayslipsStateTearOff();

  PayslipsGetResponseState getResponse(
      {required List<List<PayslipsInfoDataModel>> data}) {
    return PayslipsGetResponseState(
      data: data,
    );
  }

  PayslipsLoadState loading() {
    return const PayslipsLoadState();
  }

  LoadingFilePayslipsState loadingFile() {
    return const LoadingFilePayslipsState();
  }

  PayslipsErrorState error({String? message}) {
    return PayslipsErrorState(
      message: message,
    );
  }

  GetFilePayslipsState getFile(
      {required String nameFile,
      required Uint8List file,
      required String type}) {
    return GetFilePayslipsState(
      nameFile: nameFile,
      file: file,
      type: type,
    );
  }
}

/// @nodoc
const $PayslipsState = _$PayslipsStateTearOff();

/// @nodoc
mixin _$PayslipsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<PayslipsInfoDataModel>> data)
        getResponse,
    required TResult Function() loading,
    required TResult Function() loadingFile,
    required TResult Function(String? message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayslipsGetResponseState value) getResponse,
    required TResult Function(PayslipsLoadState value) loading,
    required TResult Function(LoadingFilePayslipsState value) loadingFile,
    required TResult Function(PayslipsErrorState value) error,
    required TResult Function(GetFilePayslipsState value) getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipsStateCopyWith<$Res> {
  factory $PayslipsStateCopyWith(
          PayslipsState value, $Res Function(PayslipsState) then) =
      _$PayslipsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PayslipsStateCopyWithImpl<$Res>
    implements $PayslipsStateCopyWith<$Res> {
  _$PayslipsStateCopyWithImpl(this._value, this._then);

  final PayslipsState _value;
  // ignore: unused_field
  final $Res Function(PayslipsState) _then;
}

/// @nodoc
abstract class $PayslipsGetResponseStateCopyWith<$Res> {
  factory $PayslipsGetResponseStateCopyWith(PayslipsGetResponseState value,
          $Res Function(PayslipsGetResponseState) then) =
      _$PayslipsGetResponseStateCopyWithImpl<$Res>;
  $Res call({List<List<PayslipsInfoDataModel>> data});
}

/// @nodoc
class _$PayslipsGetResponseStateCopyWithImpl<$Res>
    extends _$PayslipsStateCopyWithImpl<$Res>
    implements $PayslipsGetResponseStateCopyWith<$Res> {
  _$PayslipsGetResponseStateCopyWithImpl(PayslipsGetResponseState _value,
      $Res Function(PayslipsGetResponseState) _then)
      : super(_value, (v) => _then(v as PayslipsGetResponseState));

  @override
  PayslipsGetResponseState get _value =>
      super._value as PayslipsGetResponseState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(PayslipsGetResponseState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<List<PayslipsInfoDataModel>>,
    ));
  }
}

/// @nodoc

class _$PayslipsGetResponseState implements PayslipsGetResponseState {
  const _$PayslipsGetResponseState({required this.data});

  @override
  final List<List<PayslipsInfoDataModel>> data;

  @override
  String toString() {
    return 'PayslipsState.getResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayslipsGetResponseState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $PayslipsGetResponseStateCopyWith<PayslipsGetResponseState> get copyWith =>
      _$PayslipsGetResponseStateCopyWithImpl<PayslipsGetResponseState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<PayslipsInfoDataModel>> data)
        getResponse,
    required TResult Function() loading,
    required TResult Function() loadingFile,
    required TResult Function(String? message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return getResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return getResponse?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (getResponse != null) {
      return getResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayslipsGetResponseState value) getResponse,
    required TResult Function(PayslipsLoadState value) loading,
    required TResult Function(LoadingFilePayslipsState value) loadingFile,
    required TResult Function(PayslipsErrorState value) error,
    required TResult Function(GetFilePayslipsState value) getFile,
  }) {
    return getResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
  }) {
    return getResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
    required TResult orElse(),
  }) {
    if (getResponse != null) {
      return getResponse(this);
    }
    return orElse();
  }
}

abstract class PayslipsGetResponseState implements PayslipsState {
  const factory PayslipsGetResponseState(
          {required List<List<PayslipsInfoDataModel>> data}) =
      _$PayslipsGetResponseState;

  List<List<PayslipsInfoDataModel>> get data;
  @JsonKey(ignore: true)
  $PayslipsGetResponseStateCopyWith<PayslipsGetResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipsLoadStateCopyWith<$Res> {
  factory $PayslipsLoadStateCopyWith(
          PayslipsLoadState value, $Res Function(PayslipsLoadState) then) =
      _$PayslipsLoadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PayslipsLoadStateCopyWithImpl<$Res>
    extends _$PayslipsStateCopyWithImpl<$Res>
    implements $PayslipsLoadStateCopyWith<$Res> {
  _$PayslipsLoadStateCopyWithImpl(
      PayslipsLoadState _value, $Res Function(PayslipsLoadState) _then)
      : super(_value, (v) => _then(v as PayslipsLoadState));

  @override
  PayslipsLoadState get _value => super._value as PayslipsLoadState;
}

/// @nodoc

class _$PayslipsLoadState implements PayslipsLoadState {
  const _$PayslipsLoadState();

  @override
  String toString() {
    return 'PayslipsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PayslipsLoadState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<PayslipsInfoDataModel>> data)
        getResponse,
    required TResult Function() loading,
    required TResult Function() loadingFile,
    required TResult Function(String? message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
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
    required TResult Function(PayslipsGetResponseState value) getResponse,
    required TResult Function(PayslipsLoadState value) loading,
    required TResult Function(LoadingFilePayslipsState value) loadingFile,
    required TResult Function(PayslipsErrorState value) error,
    required TResult Function(GetFilePayslipsState value) getFile,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PayslipsLoadState implements PayslipsState {
  const factory PayslipsLoadState() = _$PayslipsLoadState;
}

/// @nodoc
abstract class $LoadingFilePayslipsStateCopyWith<$Res> {
  factory $LoadingFilePayslipsStateCopyWith(LoadingFilePayslipsState value,
          $Res Function(LoadingFilePayslipsState) then) =
      _$LoadingFilePayslipsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingFilePayslipsStateCopyWithImpl<$Res>
    extends _$PayslipsStateCopyWithImpl<$Res>
    implements $LoadingFilePayslipsStateCopyWith<$Res> {
  _$LoadingFilePayslipsStateCopyWithImpl(LoadingFilePayslipsState _value,
      $Res Function(LoadingFilePayslipsState) _then)
      : super(_value, (v) => _then(v as LoadingFilePayslipsState));

  @override
  LoadingFilePayslipsState get _value =>
      super._value as LoadingFilePayslipsState;
}

/// @nodoc

class _$LoadingFilePayslipsState implements LoadingFilePayslipsState {
  const _$LoadingFilePayslipsState();

  @override
  String toString() {
    return 'PayslipsState.loadingFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingFilePayslipsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<PayslipsInfoDataModel>> data)
        getResponse,
    required TResult Function() loading,
    required TResult Function() loadingFile,
    required TResult Function(String? message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return loadingFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return loadingFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (loadingFile != null) {
      return loadingFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayslipsGetResponseState value) getResponse,
    required TResult Function(PayslipsLoadState value) loading,
    required TResult Function(LoadingFilePayslipsState value) loadingFile,
    required TResult Function(PayslipsErrorState value) error,
    required TResult Function(GetFilePayslipsState value) getFile,
  }) {
    return loadingFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
  }) {
    return loadingFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
    required TResult orElse(),
  }) {
    if (loadingFile != null) {
      return loadingFile(this);
    }
    return orElse();
  }
}

abstract class LoadingFilePayslipsState implements PayslipsState {
  const factory LoadingFilePayslipsState() = _$LoadingFilePayslipsState;
}

/// @nodoc
abstract class $PayslipsErrorStateCopyWith<$Res> {
  factory $PayslipsErrorStateCopyWith(
          PayslipsErrorState value, $Res Function(PayslipsErrorState) then) =
      _$PayslipsErrorStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$PayslipsErrorStateCopyWithImpl<$Res>
    extends _$PayslipsStateCopyWithImpl<$Res>
    implements $PayslipsErrorStateCopyWith<$Res> {
  _$PayslipsErrorStateCopyWithImpl(
      PayslipsErrorState _value, $Res Function(PayslipsErrorState) _then)
      : super(_value, (v) => _then(v as PayslipsErrorState));

  @override
  PayslipsErrorState get _value => super._value as PayslipsErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PayslipsErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PayslipsErrorState implements PayslipsErrorState {
  const _$PayslipsErrorState({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PayslipsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayslipsErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PayslipsErrorStateCopyWith<PayslipsErrorState> get copyWith =>
      _$PayslipsErrorStateCopyWithImpl<PayslipsErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<PayslipsInfoDataModel>> data)
        getResponse,
    required TResult Function() loading,
    required TResult Function() loadingFile,
    required TResult Function(String? message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
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
    required TResult Function(PayslipsGetResponseState value) getResponse,
    required TResult Function(PayslipsLoadState value) loading,
    required TResult Function(LoadingFilePayslipsState value) loadingFile,
    required TResult Function(PayslipsErrorState value) error,
    required TResult Function(GetFilePayslipsState value) getFile,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PayslipsErrorState implements PayslipsState {
  const factory PayslipsErrorState({String? message}) = _$PayslipsErrorState;

  String? get message;
  @JsonKey(ignore: true)
  $PayslipsErrorStateCopyWith<PayslipsErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFilePayslipsStateCopyWith<$Res> {
  factory $GetFilePayslipsStateCopyWith(GetFilePayslipsState value,
          $Res Function(GetFilePayslipsState) then) =
      _$GetFilePayslipsStateCopyWithImpl<$Res>;
  $Res call({String nameFile, Uint8List file, String type});
}

/// @nodoc
class _$GetFilePayslipsStateCopyWithImpl<$Res>
    extends _$PayslipsStateCopyWithImpl<$Res>
    implements $GetFilePayslipsStateCopyWith<$Res> {
  _$GetFilePayslipsStateCopyWithImpl(
      GetFilePayslipsState _value, $Res Function(GetFilePayslipsState) _then)
      : super(_value, (v) => _then(v as GetFilePayslipsState));

  @override
  GetFilePayslipsState get _value => super._value as GetFilePayslipsState;

  @override
  $Res call({
    Object? nameFile = freezed,
    Object? file = freezed,
    Object? type = freezed,
  }) {
    return _then(GetFilePayslipsState(
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

class _$GetFilePayslipsState implements GetFilePayslipsState {
  const _$GetFilePayslipsState(
      {required this.nameFile, required this.file, required this.type});

  @override
  final String nameFile;
  @override
  final Uint8List file;
  @override
  final String type;

  @override
  String toString() {
    return 'PayslipsState.getFile(nameFile: $nameFile, file: $file, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFilePayslipsState &&
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
  $GetFilePayslipsStateCopyWith<GetFilePayslipsState> get copyWith =>
      _$GetFilePayslipsStateCopyWithImpl<GetFilePayslipsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<PayslipsInfoDataModel>> data)
        getResponse,
    required TResult Function() loading,
    required TResult Function() loadingFile,
    required TResult Function(String? message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return getFile(nameFile, file, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return getFile?.call(nameFile, file, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<PayslipsInfoDataModel>> data)? getResponse,
    TResult Function()? loading,
    TResult Function()? loadingFile,
    TResult Function(String? message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(nameFile, file, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayslipsGetResponseState value) getResponse,
    required TResult Function(PayslipsLoadState value) loading,
    required TResult Function(LoadingFilePayslipsState value) loadingFile,
    required TResult Function(PayslipsErrorState value) error,
    required TResult Function(GetFilePayslipsState value) getFile,
  }) {
    return getFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
  }) {
    return getFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayslipsGetResponseState value)? getResponse,
    TResult Function(PayslipsLoadState value)? loading,
    TResult Function(LoadingFilePayslipsState value)? loadingFile,
    TResult Function(PayslipsErrorState value)? error,
    TResult Function(GetFilePayslipsState value)? getFile,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(this);
    }
    return orElse();
  }
}

abstract class GetFilePayslipsState implements PayslipsState {
  const factory GetFilePayslipsState(
      {required String nameFile,
      required Uint8List file,
      required String type}) = _$GetFilePayslipsState;

  String get nameFile;
  Uint8List get file;
  String get type;
  @JsonKey(ignore: true)
  $GetFilePayslipsStateCopyWith<GetFilePayslipsState> get copyWith =>
      throw _privateConstructorUsedError;
}

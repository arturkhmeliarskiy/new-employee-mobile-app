// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalendarEventTearOff {
  const _$CalendarEventTearOff();

  ShowMonthEvent showMonth(DateTime date) {
    return ShowMonthEvent(
      date,
    );
  }

  SelectDateEvent selectDate(DateTime date) {
    return SelectDateEvent(
      date,
    );
  }

  PressedAcceptEvent pressedAccept(DateTime date, String id) {
    return PressedAcceptEvent(
      date,
      id,
    );
  }

  PressedRejectEvent pressedReject(DateTime date, String id) {
    return PressedRejectEvent(
      date,
      id,
    );
  }
}

/// @nodoc
const $CalendarEvent = _$CalendarEventTearOff();

/// @nodoc
mixin _$CalendarEvent {
  DateTime get date => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) showMonth,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(DateTime date, String id) pressedAccept,
    required TResult Function(DateTime date, String id) pressedReject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(SelectDateEvent value) selectDate,
    required TResult Function(PressedAcceptEvent value) pressedAccept,
    required TResult Function(PressedRejectEvent value) pressedReject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  final CalendarEvent _value;
  // ignore: unused_field
  final $Res Function(CalendarEvent) _then;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $ShowMonthEventCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $ShowMonthEventCopyWith(
          ShowMonthEvent value, $Res Function(ShowMonthEvent) then) =
      _$ShowMonthEventCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$ShowMonthEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $ShowMonthEventCopyWith<$Res> {
  _$ShowMonthEventCopyWithImpl(
      ShowMonthEvent _value, $Res Function(ShowMonthEvent) _then)
      : super(_value, (v) => _then(v as ShowMonthEvent));

  @override
  ShowMonthEvent get _value => super._value as ShowMonthEvent;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(ShowMonthEvent(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ShowMonthEvent implements ShowMonthEvent {
  const _$ShowMonthEvent(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CalendarEvent.showMonth(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowMonthEvent &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  $ShowMonthEventCopyWith<ShowMonthEvent> get copyWith =>
      _$ShowMonthEventCopyWithImpl<ShowMonthEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) showMonth,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(DateTime date, String id) pressedAccept,
    required TResult Function(DateTime date, String id) pressedReject,
  }) {
    return showMonth(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
  }) {
    return showMonth?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
    required TResult orElse(),
  }) {
    if (showMonth != null) {
      return showMonth(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(SelectDateEvent value) selectDate,
    required TResult Function(PressedAcceptEvent value) pressedAccept,
    required TResult Function(PressedRejectEvent value) pressedReject,
  }) {
    return showMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
  }) {
    return showMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
    required TResult orElse(),
  }) {
    if (showMonth != null) {
      return showMonth(this);
    }
    return orElse();
  }
}

abstract class ShowMonthEvent implements CalendarEvent {
  const factory ShowMonthEvent(DateTime date) = _$ShowMonthEvent;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  $ShowMonthEventCopyWith<ShowMonthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectDateEventCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $SelectDateEventCopyWith(
          SelectDateEvent value, $Res Function(SelectDateEvent) then) =
      _$SelectDateEventCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$SelectDateEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $SelectDateEventCopyWith<$Res> {
  _$SelectDateEventCopyWithImpl(
      SelectDateEvent _value, $Res Function(SelectDateEvent) _then)
      : super(_value, (v) => _then(v as SelectDateEvent));

  @override
  SelectDateEvent get _value => super._value as SelectDateEvent;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(SelectDateEvent(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectDateEvent implements SelectDateEvent {
  const _$SelectDateEvent(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CalendarEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectDateEvent &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  $SelectDateEventCopyWith<SelectDateEvent> get copyWith =>
      _$SelectDateEventCopyWithImpl<SelectDateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) showMonth,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(DateTime date, String id) pressedAccept,
    required TResult Function(DateTime date, String id) pressedReject,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(SelectDateEvent value) selectDate,
    required TResult Function(PressedAcceptEvent value) pressedAccept,
    required TResult Function(PressedRejectEvent value) pressedReject,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class SelectDateEvent implements CalendarEvent {
  const factory SelectDateEvent(DateTime date) = _$SelectDateEvent;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  $SelectDateEventCopyWith<SelectDateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PressedAcceptEventCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $PressedAcceptEventCopyWith(
          PressedAcceptEvent value, $Res Function(PressedAcceptEvent) then) =
      _$PressedAcceptEventCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, String id});
}

/// @nodoc
class _$PressedAcceptEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $PressedAcceptEventCopyWith<$Res> {
  _$PressedAcceptEventCopyWithImpl(
      PressedAcceptEvent _value, $Res Function(PressedAcceptEvent) _then)
      : super(_value, (v) => _then(v as PressedAcceptEvent));

  @override
  PressedAcceptEvent get _value => super._value as PressedAcceptEvent;

  @override
  $Res call({
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(PressedAcceptEvent(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PressedAcceptEvent implements PressedAcceptEvent {
  const _$PressedAcceptEvent(this.date, this.id);

  @override
  final DateTime date;
  @override
  final String id;

  @override
  String toString() {
    return 'CalendarEvent.pressedAccept(date: $date, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PressedAcceptEvent &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $PressedAcceptEventCopyWith<PressedAcceptEvent> get copyWith =>
      _$PressedAcceptEventCopyWithImpl<PressedAcceptEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) showMonth,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(DateTime date, String id) pressedAccept,
    required TResult Function(DateTime date, String id) pressedReject,
  }) {
    return pressedAccept(date, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
  }) {
    return pressedAccept?.call(date, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
    required TResult orElse(),
  }) {
    if (pressedAccept != null) {
      return pressedAccept(date, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(SelectDateEvent value) selectDate,
    required TResult Function(PressedAcceptEvent value) pressedAccept,
    required TResult Function(PressedRejectEvent value) pressedReject,
  }) {
    return pressedAccept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
  }) {
    return pressedAccept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
    required TResult orElse(),
  }) {
    if (pressedAccept != null) {
      return pressedAccept(this);
    }
    return orElse();
  }
}

abstract class PressedAcceptEvent implements CalendarEvent {
  const factory PressedAcceptEvent(DateTime date, String id) =
      _$PressedAcceptEvent;

  @override
  DateTime get date;
  String get id;
  @override
  @JsonKey(ignore: true)
  $PressedAcceptEventCopyWith<PressedAcceptEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PressedRejectEventCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory $PressedRejectEventCopyWith(
          PressedRejectEvent value, $Res Function(PressedRejectEvent) then) =
      _$PressedRejectEventCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, String id});
}

/// @nodoc
class _$PressedRejectEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $PressedRejectEventCopyWith<$Res> {
  _$PressedRejectEventCopyWithImpl(
      PressedRejectEvent _value, $Res Function(PressedRejectEvent) _then)
      : super(_value, (v) => _then(v as PressedRejectEvent));

  @override
  PressedRejectEvent get _value => super._value as PressedRejectEvent;

  @override
  $Res call({
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(PressedRejectEvent(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PressedRejectEvent implements PressedRejectEvent {
  const _$PressedRejectEvent(this.date, this.id);

  @override
  final DateTime date;
  @override
  final String id;

  @override
  String toString() {
    return 'CalendarEvent.pressedReject(date: $date, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PressedRejectEvent &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $PressedRejectEventCopyWith<PressedRejectEvent> get copyWith =>
      _$PressedRejectEventCopyWithImpl<PressedRejectEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) showMonth,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(DateTime date, String id) pressedAccept,
    required TResult Function(DateTime date, String id) pressedReject,
  }) {
    return pressedReject(date, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
  }) {
    return pressedReject?.call(date, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? showMonth,
    TResult Function(DateTime date)? selectDate,
    TResult Function(DateTime date, String id)? pressedAccept,
    TResult Function(DateTime date, String id)? pressedReject,
    required TResult orElse(),
  }) {
    if (pressedReject != null) {
      return pressedReject(date, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(SelectDateEvent value) selectDate,
    required TResult Function(PressedAcceptEvent value) pressedAccept,
    required TResult Function(PressedRejectEvent value) pressedReject,
  }) {
    return pressedReject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
  }) {
    return pressedReject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(SelectDateEvent value)? selectDate,
    TResult Function(PressedAcceptEvent value)? pressedAccept,
    TResult Function(PressedRejectEvent value)? pressedReject,
    required TResult orElse(),
  }) {
    if (pressedReject != null) {
      return pressedReject(this);
    }
    return orElse();
  }
}

abstract class PressedRejectEvent implements CalendarEvent {
  const factory PressedRejectEvent(DateTime date, String id) =
      _$PressedRejectEvent;

  @override
  DateTime get date;
  String get id;
  @override
  @JsonKey(ignore: true)
  $PressedRejectEventCopyWith<PressedRejectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CalendarStateTearOff {
  const _$CalendarStateTearOff();

  InitState init() {
    return const InitState();
  }

  LoadingState loading() {
    return const LoadingState();
  }

  ShiftStatusChangedState shiftStatusChanged() {
    return const ShiftStatusChangedState();
  }

  RequestState request(
      {required DateTime date,
      required List<CalendarShiftsModel> planned,
      required List<CalendarShiftsModel> available,
      required List<int> shiftDays}) {
    return RequestState(
      date: date,
      planned: planned,
      available: available,
      shiftDays: shiftDays,
    );
  }

  ErrorState error({required String message}) {
    return ErrorState(
      message: message,
    );
  }
}

/// @nodoc
const $CalendarState = _$CalendarStateTearOff();

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() shiftStatusChanged,
    required TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)
        request,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ShiftStatusChangedState value) shiftStatusChanged,
    required TResult Function(RequestState value) request,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(InitState _value, $Res Function(InitState) _then)
      : super(_value, (v) => _then(v as InitState));

  @override
  InitState get _value => super._value as InitState;
}

/// @nodoc

class _$InitState implements InitState {
  const _$InitState();

  @override
  String toString() {
    return 'CalendarState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() shiftStatusChanged,
    required TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)
        request,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
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
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ShiftStatusChangedState value) shiftStatusChanged,
    required TResult Function(RequestState value) request,
    required TResult Function(ErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements CalendarState {
  const factory InitState() = _$InitState;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'CalendarState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() shiftStatusChanged,
    required TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)
        request,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
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
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ShiftStatusChangedState value) shiftStatusChanged,
    required TResult Function(RequestState value) request,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements CalendarState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class $ShiftStatusChangedStateCopyWith<$Res> {
  factory $ShiftStatusChangedStateCopyWith(ShiftStatusChangedState value,
          $Res Function(ShiftStatusChangedState) then) =
      _$ShiftStatusChangedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShiftStatusChangedStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements $ShiftStatusChangedStateCopyWith<$Res> {
  _$ShiftStatusChangedStateCopyWithImpl(ShiftStatusChangedState _value,
      $Res Function(ShiftStatusChangedState) _then)
      : super(_value, (v) => _then(v as ShiftStatusChangedState));

  @override
  ShiftStatusChangedState get _value => super._value as ShiftStatusChangedState;
}

/// @nodoc

class _$ShiftStatusChangedState implements ShiftStatusChangedState {
  const _$ShiftStatusChangedState();

  @override
  String toString() {
    return 'CalendarState.shiftStatusChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShiftStatusChangedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() shiftStatusChanged,
    required TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)
        request,
    required TResult Function(String message) error,
  }) {
    return shiftStatusChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
  }) {
    return shiftStatusChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (shiftStatusChanged != null) {
      return shiftStatusChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ShiftStatusChangedState value) shiftStatusChanged,
    required TResult Function(RequestState value) request,
    required TResult Function(ErrorState value) error,
  }) {
    return shiftStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
  }) {
    return shiftStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (shiftStatusChanged != null) {
      return shiftStatusChanged(this);
    }
    return orElse();
  }
}

abstract class ShiftStatusChangedState implements CalendarState {
  const factory ShiftStatusChangedState() = _$ShiftStatusChangedState;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      List<CalendarShiftsModel> planned,
      List<CalendarShiftsModel> available,
      List<int> shiftDays});
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(
      RequestState _value, $Res Function(RequestState) _then)
      : super(_value, (v) => _then(v as RequestState));

  @override
  RequestState get _value => super._value as RequestState;

  @override
  $Res call({
    Object? date = freezed,
    Object? planned = freezed,
    Object? available = freezed,
    Object? shiftDays = freezed,
  }) {
    return _then(RequestState(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      planned: planned == freezed
          ? _value.planned
          : planned // ignore: cast_nullable_to_non_nullable
              as List<CalendarShiftsModel>,
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as List<CalendarShiftsModel>,
      shiftDays: shiftDays == freezed
          ? _value.shiftDays
          : shiftDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$RequestState implements RequestState {
  const _$RequestState(
      {required this.date,
      required this.planned,
      required this.available,
      required this.shiftDays});

  @override
  final DateTime date;
  @override
  final List<CalendarShiftsModel> planned;
  @override
  final List<CalendarShiftsModel> available;
  @override
  final List<int> shiftDays;

  @override
  String toString() {
    return 'CalendarState.request(date: $date, planned: $planned, available: $available, shiftDays: $shiftDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestState &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.planned, planned) &&
            const DeepCollectionEquality().equals(other.available, available) &&
            const DeepCollectionEquality().equals(other.shiftDays, shiftDays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(planned),
      const DeepCollectionEquality().hash(available),
      const DeepCollectionEquality().hash(shiftDays));

  @JsonKey(ignore: true)
  @override
  $RequestStateCopyWith<RequestState> get copyWith =>
      _$RequestStateCopyWithImpl<RequestState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() shiftStatusChanged,
    required TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)
        request,
    required TResult Function(String message) error,
  }) {
    return request(date, planned, available, shiftDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
  }) {
    return request?.call(date, planned, available, shiftDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(date, planned, available, shiftDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ShiftStatusChangedState value) shiftStatusChanged,
    required TResult Function(RequestState value) request,
    required TResult Function(ErrorState value) error,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class RequestState implements CalendarState {
  const factory RequestState(
      {required DateTime date,
      required List<CalendarShiftsModel> planned,
      required List<CalendarShiftsModel> available,
      required List<int> shiftDays}) = _$RequestState;

  DateTime get date;
  List<CalendarShiftsModel> get planned;
  List<CalendarShiftsModel> get available;
  List<int> get shiftDays;
  @JsonKey(ignore: true)
  $RequestStateCopyWith<RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CalendarState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() shiftStatusChanged,
    required TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)
        request,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? shiftStatusChanged,
    TResult Function(DateTime date, List<CalendarShiftsModel> planned,
            List<CalendarShiftsModel> available, List<int> shiftDays)?
        request,
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
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ShiftStatusChangedState value) shiftStatusChanged,
    required TResult Function(RequestState value) request,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(ShiftStatusChangedState value)? shiftStatusChanged,
    TResult Function(RequestState value)? request,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements CalendarState {
  const factory ErrorState({required String message}) = _$ErrorState;

  String get message;
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

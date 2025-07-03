// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hours_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HoursDataModel _$HoursDataModelFromJson(Map<String, dynamic> json) {
  return _HoursDataModel.fromJson(json);
}

/// @nodoc
class _$HoursDataModelTearOff {
  const _$HoursDataModelTearOff();

  _HoursDataModel call(
      {required String id,
      required String cardType,
      required String name,
      required String date,
      required double amountOfHours,
      required String description,
      required bool isDeleted,
      required String sfRecordId,
      required String createdAt,
      required String projectId,
      required String tarifId,
      required bool unraveling}) {
    return _HoursDataModel(
      id: id,
      cardType: cardType,
      name: name,
      date: date,
      amountOfHours: amountOfHours,
      description: description,
      isDeleted: isDeleted,
      sfRecordId: sfRecordId,
      createdAt: createdAt,
      projectId: projectId,
      tarifId: tarifId,
      unraveling: unraveling,
    );
  }

  HoursDataModel fromJson(Map<String, Object?> json) {
    return HoursDataModel.fromJson(json);
  }
}

/// @nodoc
const $HoursDataModel = _$HoursDataModelTearOff();

/// @nodoc
mixin _$HoursDataModel {
  String get id => throw _privateConstructorUsedError;
  String get cardType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  double get amountOfHours => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String get sfRecordId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get tarifId => throw _privateConstructorUsedError;
  bool get unraveling => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoursDataModelCopyWith<HoursDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoursDataModelCopyWith<$Res> {
  factory $HoursDataModelCopyWith(
          HoursDataModel value, $Res Function(HoursDataModel) then) =
      _$HoursDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String cardType,
      String name,
      String date,
      double amountOfHours,
      String description,
      bool isDeleted,
      String sfRecordId,
      String createdAt,
      String projectId,
      String tarifId,
      bool unraveling});
}

/// @nodoc
class _$HoursDataModelCopyWithImpl<$Res>
    implements $HoursDataModelCopyWith<$Res> {
  _$HoursDataModelCopyWithImpl(this._value, this._then);

  final HoursDataModel _value;
  // ignore: unused_field
  final $Res Function(HoursDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cardType = freezed,
    Object? name = freezed,
    Object? date = freezed,
    Object? amountOfHours = freezed,
    Object? description = freezed,
    Object? isDeleted = freezed,
    Object? sfRecordId = freezed,
    Object? createdAt = freezed,
    Object? projectId = freezed,
    Object? tarifId = freezed,
    Object? unraveling = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: cardType == freezed
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amountOfHours: amountOfHours == freezed
          ? _value.amountOfHours
          : amountOfHours // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sfRecordId: sfRecordId == freezed
          ? _value.sfRecordId
          : sfRecordId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifId: tarifId == freezed
          ? _value.tarifId
          : tarifId // ignore: cast_nullable_to_non_nullable
              as String,
      unraveling: unraveling == freezed
          ? _value.unraveling
          : unraveling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HoursDataModelCopyWith<$Res>
    implements $HoursDataModelCopyWith<$Res> {
  factory _$HoursDataModelCopyWith(
          _HoursDataModel value, $Res Function(_HoursDataModel) then) =
      __$HoursDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String cardType,
      String name,
      String date,
      double amountOfHours,
      String description,
      bool isDeleted,
      String sfRecordId,
      String createdAt,
      String projectId,
      String tarifId,
      bool unraveling});
}

/// @nodoc
class __$HoursDataModelCopyWithImpl<$Res>
    extends _$HoursDataModelCopyWithImpl<$Res>
    implements _$HoursDataModelCopyWith<$Res> {
  __$HoursDataModelCopyWithImpl(
      _HoursDataModel _value, $Res Function(_HoursDataModel) _then)
      : super(_value, (v) => _then(v as _HoursDataModel));

  @override
  _HoursDataModel get _value => super._value as _HoursDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? cardType = freezed,
    Object? name = freezed,
    Object? date = freezed,
    Object? amountOfHours = freezed,
    Object? description = freezed,
    Object? isDeleted = freezed,
    Object? sfRecordId = freezed,
    Object? createdAt = freezed,
    Object? projectId = freezed,
    Object? tarifId = freezed,
    Object? unraveling = freezed,
  }) {
    return _then(_HoursDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: cardType == freezed
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amountOfHours: amountOfHours == freezed
          ? _value.amountOfHours
          : amountOfHours // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sfRecordId: sfRecordId == freezed
          ? _value.sfRecordId
          : sfRecordId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifId: tarifId == freezed
          ? _value.tarifId
          : tarifId // ignore: cast_nullable_to_non_nullable
              as String,
      unraveling: unraveling == freezed
          ? _value.unraveling
          : unraveling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HoursDataModel implements _HoursDataModel {
  const _$_HoursDataModel(
      {required this.id,
      required this.cardType,
      required this.name,
      required this.date,
      required this.amountOfHours,
      required this.description,
      required this.isDeleted,
      required this.sfRecordId,
      required this.createdAt,
      required this.projectId,
      required this.tarifId,
      required this.unraveling});

  factory _$_HoursDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_HoursDataModelFromJson(json);

  @override
  final String id;
  @override
  final String cardType;
  @override
  final String name;
  @override
  final String date;
  @override
  final double amountOfHours;
  @override
  final String description;
  @override
  final bool isDeleted;
  @override
  final String sfRecordId;
  @override
  final String createdAt;
  @override
  final String projectId;
  @override
  final String tarifId;
  @override
  final bool unraveling;

  @override
  String toString() {
    return 'HoursDataModel(id: $id, cardType: $cardType, name: $name, date: $date, amountOfHours: $amountOfHours, description: $description, isDeleted: $isDeleted, sfRecordId: $sfRecordId, createdAt: $createdAt, projectId: $projectId, tarifId: $tarifId, unraveling: $unraveling)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HoursDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cardType, cardType) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.amountOfHours, amountOfHours) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted) &&
            const DeepCollectionEquality()
                .equals(other.sfRecordId, sfRecordId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.projectId, projectId) &&
            const DeepCollectionEquality().equals(other.tarifId, tarifId) &&
            const DeepCollectionEquality()
                .equals(other.unraveling, unraveling));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cardType),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(amountOfHours),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(isDeleted),
      const DeepCollectionEquality().hash(sfRecordId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(projectId),
      const DeepCollectionEquality().hash(tarifId),
      const DeepCollectionEquality().hash(unraveling));

  @JsonKey(ignore: true)
  @override
  _$HoursDataModelCopyWith<_HoursDataModel> get copyWith =>
      __$HoursDataModelCopyWithImpl<_HoursDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HoursDataModelToJson(this);
  }
}

abstract class _HoursDataModel implements HoursDataModel {
  const factory _HoursDataModel(
      {required String id,
      required String cardType,
      required String name,
      required String date,
      required double amountOfHours,
      required String description,
      required bool isDeleted,
      required String sfRecordId,
      required String createdAt,
      required String projectId,
      required String tarifId,
      required bool unraveling}) = _$_HoursDataModel;

  factory _HoursDataModel.fromJson(Map<String, dynamic> json) =
      _$_HoursDataModel.fromJson;

  @override
  String get id;
  @override
  String get cardType;
  @override
  String get name;
  @override
  String get date;
  @override
  double get amountOfHours;
  @override
  String get description;
  @override
  bool get isDeleted;
  @override
  String get sfRecordId;
  @override
  String get createdAt;
  @override
  String get projectId;
  @override
  String get tarifId;
  @override
  bool get unraveling;
  @override
  @JsonKey(ignore: true)
  _$HoursDataModelCopyWith<_HoursDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

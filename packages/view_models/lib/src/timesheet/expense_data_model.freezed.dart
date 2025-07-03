// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expense_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpenseDataModel _$ExpenseDataModelFromJson(Map<String, dynamic> json) {
  return _ExpenseDataModel.fromJson(json);
}

/// @nodoc
class _$ExpenseDataModelTearOff {
  const _$ExpenseDataModelTearOff();

  _ExpenseDataModel call(
      {required String id,
      required String name,
      required String date,
      required String price,
      required String cardType,
      required double numberOfUnits,
      required double pricePerPaymentFrequency,
      required String explanation,
      required String amountCostPerUnit,
      required String createdAt,
      required String cpcExpenseTypeConfigId,
      required String projectId,
      required String timesheetId,
      required String sfWithdrawalRemainder}) {
    return _ExpenseDataModel(
      id: id,
      name: name,
      date: date,
      price: price,
      cardType: cardType,
      numberOfUnits: numberOfUnits,
      pricePerPaymentFrequency: pricePerPaymentFrequency,
      explanation: explanation,
      amountCostPerUnit: amountCostPerUnit,
      createdAt: createdAt,
      cpcExpenseTypeConfigId: cpcExpenseTypeConfigId,
      projectId: projectId,
      timesheetId: timesheetId,
      sfWithdrawalRemainder: sfWithdrawalRemainder,
    );
  }

  ExpenseDataModel fromJson(Map<String, Object?> json) {
    return ExpenseDataModel.fromJson(json);
  }
}

/// @nodoc
const $ExpenseDataModel = _$ExpenseDataModelTearOff();

/// @nodoc
mixin _$ExpenseDataModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get cardType => throw _privateConstructorUsedError;
  double get numberOfUnits => throw _privateConstructorUsedError;
  double get pricePerPaymentFrequency => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String get amountCostPerUnit => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get cpcExpenseTypeConfigId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get timesheetId => throw _privateConstructorUsedError;
  String get sfWithdrawalRemainder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseDataModelCopyWith<ExpenseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseDataModelCopyWith<$Res> {
  factory $ExpenseDataModelCopyWith(
          ExpenseDataModel value, $Res Function(ExpenseDataModel) then) =
      _$ExpenseDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String date,
      String price,
      String cardType,
      double numberOfUnits,
      double pricePerPaymentFrequency,
      String explanation,
      String amountCostPerUnit,
      String createdAt,
      String cpcExpenseTypeConfigId,
      String projectId,
      String timesheetId,
      String sfWithdrawalRemainder});
}

/// @nodoc
class _$ExpenseDataModelCopyWithImpl<$Res>
    implements $ExpenseDataModelCopyWith<$Res> {
  _$ExpenseDataModelCopyWithImpl(this._value, this._then);

  final ExpenseDataModel _value;
  // ignore: unused_field
  final $Res Function(ExpenseDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? date = freezed,
    Object? price = freezed,
    Object? cardType = freezed,
    Object? numberOfUnits = freezed,
    Object? pricePerPaymentFrequency = freezed,
    Object? explanation = freezed,
    Object? amountCostPerUnit = freezed,
    Object? createdAt = freezed,
    Object? cpcExpenseTypeConfigId = freezed,
    Object? projectId = freezed,
    Object? timesheetId = freezed,
    Object? sfWithdrawalRemainder = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: cardType == freezed
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfUnits: numberOfUnits == freezed
          ? _value.numberOfUnits
          : numberOfUnits // ignore: cast_nullable_to_non_nullable
              as double,
      pricePerPaymentFrequency: pricePerPaymentFrequency == freezed
          ? _value.pricePerPaymentFrequency
          : pricePerPaymentFrequency // ignore: cast_nullable_to_non_nullable
              as double,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      amountCostPerUnit: amountCostPerUnit == freezed
          ? _value.amountCostPerUnit
          : amountCostPerUnit // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      cpcExpenseTypeConfigId: cpcExpenseTypeConfigId == freezed
          ? _value.cpcExpenseTypeConfigId
          : cpcExpenseTypeConfigId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      timesheetId: timesheetId == freezed
          ? _value.timesheetId
          : timesheetId // ignore: cast_nullable_to_non_nullable
              as String,
      sfWithdrawalRemainder: sfWithdrawalRemainder == freezed
          ? _value.sfWithdrawalRemainder
          : sfWithdrawalRemainder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExpenseDataModelCopyWith<$Res>
    implements $ExpenseDataModelCopyWith<$Res> {
  factory _$ExpenseDataModelCopyWith(
          _ExpenseDataModel value, $Res Function(_ExpenseDataModel) then) =
      __$ExpenseDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String date,
      String price,
      String cardType,
      double numberOfUnits,
      double pricePerPaymentFrequency,
      String explanation,
      String amountCostPerUnit,
      String createdAt,
      String cpcExpenseTypeConfigId,
      String projectId,
      String timesheetId,
      String sfWithdrawalRemainder});
}

/// @nodoc
class __$ExpenseDataModelCopyWithImpl<$Res>
    extends _$ExpenseDataModelCopyWithImpl<$Res>
    implements _$ExpenseDataModelCopyWith<$Res> {
  __$ExpenseDataModelCopyWithImpl(
      _ExpenseDataModel _value, $Res Function(_ExpenseDataModel) _then)
      : super(_value, (v) => _then(v as _ExpenseDataModel));

  @override
  _ExpenseDataModel get _value => super._value as _ExpenseDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? date = freezed,
    Object? price = freezed,
    Object? cardType = freezed,
    Object? numberOfUnits = freezed,
    Object? pricePerPaymentFrequency = freezed,
    Object? explanation = freezed,
    Object? amountCostPerUnit = freezed,
    Object? createdAt = freezed,
    Object? cpcExpenseTypeConfigId = freezed,
    Object? projectId = freezed,
    Object? timesheetId = freezed,
    Object? sfWithdrawalRemainder = freezed,
  }) {
    return _then(_ExpenseDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: cardType == freezed
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfUnits: numberOfUnits == freezed
          ? _value.numberOfUnits
          : numberOfUnits // ignore: cast_nullable_to_non_nullable
              as double,
      pricePerPaymentFrequency: pricePerPaymentFrequency == freezed
          ? _value.pricePerPaymentFrequency
          : pricePerPaymentFrequency // ignore: cast_nullable_to_non_nullable
              as double,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      amountCostPerUnit: amountCostPerUnit == freezed
          ? _value.amountCostPerUnit
          : amountCostPerUnit // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      cpcExpenseTypeConfigId: cpcExpenseTypeConfigId == freezed
          ? _value.cpcExpenseTypeConfigId
          : cpcExpenseTypeConfigId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      timesheetId: timesheetId == freezed
          ? _value.timesheetId
          : timesheetId // ignore: cast_nullable_to_non_nullable
              as String,
      sfWithdrawalRemainder: sfWithdrawalRemainder == freezed
          ? _value.sfWithdrawalRemainder
          : sfWithdrawalRemainder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpenseDataModel implements _ExpenseDataModel {
  const _$_ExpenseDataModel(
      {required this.id,
      required this.name,
      required this.date,
      required this.price,
      required this.cardType,
      required this.numberOfUnits,
      required this.pricePerPaymentFrequency,
      required this.explanation,
      required this.amountCostPerUnit,
      required this.createdAt,
      required this.cpcExpenseTypeConfigId,
      required this.projectId,
      required this.timesheetId,
      required this.sfWithdrawalRemainder});

  factory _$_ExpenseDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseDataModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String date;
  @override
  final String price;
  @override
  final String cardType;
  @override
  final double numberOfUnits;
  @override
  final double pricePerPaymentFrequency;
  @override
  final String explanation;
  @override
  final String amountCostPerUnit;
  @override
  final String createdAt;
  @override
  final String cpcExpenseTypeConfigId;
  @override
  final String projectId;
  @override
  final String timesheetId;
  @override
  final String sfWithdrawalRemainder;

  @override
  String toString() {
    return 'ExpenseDataModel(id: $id, name: $name, date: $date, price: $price, cardType: $cardType, numberOfUnits: $numberOfUnits, pricePerPaymentFrequency: $pricePerPaymentFrequency, explanation: $explanation, amountCostPerUnit: $amountCostPerUnit, createdAt: $createdAt, cpcExpenseTypeConfigId: $cpcExpenseTypeConfigId, projectId: $projectId, timesheetId: $timesheetId, sfWithdrawalRemainder: $sfWithdrawalRemainder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpenseDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.cardType, cardType) &&
            const DeepCollectionEquality()
                .equals(other.numberOfUnits, numberOfUnits) &&
            const DeepCollectionEquality().equals(
                other.pricePerPaymentFrequency, pricePerPaymentFrequency) &&
            const DeepCollectionEquality()
                .equals(other.explanation, explanation) &&
            const DeepCollectionEquality()
                .equals(other.amountCostPerUnit, amountCostPerUnit) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.cpcExpenseTypeConfigId, cpcExpenseTypeConfigId) &&
            const DeepCollectionEquality().equals(other.projectId, projectId) &&
            const DeepCollectionEquality()
                .equals(other.timesheetId, timesheetId) &&
            const DeepCollectionEquality()
                .equals(other.sfWithdrawalRemainder, sfWithdrawalRemainder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(cardType),
      const DeepCollectionEquality().hash(numberOfUnits),
      const DeepCollectionEquality().hash(pricePerPaymentFrequency),
      const DeepCollectionEquality().hash(explanation),
      const DeepCollectionEquality().hash(amountCostPerUnit),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(cpcExpenseTypeConfigId),
      const DeepCollectionEquality().hash(projectId),
      const DeepCollectionEquality().hash(timesheetId),
      const DeepCollectionEquality().hash(sfWithdrawalRemainder));

  @JsonKey(ignore: true)
  @override
  _$ExpenseDataModelCopyWith<_ExpenseDataModel> get copyWith =>
      __$ExpenseDataModelCopyWithImpl<_ExpenseDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseDataModelToJson(this);
  }
}

abstract class _ExpenseDataModel implements ExpenseDataModel {
  const factory _ExpenseDataModel(
      {required String id,
      required String name,
      required String date,
      required String price,
      required String cardType,
      required double numberOfUnits,
      required double pricePerPaymentFrequency,
      required String explanation,
      required String amountCostPerUnit,
      required String createdAt,
      required String cpcExpenseTypeConfigId,
      required String projectId,
      required String timesheetId,
      required String sfWithdrawalRemainder}) = _$_ExpenseDataModel;

  factory _ExpenseDataModel.fromJson(Map<String, dynamic> json) =
      _$_ExpenseDataModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get date;
  @override
  String get price;
  @override
  String get cardType;
  @override
  double get numberOfUnits;
  @override
  double get pricePerPaymentFrequency;
  @override
  String get explanation;
  @override
  String get amountCostPerUnit;
  @override
  String get createdAt;
  @override
  String get cpcExpenseTypeConfigId;
  @override
  String get projectId;
  @override
  String get timesheetId;
  @override
  String get sfWithdrawalRemainder;
  @override
  @JsonKey(ignore: true)
  _$ExpenseDataModelCopyWith<_ExpenseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

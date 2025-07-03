// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_groups_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatGroupsDataModel _$ChatGroupsDataModelFromJson(Map<String, dynamic> json) {
  return _ChatGroupsDataModel.fromJson(json);
}

/// @nodoc
class _$ChatGroupsDataModelTearOff {
  const _$ChatGroupsDataModelTearOff();

  _ChatGroupsDataModel call(
      {required String id,
      required String employeeGroupName,
      required String companyGroupName,
      required String agencyGroupName,
      required bool isActive,
      required String subject,
      required bool onlyExternalMessages,
      required String createdAt,
      required String updatedAt,
      required String agencyId,
      required String employeeId,
      required String companyId}) {
    return _ChatGroupsDataModel(
      id: id,
      employeeGroupName: employeeGroupName,
      companyGroupName: companyGroupName,
      agencyGroupName: agencyGroupName,
      isActive: isActive,
      subject: subject,
      onlyExternalMessages: onlyExternalMessages,
      createdAt: createdAt,
      updatedAt: updatedAt,
      agencyId: agencyId,
      employeeId: employeeId,
      companyId: companyId,
    );
  }

  ChatGroupsDataModel fromJson(Map<String, Object?> json) {
    return ChatGroupsDataModel.fromJson(json);
  }
}

/// @nodoc
const $ChatGroupsDataModel = _$ChatGroupsDataModelTearOff();

/// @nodoc
mixin _$ChatGroupsDataModel {
  String get id => throw _privateConstructorUsedError;
  String get employeeGroupName => throw _privateConstructorUsedError;
  String get companyGroupName => throw _privateConstructorUsedError;
  String get agencyGroupName => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  bool get onlyExternalMessages => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get agencyId => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGroupsDataModelCopyWith<ChatGroupsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGroupsDataModelCopyWith<$Res> {
  factory $ChatGroupsDataModelCopyWith(
          ChatGroupsDataModel value, $Res Function(ChatGroupsDataModel) then) =
      _$ChatGroupsDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String employeeGroupName,
      String companyGroupName,
      String agencyGroupName,
      bool isActive,
      String subject,
      bool onlyExternalMessages,
      String createdAt,
      String updatedAt,
      String agencyId,
      String employeeId,
      String companyId});
}

/// @nodoc
class _$ChatGroupsDataModelCopyWithImpl<$Res>
    implements $ChatGroupsDataModelCopyWith<$Res> {
  _$ChatGroupsDataModelCopyWithImpl(this._value, this._then);

  final ChatGroupsDataModel _value;
  // ignore: unused_field
  final $Res Function(ChatGroupsDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? employeeGroupName = freezed,
    Object? companyGroupName = freezed,
    Object? agencyGroupName = freezed,
    Object? isActive = freezed,
    Object? subject = freezed,
    Object? onlyExternalMessages = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? agencyId = freezed,
    Object? employeeId = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employeeGroupName: employeeGroupName == freezed
          ? _value.employeeGroupName
          : employeeGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      companyGroupName: companyGroupName == freezed
          ? _value.companyGroupName
          : companyGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      agencyGroupName: agencyGroupName == freezed
          ? _value.agencyGroupName
          : agencyGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      onlyExternalMessages: onlyExternalMessages == freezed
          ? _value.onlyExternalMessages
          : onlyExternalMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatGroupsDataModelCopyWith<$Res>
    implements $ChatGroupsDataModelCopyWith<$Res> {
  factory _$ChatGroupsDataModelCopyWith(_ChatGroupsDataModel value,
          $Res Function(_ChatGroupsDataModel) then) =
      __$ChatGroupsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String employeeGroupName,
      String companyGroupName,
      String agencyGroupName,
      bool isActive,
      String subject,
      bool onlyExternalMessages,
      String createdAt,
      String updatedAt,
      String agencyId,
      String employeeId,
      String companyId});
}

/// @nodoc
class __$ChatGroupsDataModelCopyWithImpl<$Res>
    extends _$ChatGroupsDataModelCopyWithImpl<$Res>
    implements _$ChatGroupsDataModelCopyWith<$Res> {
  __$ChatGroupsDataModelCopyWithImpl(
      _ChatGroupsDataModel _value, $Res Function(_ChatGroupsDataModel) _then)
      : super(_value, (v) => _then(v as _ChatGroupsDataModel));

  @override
  _ChatGroupsDataModel get _value => super._value as _ChatGroupsDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? employeeGroupName = freezed,
    Object? companyGroupName = freezed,
    Object? agencyGroupName = freezed,
    Object? isActive = freezed,
    Object? subject = freezed,
    Object? onlyExternalMessages = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? agencyId = freezed,
    Object? employeeId = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_ChatGroupsDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employeeGroupName: employeeGroupName == freezed
          ? _value.employeeGroupName
          : employeeGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      companyGroupName: companyGroupName == freezed
          ? _value.companyGroupName
          : companyGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      agencyGroupName: agencyGroupName == freezed
          ? _value.agencyGroupName
          : agencyGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      onlyExternalMessages: onlyExternalMessages == freezed
          ? _value.onlyExternalMessages
          : onlyExternalMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatGroupsDataModel implements _ChatGroupsDataModel {
  const _$_ChatGroupsDataModel(
      {required this.id,
      required this.employeeGroupName,
      required this.companyGroupName,
      required this.agencyGroupName,
      required this.isActive,
      required this.subject,
      required this.onlyExternalMessages,
      required this.createdAt,
      required this.updatedAt,
      required this.agencyId,
      required this.employeeId,
      required this.companyId});

  factory _$_ChatGroupsDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatGroupsDataModelFromJson(json);

  @override
  final String id;
  @override
  final String employeeGroupName;
  @override
  final String companyGroupName;
  @override
  final String agencyGroupName;
  @override
  final bool isActive;
  @override
  final String subject;
  @override
  final bool onlyExternalMessages;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String agencyId;
  @override
  final String employeeId;
  @override
  final String companyId;

  @override
  String toString() {
    return 'ChatGroupsDataModel(id: $id, employeeGroupName: $employeeGroupName, companyGroupName: $companyGroupName, agencyGroupName: $agencyGroupName, isActive: $isActive, subject: $subject, onlyExternalMessages: $onlyExternalMessages, createdAt: $createdAt, updatedAt: $updatedAt, agencyId: $agencyId, employeeId: $employeeId, companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatGroupsDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.employeeGroupName, employeeGroupName) &&
            const DeepCollectionEquality()
                .equals(other.companyGroupName, companyGroupName) &&
            const DeepCollectionEquality()
                .equals(other.agencyGroupName, agencyGroupName) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality()
                .equals(other.onlyExternalMessages, onlyExternalMessages) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId) &&
            const DeepCollectionEquality()
                .equals(other.employeeId, employeeId) &&
            const DeepCollectionEquality().equals(other.companyId, companyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(employeeGroupName),
      const DeepCollectionEquality().hash(companyGroupName),
      const DeepCollectionEquality().hash(agencyGroupName),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(onlyExternalMessages),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(agencyId),
      const DeepCollectionEquality().hash(employeeId),
      const DeepCollectionEquality().hash(companyId));

  @JsonKey(ignore: true)
  @override
  _$ChatGroupsDataModelCopyWith<_ChatGroupsDataModel> get copyWith =>
      __$ChatGroupsDataModelCopyWithImpl<_ChatGroupsDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatGroupsDataModelToJson(this);
  }
}

abstract class _ChatGroupsDataModel implements ChatGroupsDataModel {
  const factory _ChatGroupsDataModel(
      {required String id,
      required String employeeGroupName,
      required String companyGroupName,
      required String agencyGroupName,
      required bool isActive,
      required String subject,
      required bool onlyExternalMessages,
      required String createdAt,
      required String updatedAt,
      required String agencyId,
      required String employeeId,
      required String companyId}) = _$_ChatGroupsDataModel;

  factory _ChatGroupsDataModel.fromJson(Map<String, dynamic> json) =
      _$_ChatGroupsDataModel.fromJson;

  @override
  String get id;
  @override
  String get employeeGroupName;
  @override
  String get companyGroupName;
  @override
  String get agencyGroupName;
  @override
  bool get isActive;
  @override
  String get subject;
  @override
  bool get onlyExternalMessages;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get agencyId;
  @override
  String get employeeId;
  @override
  String get companyId;
  @override
  @JsonKey(ignore: true)
  _$ChatGroupsDataModelCopyWith<_ChatGroupsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

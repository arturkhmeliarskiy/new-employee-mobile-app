// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
class _$DataModelTearOff {
  const _$DataModelTearOff();

  _DataModel call(
      {required String id,
      required bool isRead,
      required String receiverId,
      required String receiverType,
      required String opportunityId,
      required String orgName,
      required String orgLogo,
      required String relatedObjectType,
      required String relatedObjectId,
      required String createdAt,
      required String updatedAt,
      required String messageType,
      required String count,
      required String title}) {
    return _DataModel(
      id: id,
      isRead: isRead,
      receiverId: receiverId,
      receiverType: receiverType,
      opportunityId: opportunityId,
      orgName: orgName,
      orgLogo: orgLogo,
      relatedObjectType: relatedObjectType,
      relatedObjectId: relatedObjectId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      messageType: messageType,
      count: count,
      title: title,
    );
  }

  DataModel fromJson(Map<String, Object?> json) {
    return DataModel.fromJson(json);
  }
}

/// @nodoc
const $DataModel = _$DataModelTearOff();

/// @nodoc
mixin _$DataModel {
  String get id => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get receiverType => throw _privateConstructorUsedError;
  String get opportunityId => throw _privateConstructorUsedError;
  String get orgName => throw _privateConstructorUsedError;
  String get orgLogo => throw _privateConstructorUsedError;
  String get relatedObjectType => throw _privateConstructorUsedError;
  String get relatedObjectId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get messageType => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool isRead,
      String receiverId,
      String receiverType,
      String opportunityId,
      String orgName,
      String orgLogo,
      String relatedObjectType,
      String relatedObjectId,
      String createdAt,
      String updatedAt,
      String messageType,
      String count,
      String title});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res> implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  final DataModel _value;
  // ignore: unused_field
  final $Res Function(DataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isRead = freezed,
    Object? receiverId = freezed,
    Object? receiverType = freezed,
    Object? opportunityId = freezed,
    Object? orgName = freezed,
    Object? orgLogo = freezed,
    Object? relatedObjectType = freezed,
    Object? relatedObjectId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? messageType = freezed,
    Object? count = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverType: receiverType == freezed
          ? _value.receiverType
          : receiverType // ignore: cast_nullable_to_non_nullable
              as String,
      opportunityId: opportunityId == freezed
          ? _value.opportunityId
          : opportunityId // ignore: cast_nullable_to_non_nullable
              as String,
      orgName: orgName == freezed
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      orgLogo: orgLogo == freezed
          ? _value.orgLogo
          : orgLogo // ignore: cast_nullable_to_non_nullable
              as String,
      relatedObjectType: relatedObjectType == freezed
          ? _value.relatedObjectType
          : relatedObjectType // ignore: cast_nullable_to_non_nullable
              as String,
      relatedObjectId: relatedObjectId == freezed
          ? _value.relatedObjectId
          : relatedObjectId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$DataModelCopyWith(
          _DataModel value, $Res Function(_DataModel) then) =
      __$DataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool isRead,
      String receiverId,
      String receiverType,
      String opportunityId,
      String orgName,
      String orgLogo,
      String relatedObjectType,
      String relatedObjectId,
      String createdAt,
      String updatedAt,
      String messageType,
      String count,
      String title});
}

/// @nodoc
class __$DataModelCopyWithImpl<$Res> extends _$DataModelCopyWithImpl<$Res>
    implements _$DataModelCopyWith<$Res> {
  __$DataModelCopyWithImpl(_DataModel _value, $Res Function(_DataModel) _then)
      : super(_value, (v) => _then(v as _DataModel));

  @override
  _DataModel get _value => super._value as _DataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? isRead = freezed,
    Object? receiverId = freezed,
    Object? receiverType = freezed,
    Object? opportunityId = freezed,
    Object? orgName = freezed,
    Object? orgLogo = freezed,
    Object? relatedObjectType = freezed,
    Object? relatedObjectId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? messageType = freezed,
    Object? count = freezed,
    Object? title = freezed,
  }) {
    return _then(_DataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverType: receiverType == freezed
          ? _value.receiverType
          : receiverType // ignore: cast_nullable_to_non_nullable
              as String,
      opportunityId: opportunityId == freezed
          ? _value.opportunityId
          : opportunityId // ignore: cast_nullable_to_non_nullable
              as String,
      orgName: orgName == freezed
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      orgLogo: orgLogo == freezed
          ? _value.orgLogo
          : orgLogo // ignore: cast_nullable_to_non_nullable
              as String,
      relatedObjectType: relatedObjectType == freezed
          ? _value.relatedObjectType
          : relatedObjectType // ignore: cast_nullable_to_non_nullable
              as String,
      relatedObjectId: relatedObjectId == freezed
          ? _value.relatedObjectId
          : relatedObjectId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel implements _DataModel {
  const _$_DataModel(
      {required this.id,
      required this.isRead,
      required this.receiverId,
      required this.receiverType,
      required this.opportunityId,
      required this.orgName,
      required this.orgLogo,
      required this.relatedObjectType,
      required this.relatedObjectId,
      required this.createdAt,
      required this.updatedAt,
      required this.messageType,
      required this.count,
      required this.title});

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @override
  final String id;
  @override
  final bool isRead;
  @override
  final String receiverId;
  @override
  final String receiverType;
  @override
  final String opportunityId;
  @override
  final String orgName;
  @override
  final String orgLogo;
  @override
  final String relatedObjectType;
  @override
  final String relatedObjectId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String messageType;
  @override
  final String count;
  @override
  final String title;

  @override
  String toString() {
    return 'DataModel(id: $id, isRead: $isRead, receiverId: $receiverId, receiverType: $receiverType, opportunityId: $opportunityId, orgName: $orgName, orgLogo: $orgLogo, relatedObjectType: $relatedObjectType, relatedObjectId: $relatedObjectId, createdAt: $createdAt, updatedAt: $updatedAt, messageType: $messageType, count: $count, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isRead, isRead) &&
            const DeepCollectionEquality()
                .equals(other.receiverId, receiverId) &&
            const DeepCollectionEquality()
                .equals(other.receiverType, receiverType) &&
            const DeepCollectionEquality()
                .equals(other.opportunityId, opportunityId) &&
            const DeepCollectionEquality().equals(other.orgName, orgName) &&
            const DeepCollectionEquality().equals(other.orgLogo, orgLogo) &&
            const DeepCollectionEquality()
                .equals(other.relatedObjectType, relatedObjectType) &&
            const DeepCollectionEquality()
                .equals(other.relatedObjectId, relatedObjectId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.messageType, messageType) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isRead),
      const DeepCollectionEquality().hash(receiverId),
      const DeepCollectionEquality().hash(receiverType),
      const DeepCollectionEquality().hash(opportunityId),
      const DeepCollectionEquality().hash(orgName),
      const DeepCollectionEquality().hash(orgLogo),
      const DeepCollectionEquality().hash(relatedObjectType),
      const DeepCollectionEquality().hash(relatedObjectId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(messageType),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$DataModelCopyWith<_DataModel> get copyWith =>
      __$DataModelCopyWithImpl<_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(this);
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
      {required String id,
      required bool isRead,
      required String receiverId,
      required String receiverType,
      required String opportunityId,
      required String orgName,
      required String orgLogo,
      required String relatedObjectType,
      required String relatedObjectId,
      required String createdAt,
      required String updatedAt,
      required String messageType,
      required String count,
      required String title}) = _$_DataModel;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  String get id;
  @override
  bool get isRead;
  @override
  String get receiverId;
  @override
  String get receiverType;
  @override
  String get opportunityId;
  @override
  String get orgName;
  @override
  String get orgLogo;
  @override
  String get relatedObjectType;
  @override
  String get relatedObjectId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get messageType;
  @override
  String get count;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$DataModelCopyWith<_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

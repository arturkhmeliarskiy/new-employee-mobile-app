// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'projects_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectsDataModel _$ProjectsDataModelFromJson(Map<String, dynamic> json) {
  return _ProjectsDataModel.fromJson(json);
}

/// @nodoc
class _$ProjectsDataModelTearOff {
  const _$ProjectsDataModelTearOff();

  _ProjectsDataModel call(
      {required String id,
      required String name,
      required bool acceptedWork,
      required bool isDeleted,
      required String sfRecordId,
      required bool activeProject,
      required String country,
      required String createdAt,
      required String companyId}) {
    return _ProjectsDataModel(
      id: id,
      name: name,
      acceptedWork: acceptedWork,
      isDeleted: isDeleted,
      sfRecordId: sfRecordId,
      activeProject: activeProject,
      country: country,
      createdAt: createdAt,
      companyId: companyId,
    );
  }

  ProjectsDataModel fromJson(Map<String, Object?> json) {
    return ProjectsDataModel.fromJson(json);
  }
}

/// @nodoc
const $ProjectsDataModel = _$ProjectsDataModelTearOff();

/// @nodoc
mixin _$ProjectsDataModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get acceptedWork => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String get sfRecordId => throw _privateConstructorUsedError;
  bool get activeProject => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectsDataModelCopyWith<ProjectsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsDataModelCopyWith<$Res> {
  factory $ProjectsDataModelCopyWith(
          ProjectsDataModel value, $Res Function(ProjectsDataModel) then) =
      _$ProjectsDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      bool acceptedWork,
      bool isDeleted,
      String sfRecordId,
      bool activeProject,
      String country,
      String createdAt,
      String companyId});
}

/// @nodoc
class _$ProjectsDataModelCopyWithImpl<$Res>
    implements $ProjectsDataModelCopyWith<$Res> {
  _$ProjectsDataModelCopyWithImpl(this._value, this._then);

  final ProjectsDataModel _value;
  // ignore: unused_field
  final $Res Function(ProjectsDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? acceptedWork = freezed,
    Object? isDeleted = freezed,
    Object? sfRecordId = freezed,
    Object? activeProject = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? companyId = freezed,
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
      acceptedWork: acceptedWork == freezed
          ? _value.acceptedWork
          : acceptedWork // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sfRecordId: sfRecordId == freezed
          ? _value.sfRecordId
          : sfRecordId // ignore: cast_nullable_to_non_nullable
              as String,
      activeProject: activeProject == freezed
          ? _value.activeProject
          : activeProject // ignore: cast_nullable_to_non_nullable
              as bool,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProjectsDataModelCopyWith<$Res>
    implements $ProjectsDataModelCopyWith<$Res> {
  factory _$ProjectsDataModelCopyWith(
          _ProjectsDataModel value, $Res Function(_ProjectsDataModel) then) =
      __$ProjectsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      bool acceptedWork,
      bool isDeleted,
      String sfRecordId,
      bool activeProject,
      String country,
      String createdAt,
      String companyId});
}

/// @nodoc
class __$ProjectsDataModelCopyWithImpl<$Res>
    extends _$ProjectsDataModelCopyWithImpl<$Res>
    implements _$ProjectsDataModelCopyWith<$Res> {
  __$ProjectsDataModelCopyWithImpl(
      _ProjectsDataModel _value, $Res Function(_ProjectsDataModel) _then)
      : super(_value, (v) => _then(v as _ProjectsDataModel));

  @override
  _ProjectsDataModel get _value => super._value as _ProjectsDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? acceptedWork = freezed,
    Object? isDeleted = freezed,
    Object? sfRecordId = freezed,
    Object? activeProject = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_ProjectsDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      acceptedWork: acceptedWork == freezed
          ? _value.acceptedWork
          : acceptedWork // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sfRecordId: sfRecordId == freezed
          ? _value.sfRecordId
          : sfRecordId // ignore: cast_nullable_to_non_nullable
              as String,
      activeProject: activeProject == freezed
          ? _value.activeProject
          : activeProject // ignore: cast_nullable_to_non_nullable
              as bool,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
class _$_ProjectsDataModel implements _ProjectsDataModel {
  const _$_ProjectsDataModel(
      {required this.id,
      required this.name,
      required this.acceptedWork,
      required this.isDeleted,
      required this.sfRecordId,
      required this.activeProject,
      required this.country,
      required this.createdAt,
      required this.companyId});

  factory _$_ProjectsDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectsDataModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool acceptedWork;
  @override
  final bool isDeleted;
  @override
  final String sfRecordId;
  @override
  final bool activeProject;
  @override
  final String country;
  @override
  final String createdAt;
  @override
  final String companyId;

  @override
  String toString() {
    return 'ProjectsDataModel(id: $id, name: $name, acceptedWork: $acceptedWork, isDeleted: $isDeleted, sfRecordId: $sfRecordId, activeProject: $activeProject, country: $country, createdAt: $createdAt, companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectsDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.acceptedWork, acceptedWork) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted) &&
            const DeepCollectionEquality()
                .equals(other.sfRecordId, sfRecordId) &&
            const DeepCollectionEquality()
                .equals(other.activeProject, activeProject) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.companyId, companyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(acceptedWork),
      const DeepCollectionEquality().hash(isDeleted),
      const DeepCollectionEquality().hash(sfRecordId),
      const DeepCollectionEquality().hash(activeProject),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(companyId));

  @JsonKey(ignore: true)
  @override
  _$ProjectsDataModelCopyWith<_ProjectsDataModel> get copyWith =>
      __$ProjectsDataModelCopyWithImpl<_ProjectsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectsDataModelToJson(this);
  }
}

abstract class _ProjectsDataModel implements ProjectsDataModel {
  const factory _ProjectsDataModel(
      {required String id,
      required String name,
      required bool acceptedWork,
      required bool isDeleted,
      required String sfRecordId,
      required bool activeProject,
      required String country,
      required String createdAt,
      required String companyId}) = _$_ProjectsDataModel;

  factory _ProjectsDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProjectsDataModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get acceptedWork;
  @override
  bool get isDeleted;
  @override
  String get sfRecordId;
  @override
  bool get activeProject;
  @override
  String get country;
  @override
  String get createdAt;
  @override
  String get companyId;
  @override
  @JsonKey(ignore: true)
  _$ProjectsDataModelCopyWith<_ProjectsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

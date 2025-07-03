// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_groups_agency_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatGroupsAgencyDataModel _$ChatGroupsAgencyDataModelFromJson(
    Map<String, dynamic> json) {
  return _ChatGroupsAgencyDataModel.fromJson(json);
}

/// @nodoc
class _$ChatGroupsAgencyDataModelTearOff {
  const _$ChatGroupsAgencyDataModelTearOff();

  _ChatGroupsAgencyDataModel call(
      {int? code, List<ChatGroupsDataModel>? chatGroups}) {
    return _ChatGroupsAgencyDataModel(
      code: code,
      chatGroups: chatGroups,
    );
  }

  ChatGroupsAgencyDataModel fromJson(Map<String, Object?> json) {
    return ChatGroupsAgencyDataModel.fromJson(json);
  }
}

/// @nodoc
const $ChatGroupsAgencyDataModel = _$ChatGroupsAgencyDataModelTearOff();

/// @nodoc
mixin _$ChatGroupsAgencyDataModel {
  int? get code => throw _privateConstructorUsedError;
  List<ChatGroupsDataModel>? get chatGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGroupsAgencyDataModelCopyWith<ChatGroupsAgencyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGroupsAgencyDataModelCopyWith<$Res> {
  factory $ChatGroupsAgencyDataModelCopyWith(ChatGroupsAgencyDataModel value,
          $Res Function(ChatGroupsAgencyDataModel) then) =
      _$ChatGroupsAgencyDataModelCopyWithImpl<$Res>;
  $Res call({int? code, List<ChatGroupsDataModel>? chatGroups});
}

/// @nodoc
class _$ChatGroupsAgencyDataModelCopyWithImpl<$Res>
    implements $ChatGroupsAgencyDataModelCopyWith<$Res> {
  _$ChatGroupsAgencyDataModelCopyWithImpl(this._value, this._then);

  final ChatGroupsAgencyDataModel _value;
  // ignore: unused_field
  final $Res Function(ChatGroupsAgencyDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? chatGroups = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      chatGroups: chatGroups == freezed
          ? _value.chatGroups
          : chatGroups // ignore: cast_nullable_to_non_nullable
              as List<ChatGroupsDataModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ChatGroupsAgencyDataModelCopyWith<$Res>
    implements $ChatGroupsAgencyDataModelCopyWith<$Res> {
  factory _$ChatGroupsAgencyDataModelCopyWith(_ChatGroupsAgencyDataModel value,
          $Res Function(_ChatGroupsAgencyDataModel) then) =
      __$ChatGroupsAgencyDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, List<ChatGroupsDataModel>? chatGroups});
}

/// @nodoc
class __$ChatGroupsAgencyDataModelCopyWithImpl<$Res>
    extends _$ChatGroupsAgencyDataModelCopyWithImpl<$Res>
    implements _$ChatGroupsAgencyDataModelCopyWith<$Res> {
  __$ChatGroupsAgencyDataModelCopyWithImpl(_ChatGroupsAgencyDataModel _value,
      $Res Function(_ChatGroupsAgencyDataModel) _then)
      : super(_value, (v) => _then(v as _ChatGroupsAgencyDataModel));

  @override
  _ChatGroupsAgencyDataModel get _value =>
      super._value as _ChatGroupsAgencyDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? chatGroups = freezed,
  }) {
    return _then(_ChatGroupsAgencyDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      chatGroups: chatGroups == freezed
          ? _value.chatGroups
          : chatGroups // ignore: cast_nullable_to_non_nullable
              as List<ChatGroupsDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatGroupsAgencyDataModel implements _ChatGroupsAgencyDataModel {
  const _$_ChatGroupsAgencyDataModel({this.code, this.chatGroups});

  factory _$_ChatGroupsAgencyDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatGroupsAgencyDataModelFromJson(json);

  @override
  final int? code;
  @override
  final List<ChatGroupsDataModel>? chatGroups;

  @override
  String toString() {
    return 'ChatGroupsAgencyDataModel(code: $code, chatGroups: $chatGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatGroupsAgencyDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.chatGroups, chatGroups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(chatGroups));

  @JsonKey(ignore: true)
  @override
  _$ChatGroupsAgencyDataModelCopyWith<_ChatGroupsAgencyDataModel>
      get copyWith =>
          __$ChatGroupsAgencyDataModelCopyWithImpl<_ChatGroupsAgencyDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatGroupsAgencyDataModelToJson(this);
  }
}

abstract class _ChatGroupsAgencyDataModel implements ChatGroupsAgencyDataModel {
  const factory _ChatGroupsAgencyDataModel(
      {int? code,
      List<ChatGroupsDataModel>? chatGroups}) = _$_ChatGroupsAgencyDataModel;

  factory _ChatGroupsAgencyDataModel.fromJson(Map<String, dynamic> json) =
      _$_ChatGroupsAgencyDataModel.fromJson;

  @override
  int? get code;
  @override
  List<ChatGroupsDataModel>? get chatGroups;
  @override
  @JsonKey(ignore: true)
  _$ChatGroupsAgencyDataModelCopyWith<_ChatGroupsAgencyDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

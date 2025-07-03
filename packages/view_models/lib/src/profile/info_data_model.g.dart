// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfoDataModel _$$_InfoDataModelFromJson(Map<String, dynamic> json) =>
    _$_InfoDataModel(
      infoUser: json['infoUser'] == null
          ? null
          : InfoUserDataModel.fromJson(
              json['infoUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InfoDataModelToJson(_$_InfoDataModel instance) =>
    <String, dynamic>{
      'infoUser': instance.infoUser,
    };

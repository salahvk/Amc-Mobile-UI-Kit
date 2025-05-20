// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      status: json['status'] as bool?,
      configuration: json['configuration'] == null
          ? null
          : Configuration.fromJson(
              json['configuration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'status': instance.status,
      'configuration': instance.configuration,
    };

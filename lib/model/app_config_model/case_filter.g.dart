// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaseFilter _$CaseFilterFromJson(Map<String, dynamic> json) => CaseFilter(
      status: (json['status'] as List<dynamic>?)
          ?.map((e) => Status.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CaseFilterToJson(CaseFilter instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
    };

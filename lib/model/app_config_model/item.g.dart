// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      name: json['name'] as String?,
      visbileTo: json['visbileTo'] as String?,
      icon: json['icon'] as String?,
      iconType: json['iconType'] as String?,
      navigateTo: json['navigateTo'] as String?,
      visibilityByrole: (json['visibilityByrole'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name': instance.name,
      'visbileTo': instance.visbileTo,
      'icon': instance.icon,
      'iconType': instance.iconType,
      'navigateTo': instance.navigateTo,
      'visibilityByrole': instance.visibilityByrole,
    };

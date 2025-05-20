// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottomnav.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bottomnav _$BottomnavFromJson(Map<String, dynamic> json) => Bottomnav(
      tabCount: (json['tabCount'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BottomnavToJson(Bottomnav instance) => <String, dynamic>{
      'tabCount': instance.tabCount,
      'items': instance.items,
    };

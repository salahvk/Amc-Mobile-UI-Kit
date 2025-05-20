// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_bar_nav.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopBarNav _$TopBarNavFromJson(Map<String, dynamic> json) => TopBarNav(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$TopBarNavToJson(TopBarNav instance) => <String, dynamic>{
      'items': instance.items,
      'color': instance.color,
    };

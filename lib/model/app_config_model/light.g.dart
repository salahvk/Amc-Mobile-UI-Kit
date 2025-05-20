// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'light.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Light _$LightFromJson(Map<String, dynamic> json) => Light(
      scaffoldBackgroundColor: json['scaffoldBackgroundColor'] as String?,
      appBar: json['appBar'] == null
          ? null
          : AppBar.fromJson(json['appBar'] as Map<String, dynamic>),
      colorScheme: json['colorScheme'] == null
          ? null
          : ColorScheme.fromJson(json['colorScheme'] as Map<String, dynamic>),
      fontName: json['fontName'] as String?,
      googleFont: json['googleFont'] as bool?,
      textTheme: json['textTheme'] == null
          ? null
          : TextTheme.fromJson(json['textTheme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LightToJson(Light instance) => <String, dynamic>{
      'scaffoldBackgroundColor': instance.scaffoldBackgroundColor,
      'appBar': instance.appBar,
      'colorScheme': instance.colorScheme,
      'fontName': instance.fontName,
      'googleFont': instance.googleFont,
      'textTheme': instance.textTheme,
    };

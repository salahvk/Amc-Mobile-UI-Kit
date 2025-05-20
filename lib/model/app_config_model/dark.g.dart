// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dark _$DarkFromJson(Map<String, dynamic> json) => Dark(
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

Map<String, dynamic> _$DarkToJson(Dark instance) => <String, dynamic>{
      'scaffoldBackgroundColor': instance.scaffoldBackgroundColor,
      'appBar': instance.appBar,
      'colorScheme': instance.colorScheme,
      'fontName': instance.fontName,
      'googleFont': instance.googleFont,
      'textTheme': instance.textTheme,
    };

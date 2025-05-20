// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppTheme _$AppThemeFromJson(Map<String, dynamic> json) => AppTheme(
      light: json['light'] == null
          ? null
          : Light.fromJson(json['light'] as Map<String, dynamic>),
      dark: json['dark'] == null
          ? null
          : Dark.fromJson(json['dark'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppThemeToJson(AppTheme instance) => <String, dynamic>{
      'light': instance.light,
      'dark': instance.dark,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabTheme _$TabThemeFromJson(Map<String, dynamic> json) => TabTheme(
      light: json['light'] == null
          ? null
          : Light.fromJson(json['light'] as Map<String, dynamic>),
      dark: json['dark'] == null
          ? null
          : Dark.fromJson(json['dark'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TabThemeToJson(TabTheme instance) => <String, dynamic>{
      'light': instance.light,
      'dark': instance.dark,
    };

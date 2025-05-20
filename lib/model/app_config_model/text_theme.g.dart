// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextTheme _$TextThemeFromJson(Map<String, dynamic> json) => TextTheme(
      titleLarge: json['titleLarge'] == null
          ? null
          : TitleLarge.fromJson(json['titleLarge'] as Map<String, dynamic>),
      titleMedium: json['titleMedium'] == null
          ? null
          : TitleMedium.fromJson(json['titleMedium'] as Map<String, dynamic>),
      titleSmall: json['titleSmall'] == null
          ? null
          : TitleSmall.fromJson(json['titleSmall'] as Map<String, dynamic>),
      bodyMedium: json['bodyMedium'] == null
          ? null
          : BodyMedium.fromJson(json['bodyMedium'] as Map<String, dynamic>),
      bodySmall: json['bodySmall'] == null
          ? null
          : BodySmall.fromJson(json['bodySmall'] as Map<String, dynamic>),
      displaySmall: json['displaySmall'] == null
          ? null
          : DisplaySmall.fromJson(json['displaySmall'] as Map<String, dynamic>),
      displayMedium: json['displayMedium'] == null
          ? null
          : DisplayMedium.fromJson(
              json['displayMedium'] as Map<String, dynamic>),
      displayLarge: json['displayLarge'] == null
          ? null
          : DisplayLarge.fromJson(json['displayLarge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextThemeToJson(TextTheme instance) => <String, dynamic>{
      'titleLarge': instance.titleLarge,
      'titleMedium': instance.titleMedium,
      'titleSmall': instance.titleSmall,
      'bodyMedium': instance.bodyMedium,
      'bodySmall': instance.bodySmall,
      'displaySmall': instance.displaySmall,
      'displayMedium': instance.displayMedium,
      'displayLarge': instance.displayLarge,
    };

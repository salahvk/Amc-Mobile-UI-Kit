// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) =>
    Configuration(
      amcInfo: json['amcInfo'] == null
          ? null
          : AmcInfo.fromJson(json['amcInfo'] as Map<String, dynamic>),
      appTheme: json['AppTheme'] == null
          ? null
          : AppTheme.fromJson(json['AppTheme'] as Map<String, dynamic>),
      tabTheme: json['TabTheme'] == null
          ? null
          : TabTheme.fromJson(json['TabTheme'] as Map<String, dynamic>),
      bottomnav: json['bottomnav'] == null
          ? null
          : Bottomnav.fromJson(json['bottomnav'] as Map<String, dynamic>),
      topBarNav: json['topBarNav'] == null
          ? null
          : TopBarNav.fromJson(json['topBarNav'] as Map<String, dynamic>),
      settings: json['settings'] == null
          ? null
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
      navconfig: json['navconfig'] == null
          ? null
          : Navconfig.fromJson(json['navconfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'amcInfo': instance.amcInfo,
      'AppTheme': instance.appTheme,
      'TabTheme': instance.tabTheme,
      'bottomnav': instance.bottomnav,
      'topBarNav': instance.topBarNav,
      'settings': instance.settings,
      'navconfig': instance.navconfig,
    };

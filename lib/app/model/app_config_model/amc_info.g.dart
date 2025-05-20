// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amc_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmcInfo _$AmcInfoFromJson(Map<String, dynamic> json) => AmcInfo(
      name: json['name'] as String?,
      code: json['code'] as String?,
      colorTheme: json['colorTheme'] as String?,
      bgcolorGradient: json['bgcolorGradient'] == null
          ? null
          : BgcolorGradient.fromJson(
              json['bgcolorGradient'] as Map<String, dynamic>),
      logo: json['logo'] as String?,
      logoType: json['logoType'] as String?,
    );

Map<String, dynamic> _$AmcInfoToJson(AmcInfo instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'colorTheme': instance.colorTheme,
      'bgcolorGradient': instance.bgcolorGradient,
      'logo': instance.logo,
      'logoType': instance.logoType,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      androidVersion: json['androidVersion'] as String?,
      iOsVersion: json['iOSVersion'] as String?,
      baseUrl: json['baseUrl'] as String?,
      baseApiUrl: json['baseApiUrl'] as String?,
      baseImageUrl: json['baseImageUrl'] as String?,
      previewBaseUrl: json['previewBaseUrl'] as String?,
      developedByVisibility: json['developedByVisibility'] as bool?,
      developedBy: json['developedBy'] as String?,
      developedByUrl: json['developedByURL'] as String?,
      developedByLogo: json['developedByLogo'] as String?,
      timeZone: json['timeZone'] as String?,
      userRole: json['userRole'] as String?,
      caseFilter: json['caseFilter'] == null
          ? null
          : CaseFilter.fromJson(json['caseFilter'] as Map<String, dynamic>),
      isClient: json['isClient'] as bool?,
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'androidVersion': instance.androidVersion,
      'iOSVersion': instance.iOsVersion,
      'baseUrl': instance.baseUrl,
      'baseApiUrl': instance.baseApiUrl,
      'baseImageUrl': instance.baseImageUrl,
      'previewBaseUrl': instance.previewBaseUrl,
      'developedByVisibility': instance.developedByVisibility,
      'developedBy': instance.developedBy,
      'developedByURL': instance.developedByUrl,
      'developedByLogo': instance.developedByLogo,
      'timeZone': instance.timeZone,
      'userRole': instance.userRole,
      'caseFilter': instance.caseFilter,
      'isClient': instance.isClient,
    };

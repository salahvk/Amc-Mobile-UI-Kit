import 'package:json_annotation/json_annotation.dart';

import 'case_filter.dart';

part 'settings.g.dart';

@JsonSerializable()
class Settings {
  String? androidVersion;
  @JsonKey(name: 'iOSVersion')
  String? iOsVersion;
  String? baseUrl;
  String? baseApiUrl;
  String? baseImageUrl;
  String? previewBaseUrl;
  bool? developedByVisibility;
  String? developedBy;
  @JsonKey(name: 'developedByURL')
  String? developedByUrl;
  String? developedByLogo;
  String? timeZone;
  String? userRole;
  CaseFilter? caseFilter;
  bool? isClient;

  Settings({
    this.androidVersion,
    this.iOsVersion,
    this.baseUrl,
    this.baseApiUrl,
    this.baseImageUrl,
    this.previewBaseUrl,
    this.developedByVisibility,
    this.developedBy,
    this.developedByUrl,
    this.developedByLogo,
    this.timeZone,
    this.userRole,
    this.caseFilter,
    this.isClient,
  });

  @override
  String toString() {
    return 'Settings(androidVersion: $androidVersion, iOsVersion: $iOsVersion, baseUrl: $baseUrl, baseApiUrl: $baseApiUrl, baseImageUrl: $baseImageUrl, previewBaseUrl: $previewBaseUrl, developedByVisibility: $developedByVisibility, developedBy: $developedBy, developedByUrl: $developedByUrl, developedByLogo: $developedByLogo, timeZone: $timeZone, userRole: $userRole, caseFilter: $caseFilter)';
  }

  factory Settings.fromJson(Map<String, dynamic> json) {
    return _$SettingsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SettingsToJson(this);

  Settings copyWith({
    String? androidVersion,
    String? iOsVersion,
    String? baseUrl,
    String? baseApiUrl,
    String? baseImageUrl,
    String? previewBaseUrl,
    bool? developedByVisibility,
    String? developedBy,
    String? developedByUrl,
    String? developedByLogo,
    String? timeZone,
    String? userRole,
    CaseFilter? caseFilter,
    bool? isClient,
  }) {
    return Settings(
      androidVersion: androidVersion ?? this.androidVersion,
      iOsVersion: iOsVersion ?? this.iOsVersion,
      baseUrl: baseUrl ?? this.baseUrl,
      baseApiUrl: baseApiUrl ?? this.baseApiUrl,
      baseImageUrl: baseImageUrl ?? this.baseImageUrl,
      previewBaseUrl: previewBaseUrl ?? this.previewBaseUrl,
      developedByVisibility:
          developedByVisibility ?? this.developedByVisibility,
      developedBy: developedBy ?? this.developedBy,
      developedByUrl: developedByUrl ?? this.developedByUrl,
      developedByLogo: developedByLogo ?? this.developedByLogo,
      timeZone: timeZone ?? this.timeZone,
      userRole: userRole ?? this.userRole,
      caseFilter: caseFilter ?? this.caseFilter,
      isClient: isClient ?? this.isClient
    );
  }
}

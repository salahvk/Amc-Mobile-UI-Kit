import 'package:json_annotation/json_annotation.dart';

import 'bgcolor_gradient.dart';

part 'amc_info.g.dart';

@JsonSerializable()
class AmcInfo {
  String? name;
  String? code;
  String? colorTheme;
  BgcolorGradient? bgcolorGradient;
  String? logo;
  String? logoType;

  AmcInfo({
    this.name,
    this.code,
    this.colorTheme,
    this.bgcolorGradient,
    this.logo,
    this.logoType,
  });

  @override
  String toString() {
    return 'AmcInfo(name: $name, code: $code, colorTheme: $colorTheme, bgcolorGradient: $bgcolorGradient, logo: $logo, logoType: $logoType)';
  }

  factory AmcInfo.fromJson(Map<String, dynamic> json) {
    return _$AmcInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmcInfoToJson(this);

  AmcInfo copyWith({
    String? name,
    String? code,
    String? colorTheme,
    BgcolorGradient? bgcolorGradient,
    String? logo,
    String? logoType,
  }) {
    return AmcInfo(
      name: name ?? this.name,
      code: code ?? this.code,
      colorTheme: colorTheme ?? this.colorTheme,
      bgcolorGradient: bgcolorGradient ?? this.bgcolorGradient,
      logo: logo ?? this.logo,
      logoType: logoType ?? this.logoType,
    );
  }
}

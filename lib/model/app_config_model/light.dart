import 'package:json_annotation/json_annotation.dart';

import 'app_bar.dart';
import 'color_scheme.dart';
import 'text_theme.dart';

part 'light.g.dart';

@JsonSerializable()
class Light {
  String? scaffoldBackgroundColor;
  AppBar? appBar;
  ColorScheme? colorScheme;
  String? fontName;
  bool? googleFont;
  TextTheme? textTheme;

  Light({
    this.scaffoldBackgroundColor,
    this.appBar,
    this.colorScheme,
    this.fontName,
    this.googleFont,
    this.textTheme,
  });

  @override
  String toString() {
    return 'Light(scaffoldBackgroundColor: $scaffoldBackgroundColor, appBar: $appBar, colorScheme: $colorScheme, fontName: $fontName, googleFont: $googleFont, textTheme: $textTheme)';
  }

  factory Light.fromJson(Map<String, dynamic> json) => _$LightFromJson(json);

  Map<String, dynamic> toJson() => _$LightToJson(this);

  Light copyWith({
    String? scaffoldBackgroundColor,
    AppBar? appBar,
    ColorScheme? colorScheme,
    String? fontName,
    bool? googleFont,
    TextTheme? textTheme,
  }) {
    return Light(
      scaffoldBackgroundColor:
          scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
      appBar: appBar ?? this.appBar,
      colorScheme: colorScheme ?? this.colorScheme,
      fontName: fontName ?? this.fontName,
      googleFont: googleFont ?? this.googleFont,
      textTheme: textTheme ?? this.textTheme,
    );
  }
}

import 'package:json_annotation/json_annotation.dart';

import 'app_bar.dart';
import 'color_scheme.dart';
import 'text_theme.dart';

part 'dark.g.dart';

@JsonSerializable()
class Dark {
  String? scaffoldBackgroundColor;
  AppBar? appBar;
  ColorScheme? colorScheme;
  String? fontName;
  bool? googleFont;
  TextTheme? textTheme;

  Dark({
    this.scaffoldBackgroundColor,
    this.appBar,
    this.colorScheme,
    this.fontName,
    this.googleFont,
    this.textTheme,
  });

  @override
  String toString() {
    return 'Dark(scaffoldBackgroundColor: $scaffoldBackgroundColor, appBar: $appBar, colorScheme: $colorScheme, fontName: $fontName, googleFont: $googleFont, textTheme: $textTheme)';
  }

  factory Dark.fromJson(Map<String, dynamic> json) => _$DarkFromJson(json);

  Map<String, dynamic> toJson() => _$DarkToJson(this);

  Dark copyWith({
    String? scaffoldBackgroundColor,
    AppBar? appBar,
    ColorScheme? colorScheme,
    String? fontName,
    bool? googleFont,
    TextTheme? textTheme,
  }) {
    return Dark(
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

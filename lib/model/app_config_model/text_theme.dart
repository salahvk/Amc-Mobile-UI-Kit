import 'package:json_annotation/json_annotation.dart';

import 'body_medium.dart';
import 'body_small.dart';
import 'display_large.dart';
import 'display_medium.dart';
import 'display_small.dart';
import 'title_large.dart';
import 'title_medium.dart';
import 'title_small.dart';

part 'text_theme.g.dart';

@JsonSerializable()
class TextTheme {
  TitleLarge? titleLarge;
  TitleMedium? titleMedium;
  TitleSmall? titleSmall;
  BodyMedium? bodyMedium;
  BodySmall? bodySmall;
  DisplaySmall? displaySmall;
  DisplayMedium? displayMedium;
  DisplayLarge? displayLarge;

  TextTheme({
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
    this.bodyMedium,
    this.bodySmall,
    this.displaySmall,
    this.displayMedium,
    this.displayLarge,
  });

  @override
  String toString() {
    return 'TextTheme(titleLarge: $titleLarge, titleMedium: $titleMedium, titleSmall: $titleSmall, bodyMedium: $bodyMedium, bodySmall: $bodySmall, displaySmall: $displaySmall, displayMedium: $displayMedium, displayLarge: $displayLarge)';
  }

  factory TextTheme.fromJson(Map<String, dynamic> json) {
    return _$TextThemeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TextThemeToJson(this);

  TextTheme copyWith({
    TitleLarge? titleLarge,
    TitleMedium? titleMedium,
    TitleSmall? titleSmall,
    BodyMedium? bodyMedium,
    BodySmall? bodySmall,
    DisplaySmall? displaySmall,
    DisplayMedium? displayMedium,
    DisplayLarge? displayLarge,
  }) {
    return TextTheme(
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      displaySmall: displaySmall ?? this.displaySmall,
      displayMedium: displayMedium ?? this.displayMedium,
      displayLarge: displayLarge ?? this.displayLarge,
    );
  }
}

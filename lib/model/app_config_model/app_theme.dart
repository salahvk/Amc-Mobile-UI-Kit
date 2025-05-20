import 'package:json_annotation/json_annotation.dart';

import 'dark.dart';
import 'light.dart';

part 'app_theme.g.dart';

@JsonSerializable()
class AppTheme {
  Light? light;
  Dark? dark;

  AppTheme({this.light, this.dark});

  @override
  String toString() => 'AppTheme(light: $light, dark: $dark)';

  factory AppTheme.fromJson(Map<String, dynamic> json) {
    return _$AppThemeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AppThemeToJson(this);

  AppTheme copyWith({
    Light? light,
    Dark? dark,
  }) {
    return AppTheme(
      light: light ?? this.light,
      dark: dark ?? this.dark,
    );
  }
}

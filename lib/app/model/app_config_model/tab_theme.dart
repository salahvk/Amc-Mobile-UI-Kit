import 'package:json_annotation/json_annotation.dart';

import 'dark.dart';
import 'light.dart';

part 'tab_theme.g.dart';

@JsonSerializable()
class TabTheme {
  Light? light;
  Dark? dark;

  TabTheme({this.light, this.dark});

  @override
  String toString() => 'TabTheme(light: $light, dark: $dark)';

  factory TabTheme.fromJson(Map<String, dynamic> json) {
    return _$TabThemeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TabThemeToJson(this);

  TabTheme copyWith({
    Light? light,
    Dark? dark,
  }) {
    return TabTheme(
      light: light ?? this.light,
      dark: dark ?? this.dark,
    );
  }
}

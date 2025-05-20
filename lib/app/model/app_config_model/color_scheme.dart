import 'package:json_annotation/json_annotation.dart';

part 'color_scheme.g.dart';

@JsonSerializable()
class ColorScheme {
  String? primary;
  String? surface;
  String? secondary;
  String? tertiary;

  ColorScheme({this.primary, this.surface, this.secondary, this.tertiary});

  @override
  String toString() {
    return 'ColorScheme(primary: $primary, surface: $surface, secondary: $secondary, tertiary: $tertiary)';
  }

  factory ColorScheme.fromJson(Map<String, dynamic> json) {
    return _$ColorSchemeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ColorSchemeToJson(this);

  ColorScheme copyWith({
    String? primary,
    String? surface,
    String? secondary,
    String? tertiary,
  }) {
    return ColorScheme(
      primary: primary ?? this.primary,
      surface: surface ?? this.surface,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
    );
  }
}

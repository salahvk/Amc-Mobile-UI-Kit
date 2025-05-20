import 'package:json_annotation/json_annotation.dart';

part 'app_bar.g.dart';

@JsonSerializable()
class AppBar {
  String? backgroundColor;
  int? elevation;
  String? iconColor;

  AppBar({this.backgroundColor, this.elevation, this.iconColor});

  @override
  String toString() {
    return 'AppBar(backgroundColor: $backgroundColor, elevation: $elevation, iconColor: $iconColor)';
  }

  factory AppBar.fromJson(Map<String, dynamic> json) {
    return _$AppBarFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AppBarToJson(this);

  AppBar copyWith({
    String? backgroundColor,
    int? elevation,
    String? iconColor,
  }) {
    return AppBar(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      elevation: elevation ?? this.elevation,
      iconColor: iconColor ?? this.iconColor,
    );
  }
}

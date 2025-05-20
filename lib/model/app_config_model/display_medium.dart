import 'package:json_annotation/json_annotation.dart';

part 'display_medium.g.dart';

@JsonSerializable()
class DisplayMedium {
  String? color;
  int? fontSize;

  DisplayMedium({this.color, this.fontSize});

  @override
  String toString() => 'DisplayMedium(color: $color, fontSize: $fontSize)';

  factory DisplayMedium.fromJson(Map<String, dynamic> json) {
    return _$DisplayMediumFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisplayMediumToJson(this);

  DisplayMedium copyWith({
    String? color,
    int? fontSize,
  }) {
    return DisplayMedium(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}

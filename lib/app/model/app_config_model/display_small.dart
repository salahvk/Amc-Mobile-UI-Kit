import 'package:json_annotation/json_annotation.dart';

part 'display_small.g.dart';

@JsonSerializable()
class DisplaySmall {
  String? color;
  int? fontSize;

  DisplaySmall({this.color, this.fontSize});

  @override
  String toString() => 'DisplaySmall(color: $color, fontSize: $fontSize)';

  factory DisplaySmall.fromJson(Map<String, dynamic> json) {
    return _$DisplaySmallFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisplaySmallToJson(this);

  DisplaySmall copyWith({
    String? color,
    int? fontSize,
  }) {
    return DisplaySmall(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}

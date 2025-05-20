import 'package:json_annotation/json_annotation.dart';

part 'display_large.g.dart';

@JsonSerializable()
class DisplayLarge {
  String? color;
  int? fontSize;

  DisplayLarge({this.color, this.fontSize});

  @override
  String toString() => 'DisplayLarge(color: $color, fontSize: $fontSize)';

  factory DisplayLarge.fromJson(Map<String, dynamic> json) {
    return _$DisplayLargeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisplayLargeToJson(this);

  DisplayLarge copyWith({
    String? color,
    int? fontSize,
  }) {
    return DisplayLarge(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}
